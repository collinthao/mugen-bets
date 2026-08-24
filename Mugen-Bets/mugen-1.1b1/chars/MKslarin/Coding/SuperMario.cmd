




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
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 
[Defaults]
command.time = 15
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------
[Command]
name = "しゃくねつX"
command = ~D, B, D, B, x
time = 20

[Command]
name = "しゃくねつX"
command = ~D, B, D, DB, x
time = 20

[Command]
name = "しゃくねつY"
command = ~D, B, D, B, y
time = 20

[Command]
name = "しゃくねつY"
command = ~D, B, D, DB, y
time = 20

[Command]
name = "スラ・ストライクX"
command = ~D, F, D, F, x
time = 20

[Command]
name = "スラ・ストライクX"
command = ~D, F, D, DF, x
time = 20

[Command]
name = "スラ・ストライクY"
command = ~D, F, D, F, y
time = 20

[Command]
name = "スラ・ストライクY"
command = ~D, F, D, DF, y
time = 20

[Command]
name = "仲間達"
command = ~D, B, D, F, x
time = 20

[Command]
name = "仲間達"
command = ~D, B, D, F, y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "ニフラムX"
command = ~F, DF, D, DB, B, x

[Command]
name = "ニフラムY"
command = ~F, DF, D, DB, B, y

[Command]
name = "ニフラムA"
command = ~F, DF, D, DB, B, a

[Command]
name = "ニフラムB"
command = ~F, DF, D, DB, B, b

[Command]
name = "ぶきみなひかりX"
command = ~F, D, DF, x

[Command]
name = "ぶきみなひかりY"
command = ~F, D, DF, y

[Command]
name = "フラッシュソードA"
command = ~D, DF, F, a

[Command]
name = "フラッシュソードB"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "大木槌"
command = F, x
time = 10

[Command]
name = "骨落とし"
command = D, c
time = 10

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;-| Finishers |-----------------------------------------------------------
; Finishing move
[Command]
name = "FATALITY"
command =  F,D,B,z
time = 100

;-| Finishers |-----------------------------------------------------------
; Finishing move
[Command]
name = "Scorpion Morph Fatality"    
command = ~D, D, D
time = 100
[Command]
name = "Friendship"
command = ~F,B,a
time = 100
[Command]
name = "Babality"
command = ~D,F,B,b
time = 100
[Command]
name = "The Lake of Agony Fatality"
command = ~F,B,z
time = 100
;------------------------------------------------------------------------------

[statedef -1]

[State -1]
type = Changestate
trigger1 = ctrl
trigger1 = P2Life <= 1
trigger1 = NumHelper(7000) = 0
trigger1 = P2StateNo != 867031
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 10000

[State -1, FATALITY]
type = ChangeState
triggerall = P2BodyDist X >= 100
triggerall = var(59)
triggerall = var (7) 
triggerall = stateno !=210
triggerall = RoundState = 2
triggerall = Random <9999
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = movetype = I
triggerall = enemynear,stateno = 867032 || p2stateno = 867032
trigger1 = Ctrl
value = 3000

[State -1, Fatality]
type = ChangeState
trigger1 = ctrl; The character must have control.
trigger1 = P2Life = 1; opponent of life should be equal to 1.
trigger1 = NumHelper (7000) = 1; must be at least 1 invisible helper on the screen.
trigger1 = P2StateNo  = 867032; Opponent should be in this state.
trigger1 = RoundNo != 1; Round can not be the first.
triggerall =P2BodyDist X >= 100
trigger1 = var (59) ; you must win at least one round before.
trigger1 = command = "FATALITY" ; Place the command to the fatality to run.
trigger1 = statetype =  S; Your character should be standing.
trigger1 = (p2statetype = S) || (P2statetype = C); P2 can not be flying.
value = 3000


;=========================================================================
;-------------------------------
;            Finishers         :
;-------------------------------

