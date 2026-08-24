; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;AI Start----------------------------------------------------------------------------

[Command]
name = "cpu1"
command = U, U, U, U
time = 0
[Command]
name = "cpu2"
command = U, U, U, D
time = 0
[Command]
name = "cpu3"
command = U, U, D, D
time = 0
[Command]
name = "cpu4"
command = U, D, D, D
time = 0
[Command]
name = "cpu5"
command = D, D, D, D
time = 0
[Command]
name = "cpu6"
command = D, D, D, U
time = 0
[Command]
name = "cpu7"
command = D, D, U, U
time = 0
[Command]
name = "cpu8"
command = D, U, U, U
time = 0
[Command]
name = "cpu9"
command = U, D, U, U
time = 0
[Command]
name = "cpu10"
command = U, U, D, U
time = 0
[Command]
name = "cpu11"
command = D, U, U, D
time = 0
[Command]
name = "cpu12"
command = U, D, D, U
time = 0
[Command]
name = "cpu13"
command = D, U, D, U
time = 0
[Command]
name = "cpu14"
command = U, D, U, D
time = 0
[Command]
name = "cpu15"
command = F, F, F, F
time = 0
[Command]
name = "cpu16"
command = B, B, B, B
time = 0
[Command]
name = "cpu17"
command = F, B, F, F
time = 0
[Command]
name = "cpu18"
command = F, F, B, F
time = 0
[Command]
name = "cpu19"
command = B, F, F, F
time = 0
[Command]
name = "cpu20"
command = F, F, F, B
time = 0
[Command]
name = "cpu21"
command = F, B, B, F
time = 0
[Command]
name = "cpu22"
command = B, F, F, B
time = 0
[Command]
name = "cpu23"
command = F, B, F, B
time = 0
[Command]
name = "cpu24"
command = B, F, B, F
time = 0
[Command]
name = "cpu25"
command = D, F, D, F
time = 0
[Command]
name = "cpu26"
command = D, B, D, B
time = 0
[Command]
name = "cpu27"
command = D, B, D, F
time = 0
[Command]
name = "cpu28"
command = D, F, D, B
time = 0
[Command]
name = "cpu29"
command = U, F, D, B
time = 0
[Command]
name = "cpu30"
command = U, B, D, F
time = 0
[Command]
name = "cpu31"
command = B, D, F, U
time = 0
[Command]
name = "cpu32"
command = F, D, B, U
time = 0
[Command]
name = "cpu33"
command = U, U, U, U
time = 0
[Command]
name = "cpu34"
command = U, U, U, D
time = 0
[Command]
name = "cpu35"
command = U, U, D, D
time = 0
[Command]
name = "cpu36"
command = U, D, D, D
time = 0
[Command]
name = "cpu37"
command = D, D, D, D
time = 0
[Command]
name = "cpu38"
command = D, D, D, U
time = 0
[Command]
name = "cpu39"
command = D, D, U, U
time = 0
[Command]
name = "cpu40"
command = D, U, U, U
time = 0
[Command]
name = "cpu41"
command = U, D, U, U
time = 0
[Command]
name = "cpu42"
command = U, U, D, U
time = 0
[Command]
name = "cpu43"
command = D, U, U, D
time = 0
[Command]
name = "cpu44"
command = U, D, D, U
time = 0
[Command]
name = "cpu45"
command = D, U, D, U
time = 0
[Command]
name = "cpu46"
command = U, D, U, D
time = 0
[Command]
name = "cpu47"
command = F, F, F, F
time = 0
[Command]
name = "cpu48"
command = B, B, B, B
time = 0
[Command]
name = "cpu49"
command = F, B, F, F
time = 0
[Command]
name = "cpu50"
command = F, F, B, F
time = 0
[Command]
name = "cpu51"
command = B, F, F, F
time = 0
[Command]
name = "cpu52"
command = F, F, F, B
time = 0
[Command]
name = "cpu53"
command = F, B, B, F
time = 0
[Command]
name = "cpu54"
command = B, F, F, B
time = 0
[Command]
name = "cpu55"
command = F, B, F, B
time = 0
[Command]
name = "cpu56"
command = B, F, B, F
time = 0
[Command]
name = "cpu57"
command = D, F, D, F
time = 0
[Command]
name = "cpu58"
command = D, B, D, B
time = 0
[Command]
name = "cpu59"
command = D, B, D, F
time = 0
[Command]
name = "cpu60"
command = D, F, D, B
time = 0
[Command]
name = "cpu61"
command = U, F, D, B
time = 0
[Command]
name = "cpu62"
command = U, B, D, F
time = 0
[Command]
name = "cpu63"
command = B, D, F, U
time = 0
[Command]
name = "cpu64"
command = F, D, B, U
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "SuperFlame"
command = ~D, DF, F, D, DF, F, c
time = 35

[Command]
name = "SuperHammer"
command = ~D, DF, F, D, DF, F, b
time = 35

