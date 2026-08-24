#if defined _MSC_VER && _MSC_VER>=1400
  #pragma warning(disable : 4996)
#endif

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "format.h"

void show_intro();
void show_message(const char *message);
void show_progress(const unsigned long int start,const unsigned long int stop);
FILE *open_input_file(const char *name);
FILE *create_output_file(const char *name);
void go_offset(FILE *file,const unsigned long int offset);
char *get_memory(const size_t length);
void data_dump(FILE *input,FILE *output,const size_t length);
void fast_data_dump(FILE *input,FILE *output,const size_t length);
unsigned long int get_file_size(FILE *file);
size_t get_extension_position(const char *source);
char *get_short_name(const char *name);
char *get_name(const unsigned long int index,const char *short_name,const char *extension);
void check_signature(const char *signature);
unsigned long int read_sff_head(FILE *input);
sff_subhead read_sff_subhead(FILE *input);
void extract_palette(const char *name,char *palette);
void set_palette(FILE *output,const sff_subhead *subhead,const char *palette,const char *shared);
char *extract_first(FILE *input,const char *short_name);
void extract_normal_sprite(FILE *input,const char *name,const sff_subhead *subhead,const char *palette,const char *shared);
void extract_linked_sprite(const char *name,const char *short_name,const unsigned short int index);
void extract_last(FILE *input,const char *name,const unsigned long int sff_size,const sff_subhead *subhead,const char *palette,const char *shared);
void extract(FILE *input,const char *short_name);
void work(const char *sff_name);