[State -1, SCORPION MORPH FATALITY]
type = Changestate
value = 8000
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
triggerall = P2BodyDist X >= 30&&P2BodyDist X <= 65
trigger1 = command = "Scorpion Morph Fatality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1,FRIENDSHIP]
type = Changestate
value = 8700
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "Friendship"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1,BABALITY]
type = Changestate
value = 8600
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "Babality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -1, THE LAKE OF AGONY FATALITY]
type = Changestate
value = 1313
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "The Lake of Agony Fatality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, しゃくねつX];ゲージレベル１
type = ChangeState
value = 3000
triggerall = command = "しゃくねつX"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(3100) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, しゃくねつY];ゲージレベル２
type = ChangeState
value = 3001
triggerall = command = "しゃくねつY"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(3100) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, スラ・ストライクX];ゲージレベル１
type = ChangeState
value = 3010
triggerall = command = "スラ・ストライクX"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumProjID(3100) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, スラ・ストライクY];ゲージレベル２
type = ChangeState
value = 3020
triggerall = command = "スラ・ストライクY"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = NumHelper(23022) = 0
triggerall = NumProjID(3100) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, 仲間達];ゲージレベル３
type = ChangeState
value = 3500
triggerall = command = "仲間達"
triggerall = power >= 3000
triggerall = life <= 400
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ニフラムX]
type = ChangeState
value = 1300
triggerall = command = "ニフラムX"
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, ニフラムY]
type = ChangeState
value = 1301
triggerall = command = "ニフラムY"
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, ニフラムA]
type = ChangeState
value = 1302
triggerall = command = "ニフラムA"
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, ニフラムB]
type = ChangeState
value = 1303
triggerall = command = "ニフラムB"
triggerall = statetype != A
triggerall = NumProjID(1311) = 0
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, ぶきみなひかりX]
type = ChangeState
value = 1350
triggerall = command = "ぶきみなひかりX"
triggerall = statetype != A
triggerall = PalNo = [1,6]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, ぶきみなひかりY]
type = ChangeState
value = 1351
triggerall = command = "ぶきみなひかりY"
triggerall = statetype != A
triggerall = PalNo = [1,6]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, フバーハA]
type = ChangeState
value = 1410
triggerall = command = "ぶきみなひかりX"
triggerall = statetype != A
triggerall = PalNo = [7,12]
triggerall = power >= 500
triggerall = NumHelper(11410) = 0
trigger1 = ctrl

[State -1, フバーハB]
type = ChangeState
value = 1420
triggerall = command = "ぶきみなひかりY"
triggerall = statetype != A
triggerall = power >= 500
triggerall = PalNo = [7,12]
triggerall = NumHelper(11410) = 0
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, フラッシュソードA]
type = ChangeState
value = 1400
triggerall = command = "フラッシュソードA"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1, フラッシュソードB]
type = ChangeState
value = 1405
triggerall = command = "フラッシュソードB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1,投げ]
type = ChangeState
value = 800
triggerall = command = "y" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1,大木槌（コンボ）]
type = ChangeState
value = 260
triggerall = command = "大木槌"
triggerall = statetype = S
triggerall = movecontact
trigger1 = stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241

[State -1,大木槌（単発）]
type = ChangeState
value = 250
triggerall = command = "大木槌"
triggerall = statetype = S
trigger1 = ctrl

[State -1,骨落とし]
type = ChangeState
value = 650
triggerall = command = "骨落とし"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = Pos Y <= -60 

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact

[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201 || stateno = 230 || stateno = 231
trigger2 = movecontact

[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 || stateno = 211 || stateno = 230 || stateno = 231
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time>8 || stateno = 401 && time>8 || stateno = 430 || stateno = 431
trigger2 = movecontact

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time>8 || stateno = 401 && time>8 || stateno = 430 || stateno = 431
trigger2 = movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 || stateno = 431
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601 || stateno = 630 || stateno = 631
trigger2 = movecontact

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601 || stateno = 630 || stateno = 631
trigger2 = movecontact

;------------------------------------------------------------------------------