[Command]
name = "InvincibleStar"
command = ~D, DF, F, D, DF, F, a
time = 35

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, x+y

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, y+z

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, x+z

[Command]
name = "EXfireball"
command = ~D, DF, F, x+y

[Command]
name = "EXfireball"
command = ~D, DF, F, y+z

[Command]
name = "EXfireball"
command = ~D, DF, F, x+z

[Command]
name = "EXtornado"
command = ~D, DB, B, x+y

[Command]
name = "EXtornado"
command = ~D, DB, B, y+z

[Command]
name = "EXtornado"
command = ~D, DB, B, x+z

[Command]
name = "EXThrow"
command = ~D, DB, B, c+z

[Command]
name = "CoinPunch_x"
command = ~F, D, DF, x

[Command]
name = "CoinPunch_y"
command = ~F, D, DF, y

[Command]
name = "CoinPunch_z"
command = ~F, D, DF, z

[Command]
name = "fireball_x"
command = ~D, DF, F, x

[Command]
name = "fireball_y"
command = ~D, DF, F, y

[Command]
name = "fireball_z"
command = ~D, DF, F, z

[Command]
name = "tornado_x"
command = ~D, DB, B, x

[Command]
name = "tornado_y"
command = ~D, DB, B, y

[Command]
name = "tornado_z"
command = ~D, DB, B, z

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, x 
time = 20

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, y 
time = 20

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, z 
time = 20

[Command]
name = "EXbuttstomp"
command = /D, a+b

[Command]
name = "EXbuttstomp"
command = /D, b+c

[Command]
name = "EXbuttstomp"
command = /D, a+c

[Command]
name = "buttstomp"
command = /D, c

[Command]
name = "drillkick"
command = /D, b

[Command]
name = "headstomp"
command = /D, a

[Command]
name = "rollfwd"
command = a+x
time = 1

[Command]
name = "Throw"
command = c+z
time = 1

[Command]
name = "STONE"
command = a
time = 1

[Command]
name = "STONE"
command = b
time = 1

[Command]
name = "STONE"
command = c
time = 1

[Command]
name = "STONE"
command = x
time = 1

[Command]
name = "STONE"
command = y
time = 1

[Command]
name = "STONE"
command = z
time = 1

[Command]
name = "airglideEX"
command = B, B, F

[Command]
name = "airglide"
command = F, F
time = 10

[Command]
name = "GHOST"
command = ~D,D,D
time = 35

[Command]
name = "MATRIX"
command = ~D,D,D
time = 35

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "Sjump"
command = D, U

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.
; Don't remove the following line. It's required by the CMD standard.


[Statedef -1]

;-|Signal AI Routines|--------------------------------------------------------------------
; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
[State -1, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(7) = 1

[State -1]
type = VarSet
var(7) = 1
triggerall = Alive && RoundState = 2
triggerall = var(7) != 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
trigger52 = command = "cpu52"
trigger53 = command = "cpu53"
trigger54 = command = "cpu54"
trigger55 = command = "cpu55"
trigger56 = command = "cpu56"
trigger57 = command = "cpu57"
trigger58 = command = "cpu58"
trigger59 = command = "cpu59"
trigger60 = command = "cpu60"
trigger61 = command = "cpu61"
trigger62 = command = "cpu62"
trigger63 = command = "cpu63"
trigger64 = command = "cpu64"

;Begin AI

;----------------------------------------------------------------------
;MATRIX
[State -1, MATRIX]
type = ChangeState
value = 3600
triggerall = !var(3)
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = life <= lifemax*0.3 ;300
triggerall = power >= 3000
triggerall = ctrl
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = P2movetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = PalNo = 10
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = PalNo = 7

;Thanks to BBH for guard AI
;(You're welcome. It behaves strangely in WinMUGEN though, so I've disabled it.)
[State -1, Stand guard]
type = Null ;ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
triggerall = PalNo != 11
triggerall = PalNo != 8
trigger1 = ctrl
value = 130

[State -1, S-to-C guard]
type = Null ;ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = PalNo != 11
triggerall = PalNo != 8
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = Null ;ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = PalNo != 11
triggerall = PalNo != 8
trigger1 = ctrl
value = 131

[State -1, C-to-S guard]
type = Null ;ChangeState
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
triggerall = PalNo != 11
triggerall = PalNo != 8
trigger1 = stateno = 152
value = 150

[State -1, Air guard]
type = Null ;ChangeState
triggerall = var(7) = 1
triggerall = StateType = A
triggerall = P2Movetype = A
triggerall = PalNo != 11
triggerall = PalNo != 8
trigger1 = ctrl
value = 132

;Stop code by Big Eli King
[State -1]
type = ChangeState
value = 0
triggerall = Var(7) = 1
triggerall = roundstate > 2
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Coin Punch Alpha Counter]
type = ChangeState
value = 1900
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = power >= 1000
triggerall = P2statetype != C
triggerall = P2BodyDist X <= 25
trigger1 = stateno >= 150 && stateno <= 153
;trigger1 = p2statetype = A
trigger1 = PalNo = 10
trigger2 = stateno >= 150 && stateno <= 153
trigger2 = p2movetype = A
trigger2 = PalNo = 10
trigger3 = stateno >= 150 && stateno <= 153
;trigger3 = p2statetype = A
trigger3 = PalNo = 7
trigger4 = stateno >= 150 && stateno <= 153
trigger4 = p2movetype = A
trigger4 = PalNo = 7

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(7) = 1
triggerall = random <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X <= 40
trigger1 = P2stateno = 5061

