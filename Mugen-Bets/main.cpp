#include <vector>
#include <iostream>
#include <cstdlib>
#include <stdexcept>
#include <fstream>
#include <string>
#include <sstream>
#include <thread>
#include <chrono>
#include <filesystem>
#include <ctime>
#include "mugenBattleManager.h"
#ifdef _WIN32
#include <windows.h>
#endif

int main()
{
	try {
#ifdef _WIN32
		// Ensure working directory is the executable folder so relative assets are found
		char exePath[MAX_PATH] = {0};
		if (GetModuleFileNameA(NULL, exePath, MAX_PATH)) {
			std::string p(exePath);
			auto pos = p.find_last_of("\\/");
			if (pos != std::string::npos) {
				std::string dir = p.substr(0, pos);
				SetCurrentDirectoryA(dir.c_str());
			}
		}
#endif

		std::ofstream log("mugen-start.log", std::ios::app);
		log << "Started at: " << std::time(nullptr) << " cwd=" << std::filesystem::current_path().string() << std::endl;

		while (true)
		{
			MugenBattleManager::StartBattle();
			MugenBattleManager::WaitForBattleEnd();
			MugenBattleManager::SetMatchResult();
			MugenBattleManager::SetCharactersStatsJSON();

			std::chrono::duration<double, std::milli> time{ 10000 };
			std::this_thread::sleep_for(time);

		}
	}
	catch (const std::exception &e) {
		std::ofstream log("mugen-error.log", std::ios::app);
		log << "Unhandled exception: " << e.what() << std::endl;
		return 1;
	}
	catch (...) {
		std::ofstream log("mugen-error.log", std::ios::app);
		log << "Unhandled unknown exception" << std::endl;
		return 1;
	}

	return 0;
}