[State -1, AI Taunt]
type = changestate
value = 196
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 225
trigger1 = p2stateno = 5050

[State -1, AI Charge]
type = ChangeState
value = 730
triggerall = Var(7) = 1
triggerall = power < powermax
triggerall = ctrl && !inguarddist && statetype != A && random <= 10
trigger1 = P2bodydist X > 50

[State -1, AI Throw]
type = ChangeState
value = 900 
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = ctrl
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = P2BodyDist X = [0,22]
trigger1 = P2statetype != A

[State -1, AI EX Throw]
type = ChangeState
value = 910 
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
triggerall = P2statetype != A
triggerall = power >= 1000
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = P2movetype != H
trigger1 = P2BodyDist X = [0,22]
trigger1 = P2statetype != A

[State -1, AI Stone Transform]
type = ChangeState
value = 4000
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = power >= 1000
triggerall = ctrl
triggerall = statetype = S
triggerall = statetype != A
trigger1 = PalNo = 9
trigger1 = P2BodyDist X <= 70
trigger1 = random = [0,300]
trigger2 = PalNo = 12
trigger2 = P2BodyDist X <= 70
trigger2 = random = [0,300]

[State -1, AI Stone RETransform]
type = ChangeState
value = 4001
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = stateno = 4000
trigger1 = PalNo = 9
trigger1 = P2BodyDist X <= 80
trigger1 = P2movetype = A
trigger2 = PalNo = 12
trigger2 = P2BodyDist X <= 80
trigger2 = P2movetype = A
trigger3 = power = 0
trigger4 = RoundState = 3
trigger5 = Time > 3 * TicksPerSecond

[State -1, AI Ghosteleport]
type = ChangeState
value = 3900
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2BodyDist X >= 90
trigger1 = PalNo = 11
trigger2 = P2BodyDist X >= 90
trigger2 = PalNo = 8

[State -1, AI RollFwd]
type = ChangeState
value = 110 
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
triggerall = PalNo != 11
triggerall = PalNo != 8
triggerall = P2movetype != A
trigger1 = P2BodyDist X = [60,700]

[State -1, AI Fierce TS]
type = ChangeState
value = 1202 
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2BodyDist X < 0

;AI Fireballs
[State -1, AI Strong Fireball]
type = ChangeState
value = 1002
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = P2BodyDist X = [25,75]
trigger1 = P2statetype = C

[State -1, AI Weak Fireball]
type = ChangeState
value = 1000
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
triggerall = random <= 300
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [15,500]

[State -1, AI Air Fireball]
type = ChangeState
value = 1806
triggerall = Var(7) = 1
triggerall = random <= 10
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
triggerall = statetype != S
triggerall = statetype = A
triggerall = ctrl
trigger1 = P2BodyDist X = [100,500]

;AI EX Combo
[State -1, AI EX TS]
type = ChangeState
value = 1250
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = power >= 2000
triggerall = statetype = S
triggerall = PalNo != 10
triggerall = PalNo != 7
;triggerall = P2statetype = S
trigger1 = P2BodyDist X <= 60
trigger1 = ctrl

[State -1, AI EX DP]
type = ChangeState
value = 1550
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = P2statetype != C
;triggerall = P2movetype = H
triggerall = P2BodyDist X >= 0
trigger1 = stateno = 1250
trigger1 = movecontact
trigger1 = time >= 40
trigger1 = power >= 1000
trigger2 = stateno = 1202
trigger2 = movecontact
trigger2 = time >= 40
trigger2 = power >= 1000

;AI Ground Combo 1
[State -1, AI Medium Stand Punch]
type = ChangeState
value = 210
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = P2movetype != H
trigger1 = P2Movetype != A
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 40

[State -1, AI Medium Stand Kick]
type = ChangeState
value = 240
triggerall = var(7) = 1
trigger1 = stateno = 210
trigger1 = movecontact

[State -1, AI Medium Crouch Punch]
type = ChangeState
value = 410
triggerall = var(7) = 1
trigger1 = stateno = 240
trigger1 = movecontact

[State -1, AI Fierce Strong Punch]
type = ChangeState
value = 220
triggerall = var(7) = 1
trigger1 = stateno = 410
trigger1 = movecontact
trigger1 = PalNo != 12
trigger2 = stateno = 410
trigger2 = movecontact
trigger2 = PalNo != 9

[State -1, AI Fierce DP]
type = ChangeState
value = 1504
triggerall = var(7) = 1
;triggerall = random = [0,200]
trigger1 = stateno = 220
trigger1 = movecontact
trigger1 = movehit
trigger1 = P2movetype != H
trigger1 = P2statetype != C
trigger2 = random <= 10
trigger2 = ctrl
trigger2 = P2movetype != H
trigger2 = statetype != A
trigger2 = P2BodyDist X = [0,100]
trigger2 = P2BodyDist Y = [-300,-10]
trigger2 = PalNo != 7
trigger2 = PalNo != 10
trigger2 = P2statetype != C

;AI Ground Combo 2
[State -1, AI Medium Crouch Kick]
type = ChangeState
value = 440
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = P2Movetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = P2movetype != H
trigger1 = P2BodyDist X <= 40

[State -1, AI Fierce Crouch Kick]
type = ChangeState
value = 450
triggerall = var(7) = 1
trigger1 = stateno = 440
trigger1 = movecontact

[State -1, AI Weak DP]
type = ChangeState
value = 1500
triggerall = var(7) = 1
trigger1 = stateno = 450
trigger1 = movehit
trigger1 = P2movetype != H

[State -1, AI Slide Kick]
type = ChangeState
value = 460
triggerall = var(7) = 1
triggerall = random <= 10
trigger1 = stateno = 100
trigger1 = P2BodyDist X >= 10

[State -1, AI Drill Kick]
type = ChangeState
value = 1300
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = statetype = A
triggerall = ctrl
trigger1 = PalNo = 10
trigger1 = P2BodyDist X <= 30
trigger2 = PalNo = 7
trigger2 = P2BodyDist X <= 30

;AI Air Combo 1
[State -1, AI Launcher]
type = ChangeState
value = 420
triggerall = var(7) = 1
trigger1 = stateno = 220
trigger1 = movecontact
trigger1 = P2BodyDist X <= 7

[State -1, AI Super Jump]
type = ChangeState
value = 9000
triggerall = var(7) = 1
triggerall = P2statetype = A
;triggerall = P2statetype != C
trigger1 = stateno = 420
trigger1 = movecontact
trigger1 = !moveguarded

[State -1, AI Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(7) = 1
trigger1 = stateno = 9000
trigger1 = time > 5
trigger2 = ctrl
trigger2 = statetype = A
trigger2 = P2statetype = A
trigger2 = P2BodyDist X <= 35
trigger2 = random <= 10

[State -1, AI Air Glide]
type = ChangeState
value = 1700
triggerall = var(7) = 1
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = stateno = 640
trigger1 = movecontact

[State -1, AI Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(7) = 1
trigger1 = stateno = 1700
trigger1 = movecontact

[State -1, AI EX Butt Stomp]
type = ChangeState
value = 1650
triggerall = var(7) = 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = power >= 1000
trigger1 = random = [0,500]
trigger2 = stateno = 1701
trigger2 = movecontact
trigger2 = power >= 1000
trigger2 = time >= 60

[State -1, AI EX Air Throw]
type = ChangeState
value = 930
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = ctrl
trigger1 = statetype = A
trigger1 = P2statetype = A
trigger1 = P2BodyDist X <= 20
trigger1 = power >= 1000

[State -1, AI EX Air Glide]
type = ChangeState
value = 1701
triggerall = var(7) = 1
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = power >= 1000
trigger1 = random = [0,500]
trigger2 = stateno = 640
trigger2 = movecontact
trigger2 = power >= 2000

[State -1, AI Butt Stomp]
type = ChangeState
value = 1600
triggerall = var(7) = 1
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = random = [0,300]
trigger2 = stateno = 640
trigger2 = movecontact
trigger2 = PalNo = 9
trigger3 = stateno = 640
trigger3 = movecontact
trigger3 = PalNo = 12
trigger4 = P2statetype != A
trigger4 = statetype = A
trigger4 = ctrl
trigger4 = P2BodyDist X <= 35
trigger4 = random <= 10

[State -1, AI Air Throw]
type = ChangeState
value = 920
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = ctrl
trigger1 = statetype = A
trigger1 = P2statetype = A
trigger1 = P2BodyDist X <= 20

[State -1, AI Invincible Star]
type = ChangeState
value = 2200
triggerall = !var(3)
triggerall = power >= 3000
triggerall = var(7) = 1
triggerall = random <= 10
triggerall = statetype != A
triggerall = PalNo != 11
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 8
trigger1 = ctrl

[State -1, AI SuperHammer]
type = ChangeState
value = 2100
triggerall = !var(3)
triggerall = power >= 3000
triggerall = var(7) = 1
triggerall = P2BodyDist X <= 35
triggerall = statetype != A
triggerall = random = [0,500]
triggerall = PalNo != 11
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 8
trigger1 = movecontact
trigger1 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 240
trigger6 = movecontact
trigger6 = stateno = 410
trigger7 = movecontact
trigger7 = stateno = 430
trigger8 = movecontact
trigger8 = stateno = 440
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 220
trigger11 = stateno = 1000
trigger11 = movecontact
trigger12 = ctrl
trigger12 = random <= 10

;SuperFlame
[State -1, AI SuperFlame]
type = ChangeState
value = 2000
triggerall = !var(3)
triggerall = power >= 3000
triggerall = var(7) = 1
triggerall = P2BodyDist X <= 35
triggerall = statetype != A
triggerall = ctrl
triggerall = random = [0,500]
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = movecontact
trigger1 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 240
trigger6 = movecontact
trigger6 = stateno = 410
trigger7 = movecontact
trigger7 = stateno = 430
trigger8 = movecontact
trigger8 = stateno = 440
trigger9 = movecontact
trigger9 = stateno = 420
trigger10 = movecontact
trigger10 = stateno = 220
trigger11 = stateno = 1000
trigger11 = movecontact

;End AI

;---------------------------------------------------------------------------
;idea for extras against tough characters from Kamek
;[State -1, AI Power BOOST]
;type = PowerAdd
;value = 20
;trigger1 = P2name = "Dark Chun Li"
;trigger2 = P4name = "Dark Chun Li"
;trigger3 = P2name = "Psycho Shredder[S]"
;trigger4 = P4name = "Psycho Shredder[S]"
;trigger5 = P2name = "Broli Remix ver1.2"
;trigger6 = P4name = "Broli Remix ver1.2"
;trigger7 = P2name = "Dark Chun Li2"
;trigger8 = P4name = "Dark Chun Li2"
;trigger9 = P2name = "Super Dan"
;trigger10 = P4name = "Super Dan"

;[State -1, AI Attack BOOST]
;type = AssertSpecial
;flag = unguardable
;flag2 = nojugglecheck
;trigger1 = P2name = "Dark Chun Li"
;trigger2 = P4name = "Dark Chun Li"
;trigger3 = P2name = "Psycho Shredder[S]"
;trigger4 = P4name = "Psycho Shredder[S]"
;trigger5 = P2name = "Broli Remix ver1.2"
;trigger6 = P4name = "Broli Remix ver1.2"
;trigger7 = P2name = "Dark Chun Li2"
;trigger8 = P4name = "Dark Chun Li2"
;trigger9 = P2name = "Super Dan"
;trigger10 = P4name = "Super Dan"

;[State -1, AI DEFENCE BOOST]
;type = DefenceMulSet
;value = 0
;trigger1 = P2name = "Dark Chun Li"
;trigger2 = P4name = "Dark Chun Li"
;trigger3 = P2name = "Psycho Shredder[S]"
;trigger4 = P4name = "Psycho Shredder[S]"
;trigger5 = P2name = "Psycho Shredder[S] 3.5"
;trigger6 = P4name = "Psycho Shredder[S] 3.5"
;trigger7 = P2name = "Broli Remix ver1.2"
;trigger8 = P4name = "Broli Remix ver1.2"
;trigger9 = P2name = "Dark Chun Li2"
;trigger10 = P4name = "Dark Chun Li2"
;trigger11 = P2name = "Super Dan"
;trigger12 = P4name = "Super Dan"

;[State -1, AI ATTACK BOOST]
;type = AttackMulSet
;value = 2
;trigger1 = P2name = "Broli Remix ver1.2"
;trigger2 = P4name = "Broli Remix ver1.2"
;trigger3 = P2name = "Dark Chun Li2"
;trigger4 = P4name = "Dark Chun Li2"
;trigger5 = P2name = "Super Dan"
;trigger7 = P4name = "Super Dan"

;[State -1, AI ATTACK BOOST]
;type = AttackMulSet
;value = 99999
;trigger1 = P2name = "Psycho Shredder[S]"
;trigger2 = P4name = "Psycho Shredder[S]"
;trigger3 = P2name = "Psycho Shredder[S] 3.5"
;trigger4 = P4name = "Psycho Shredder[S] 3.5"

[State -1, Stone Mario Attack Boost]
type = AttackMulSet
value = 1.5
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Defence Boost]
type = DefenceMulSet
value = .5
triggerall = movetype != H
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Energy Drain]
type = PowerAdd
value = -1
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Energy Drain]
type = PowerAdd
value = -7
trigger1 = PalNo = 12
trigger1 = StateNo = 4000
trigger2 = PalNo = 9
trigger2 = StateNo = 4000

[State -1, Neo Mario Attack Drain]
type = AttackMulSet
value = .4
trigger1 = PalNo = 10
trigger2 = PalNo = 7

[State -1, Mario Ghost Energy Boost]
type = PowerAdd
value = 5
triggerall = roundstate = 2
triggerall = Alive
triggerall = StateNo != [2000,2200]
trigger1 = PalNo = 11
trigger2 = PalNo = 8

[State -1, Ghosts Don't Have Shadows]
type = AssertSpecial
flag = noshadow
trigger1 = PalNo = 11
trigger2 = PalNo = 8

[State -1, Neo Mario]
type = AssertSpecial
flag = nojugglecheck
trigger1 = PalNo = 10
trigger2 = PalNo = 7

;Hard Hit Sound
[State -1, Hard Hit Sound]
type = playsnd
triggerall = random < 400
triggerall = time = 1
trigger1 = stateno = 5000 && anim = 5002 ; stand high
trigger2 = stateno = 5000 && anim = 5012 ; stand low
trigger3 = stateno = 5010 && anim = 5022 ; crouch
trigger4 = stateno = 5020 && anim = 5002 ; air high
trigger5 = stateno = 5020 && anim = 5012 ; air low
value = S1, 3
channel = 0

;Ghost Die
[State -1]
type = CtrlSet
value = 0
trigger1 = life = 0
trigger1 = PalNo = 11
trigger2 = life = 0
trigger2 = PalNo = 8

;Chun Li Taunt Reaction
;[State -1, Oh Baby]
;type = ChangeState
;value = 199
;triggerall = statetype = S
;triggerall = statetype != A
;triggerall = ctrl
;trigger1 = P2Name = "Chun-Li"
;trigger1 = P2stateno = 195
;trigger1 = P2BodyDist X <= 20

;---------------------------------------------------------------------------

;SPECIALS And SUPERS

;---------------------------------------------------------------------------
;Strong Tornado SpinEX
[State -1, Strong Tornado SpinEX]
type = ChangeState
value = 1250
triggerall = power >= 1000
triggerall = command = "EXtornado"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Strong Coin PunchEX
[State -1, Strong Coin PunchEX]
type = ChangeState
value = 1550
triggerall = power >= 1000
triggerall = command = "EXCoinPunch"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450
trigger14 = movecontact
trigger14 = stateno = 1504
trigger15 = movecontact
trigger15 = stateno = 1250
trigger16 = movecontact
trigger16 = stateno = 1202

;---------------------------------------------------------------------------
;Strong Standing FireballEX
[State -1, Strong Standing FireballEX]
type = ChangeState
value = 1050
triggerall = power >= 1000
triggerall = command = "EXfireball"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

[State -1, EXThrow]
type = ChangeState
value = 910
triggerall = power >= 1000
triggerall = command = "EXThrow"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl

[State -1, EXAir Throw]
type = ChangeState
value = 930
triggerall = power >= 1000
triggerall = command = "EXThrow"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl

;Stone Transform
[State -1, Stone Transform]
type = ChangeState
value = 4000
triggerall = command = "MATRIX"
triggerall = power >= 1000
trigger1 = PalNo = 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = PalNo = 12
trigger2 = statetype = S
trigger2 = ctrl

;Ghosteleport
[State -1, Ghosteleport]
type = ChangeState
value = 3900
triggerall = command = "MATRIX"
trigger1 = PalNo = 8
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = PalNo = 11
trigger2 = statetype = S
trigger2 = ctrl

;MATRIX
[State -1, MATRIX]
type = ChangeState
value = 3600
triggerall = !var(3)
triggerall = command = "MATRIX"
triggerall = life <= lifemax*0.3 ;300
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = PalNo = 10
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = PalNo = 7

; Power Charge
[State -1]
type = ChangeState
value = 730
triggerall = !var(7)
triggerall = power < powermax
triggerall = command = "hold_y"
triggerall = command = "hold_b"
trigger1 = ctrl && statetype != A

;Light Coin Punch
[State -1, Light Coin Punch]
type = ChangeState
value = 1500
triggerall = command = "CoinPunch_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Medium Coin Punch
[State -1, Medium Coin Punch]
type = ChangeState
value = 1502
triggerall = command = "CoinPunch_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Strong Coin Punch
[State -1, Strong Coin Punch]
type = ChangeState
value = 1504
triggerall = command = "CoinPunch_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Light Standing Fireball
[State -1, Light Standing Fireball]
type = ChangeState
value = 1000
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Medium Standing Fireball
[State -1, Medium Standing Fireball]
type = ChangeState
value = 1001
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Strong Standing Fireball
[State -1, Strong Standing Fireball]
type = ChangeState
value = 1002
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Light Tornado Spin
[State -1, Light Tornado Spin]
type = ChangeState
value = 1200
triggerall = command = "tornado_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1500
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1502
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1504
trigger38 = PalNo = 7

;Medium Tornado Spin
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1201
triggerall = command = "tornado_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1500
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1502
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1504
trigger38 = PalNo = 7

;Strong Tornado Spin
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1202
triggerall = command = "tornado_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1500
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1502
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1504
trigger38 = PalNo = 7

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 900
triggerall = command = "Throw"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 920
triggerall = command = "Throw"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl

;SuperFlame
[State -1, SuperFlame]
type = ChangeState
value = 2000
triggerall = !var(3)
triggerall = power >= 3000
triggerall = command = "SuperFlame"
;triggerall = PalNo != 10
;triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;SuperHammer
[State -1, SuperHammer]
type = ChangeState
value = 2100
triggerall = !var(3)
triggerall = power >= 3000
triggerall = command = "SuperHammer"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;InvincibleStar
[State -1, InvincibleStar]
type = ChangeState
value = 2200
triggerall = !var(3)
triggerall = power >= 3000
triggerall = command = "InvincibleStar"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Butt StompEX
[State -1, Butt StompEX]
type = ChangeState
value = 1650
triggerall = power >= 1000
triggerall = command = "EXbuttstomp"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact
trigger9 = (stateno = 1701) && movecontact

;---------------------------------------------------------------------------
;Hard Air FireballEX (Air)
[State -1, Hard Air FireballEX (Air)]
type = ChangeState
value = 1052
triggerall = power >= 1000
triggerall = command = "EXfireball"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Light Coin Punch
[State -1, Light Coin Punch]
type = ChangeState
value = 1500
triggerall = command = "CoinPunch_x"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450

;---------------------------------------------------------------------------
;Medium Coin Punch
[State -1, Medium Coin Punch]
type = ChangeState
value = 1502
triggerall = command = "CoinPunch_y"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450

;---------------------------------------------------------------------------
;Strong Coin Punch
[State -1, Strong Coin Punch]
type = ChangeState
value = 1504
triggerall = command = "CoinPunch_z"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450

;---------------------------------------------------------------------------
;Light Standing Fireball
[State -1, Light Standing Fireball]
type = ChangeState
value = 1000
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Medium Standing Fireball
[State -1, Medium Standing Fireball]
type = ChangeState
value = 1001
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Strong Standing Fireball
[State -1, Strong Standing Fireball]
type = ChangeState
value = 1002
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Strong Tornado SpinEX (Air)
[State -1, Strong Tornado SpinEX (Air)]
type = ChangeState
value = 1251
triggerall = power >= 1000
triggerall = command = "EXtornado"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Light Tornado Spin
[State -1, Light Tornado Spin]
type = ChangeState
value = 1200
triggerall = command = "tornado_x"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Medium Tornado Spin
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1201
triggerall = command = "tornado_y"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Strong Tornado Spin
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1202
triggerall = command = "tornado_z"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220

;---------------------------------------------------------------------------
;Light Tornado Spin (Air)
[State -1, Light Tornado Spin]
type = ChangeState
value = 1203
triggerall = command = "tornado_x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Light Tornado Spin (Air)
[State -1, Light Tornado Spin]
type = ChangeState
value = 1203
triggerall = command = "tornado_x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1300) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1400) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1600) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1700) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 600) && movecontact 
trigger12 = PalNo = 7
trigger13 = (stateno = 610) && movecontact
trigger13 = PalNo = 7
trigger14 = (stateno = 620) && movecontact
trigger14 = PalNo = 7
trigger15 = (stateno = 630) && movecontact
trigger15 = PalNo = 7
trigger16 = (stateno = 640) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 650) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 1300) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 1400) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 1600) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1700) && movecontact
trigger21 = PalNo = 7

;---------------------------------------------------------------------------
;Medium Tornado Spin (Air)
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1204
triggerall = command = "tornado_y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Medium Tornado Spin (Air)
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1204
triggerall = command = "tornado_y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1300) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1400) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1600) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1700) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 600) && movecontact 
trigger12 = PalNo = 7
trigger13 = (stateno = 610) && movecontact
trigger13 = PalNo = 7
trigger14 = (stateno = 620) && movecontact
trigger14 = PalNo = 7
trigger15 = (stateno = 630) && movecontact
trigger15 = PalNo = 7
trigger16 = (stateno = 640) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 650) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 1300) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 1400) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 1600) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1700) && movecontact
trigger21 = PalNo = 7

;---------------------------------------------------------------------------
;Strong Tornado Spin (Air)
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1205
triggerall = command = "tornado_z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Strong Tornado Spin (Air)
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1205
triggerall = command = "tornado_z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1300) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1400) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1600) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1700) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 600) && movecontact 
trigger12 = PalNo = 7
trigger13 = (stateno = 610) && movecontact
trigger13 = PalNo = 7
trigger14 = (stateno = 620) && movecontact
trigger14 = PalNo = 7
trigger15 = (stateno = 630) && movecontact
trigger15 = PalNo = 7
trigger16 = (stateno = 640) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 650) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 1300) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 1400) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 1600) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1700) && movecontact
trigger21 = PalNo = 7

;---------------------------------------------------------------------------
;Drill Kick
[State -1, Drill Kick]
type = ChangeState
value = 1300
triggerall = command = "drillkick"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Drill Kick
[State -1, Drill Kick]
type = ChangeState
value = 1300
triggerall = command = "drillkick"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Head Stomp
[State -1, Head Stomp]
type = ChangeState
value = 1400
triggerall = command = "headstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact

;Head Stomp
[State -1, Head Stomp]
type = ChangeState
value = 1400
triggerall = command = "headstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Butt Stomp
[State -1, Butt Stomp]
type = ChangeState
value = 1600
triggerall = command = "buttstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact

;Butt Stomp
[State -1, Butt Stomp]
type = ChangeState
value = 1600
triggerall = command = "buttstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Air GlideEX
[State -1, Air GlideEX]
type = ChangeState
value = 1701
triggerall = power >= 1000
triggerall = command = "airglideEX"
triggerall = PalNo != 12
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact
trigger9 = (stateno = 1550) && movecontact
trigger10 = (stateno = 1650) && movecontact

;---------------------------------------------------------------------------
;Air Glide
[State -1, Air Glide]
type = ChangeState
value = 1700
triggerall = command = "airglide"
triggerall = var(1) <= 1
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact

;Air Glide
[State -1, Air Glide]
type = ChangeState
value = 1700
triggerall = command = "airglide"
triggerall = var(1) <= 1
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Light Air Fireball
[State -1, Light Air Fireball]
type = ChangeState
value = 1800
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Medium Air Fireball
[State -1, Medium Air Fireball]
type = ChangeState
value = 1803
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Hard Air Fireball
[State -1, Hard Air Fireball]
type = ChangeState
value = 1806
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Coin Punch Alpha Counter
[State -1,Coin Punch Alpha Counter]
type = ChangeState
value = 1900
triggerall = command = "alphacoinpunch"
triggerall = power >= 2000
triggerall = stateno >= 150 && stateno <= 153
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = command = "alphacoinpunch"
trigger2 = p2statetype = A

[State -1,Coin Punch Alpha Counter]
type = ChangeState
value = 1900
triggerall = command = "alphacoinpunch"
triggerall = power >= 1000
triggerall = stateno >= 150 && stateno <= 153
trigger1 = command = "alphacoinpunch"
trigger1 = PalNo = 10
trigger2 = p2statetype = A
trigger2 = PalNo = 10
trigger3 = command = "alphacoinpunch"
trigger3 = PalNo = 7
trigger4 = p2statetype = A
trigger4 = PalNo = 7

;==========================================================================

;BASIC ATTACKS 
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Roll Back]
type = ChangeState
value = 105
triggerall = command = "rollfwd"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Fwd
[State -1, Roll Fwd]
type = ChangeState
value = 110
triggerall = command = "rollfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Slide Kick
[State -1, Slide Kick]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno = 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 410
trigger5 = movecontact
trigger5 = stateno = 230

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 240

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 440

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 12
trigger3 = movecontact
trigger3 = stateno = 400
trigger3 = PalNo = 12
trigger4 = movecontact
trigger4 = stateno = 210
trigger4 = PalNo = 12
trigger5 = movecontact
trigger5 = stateno = 410
trigger5 = PalNo = 12
trigger6 = movecontact
trigger6 = stateno = 230
trigger6 = PalNo = 12
trigger7 = movecontact
trigger7 = stateno = 240
trigger7 = PalNo = 12
trigger8 = movecontact
trigger8 = stateno = 440
trigger8 = PalNo = 12
trigger9 = movecontact
trigger9 = stateno = 200
trigger9 = PalNo = 9
trigger10 = movecontact
trigger10 = stateno = 400
trigger10 = PalNo = 9
trigger11 = movecontact
trigger11 = stateno = 210
trigger11 = PalNo = 9
trigger12 = movecontact
trigger12 = stateno = 410
trigger12 = PalNo = 9
trigger13 = movecontact
trigger13 = stateno = 230
trigger13 = PalNo = 9
trigger14 = movecontact
trigger14 = stateno = 240
trigger14 = PalNo = 9
trigger15 = movecontact
trigger15 = stateno = 440
trigger15 = PalNo = 9

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 1400) && movecontact
trigger5 = (stateno = 1700) && movecontact

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 640) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 1400) && movecontact
trigger6 = (stateno = 1700) && movecontact

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = movecontact
trigger6 = stateno = 440
trigger7 = movecontact
trigger7 = stateno = 210
trigger8 = movecontact
trigger8 = stateno = 440

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440

;Stand Strong Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 400

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 430
trigger7 = movecontact
trigger7 = stateno = 410

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 440
trigger8 = movecontact
trigger8 = stateno = 250
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = movecontact
trigger12 = stateno = 410

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 1400) && movecontact
trigger5 = (stateno = 1700) && movecontact

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 1400) && movecontact
trigger6 = (stateno = 1700) && movecontact

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Sjump
[State -1, Sjump]
type = ChangeState
value = 9000
triggerall = command = "Sjump"
trigger1 = statetype = S
trigger1 = ctrl 
