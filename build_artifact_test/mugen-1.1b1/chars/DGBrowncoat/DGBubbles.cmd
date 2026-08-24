
;-| Fatalities |--------------------------------------------------------

; Friendship
[Command]
name = "friendship"
command = ~B, B, D, a
time = 45

; Kiss of Death
[Command]
name = "kissofdeath"
command = ~F, F, D, F
time = 45

; Sonic Scream Finisher
[Command]
name = "ssfinisher"
command = ~F, F, B, B, a
time = 45

;-| Super Motions |--------------------------------------------------------

;Maximum Bubbles
[Command]
name = "maximumbbls"
command = ~D, B, D, F, x
time = 30

;Super Fist Combo
[Command]
name = "sfist"
command = ~D, F, D, B, x
time = 30

; Super Sonic Scream
[Command]
name = "supersonicscream"
command = ~D, F, D, B, a
time = 30

; Mega Laser Beam
[Command]
name = "lbeam"
command = ~D, B, D, F, a
time = 30


;-| Special Motions |------------------------------------------------------

[Command]
name = "ecrayon"
command = ~B,B,x
time = 10

[Command]
name = "octiblade"
command = ~F,F,a+x
time = 10

[Command]
name = "lightningbolt"
command = ~D,F,y
time = 10

[Command]
name = "sonicscream"
command = ~D,F,a
time = 10

[Command]
name = "thunderclap"
command = ~D,F,b
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "fly"
command = x+y
time = 1

[Command]
name = "prabaixo"
command = z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F, a
time = 1

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
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdfwd1"
command = ~F
time = 1

[Command]
name = "holdback1"
command = ~B
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 30

[Command]
name = "hold_xa"
command = /x+a
time = 30

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 30

[Command]
name = "start"
command = /s
time = 1

;-| Dir |--------------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up" 
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;energizando a lindinha :-)
[Command]
name = "energizando"
command = /c
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

[State -1, Friendship]
type = Changestate
value = 19130
triggerall = RoundState = 2
triggerall = P2Life <= 1
triggerall = NumHelper(7021) = 1
triggerall = p2stateno = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = AILevel = 0
trigger1 = command = "friendship"
trigger1 = Ctrl
trigger1 = StateType != A

[State -1, Kiss of Death]
type = Changestate
value = 19120
triggerall = RoundState = 2
triggerall = P2Life <= 1
triggerall = NumHelper(7021) = 1
triggerall = p2stateno = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = AILevel = 0
trigger1 = (command = "kissofdeath" && command = "hold_b")
trigger1 = Ctrl
trigger1 = StateType != A
trigger1 = P2Dist X <= 45

[State -1, Sonic Scream Finisher]
type = Changestate
value = 19110
triggerall = RoundState = 2
triggerall = P2Life <= 1
triggerall = NumHelper(7021) = 1
triggerall = p2stateno = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = AILevel = 0
trigger1 = command = "ssfinisher"
trigger1 = Ctrl
trigger1 = StateType != A
trigger1 = P2Dist X >= 140

; Super Fist Combo
[State -1, Super Fist Combo]
type = ChangeState
value = 12000
triggerall= Command = "sfist"
triggerall = AILevel = 0
triggerall = Power >= 1000
trigger1 = StateType != A
trigger1 = Ctrl = 1
trigger2 = stateno = 1900

; Maximum Bubbles
[State -1, Maximum Bubbles]
type = ChangeState
value = 11000
triggerall= Command = "maximumbbls"
triggerall = AILevel = 0
triggerall = Power >= 2000
trigger1 = StateType != A
trigger1 = Ctrl = 1
trigger2 = stateno = 1900

;============================================

; Super Sonic Scream
[State -1, Super Sonic Scream]
type = ChangeState
value = 3510
triggerall = (command="supersonicscream" && power>=2000)
triggerall = AILevel = 0
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = (stateno = 210)&& time < 30
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30
trigger4 = MoveContact
trigger5 = stateno = 1900
;Super Cancel
trigger6 = stateno = 12001
trigger6 = animelemtime(2) >= 0
trigger6 = animelemtime(65) < 0

;============================================

; Mega Laser Beam
[State -1, Mega Laser Beam]
type = ChangeState
value = 3500
triggerall = (command="lbeam" && power>=1000)
triggerall = AILevel = 0
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = (stateno = 210)&& time < 30
trigger2 = MoveContact
trigger3 = (stateno = 211)&& time < 30
trigger3 = MoveContact
trigger4 = (stateno = 240)&& time < 30
trigger4 = MoveContact
trigger5 = stateno = 1900
;Super Cancel
trigger6 = stateno = 12001
trigger6 = animelemtime(2) >= 0
trigger6 = animelemtime(65) < 0

;============================================

;Extending Crayon
[State -1]
type = ChangeState
value = 3040
triggerall = AILevel = 0
triggerall = command = "ecrayon"
trigger1 = statetype != A
trigger1 = ctrl

;============================================

;Lightning Bolt
[State -1]
type = ChangeState
value = 3030
triggerall = AILevel = 0
triggerall = command = "lightningbolt"
triggerall = !NumHelper(3031)
trigger1 = statetype != A
trigger1 = ctrl

;============================================

;Octi Blade
[State -1]
type = ChangeState
value = 3020
triggerall = AILevel = 0
triggerall = command = "octiblade"
triggerall = !NumHelper(3021)
trigger1 = statetype != A
trigger1 = ctrl

;============================================

;Thunder Clap
[State -1]
type = ChangeState
value = 3010
triggerall = AILevel = 0
triggerall = command = "thunderclap"
triggerall = !NumHelper(3011)
trigger1 = statetype != A
trigger1 = ctrl

;============================================

;Sonic Scream
[State -1]
type = ChangeState
value = 3000
triggerall = AILevel = 0
triggerall = command = "sonicscream"
triggerall = !NumHelper(3001)
trigger1 = statetype != A
trigger1 = ctrl

;============================================
;Dodge
[State -1]
type = ChangeState
value = 4000
triggerall = statetype = S
triggerall = NumHelper(7021) != 1
triggerall = command = "recovery"
triggerall = command != "holdfwd" && command != "holdback"
trigger1 = ctrl = 1

;============================================
;Rolling Dodge Forward
[State -1]
type = ChangeState
value = 4001
triggerall = statetype = S
triggerall = NumHelper(7021) != 1
triggerall = command = "recovery" && command = "holdfwd"
trigger1 = ctrl = 1

;============================================
;Rolling Dodge Back
[State -1]
type = ChangeState
value = 4002
triggerall = statetype = S
triggerall = NumHelper(7021) != 1
triggerall = command = "recovery" && command = "holdback"
trigger1 = ctrl = 1

;============================================

;Sweep Kick
[State -1, Sweep Kick]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;============================================

;Standing Roundhouse Kick
[State -1, Standing Roundhouse Kick]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = statetype != A
trigger1 = ctrl

;============================================
;Stand Light Punch
[State -1, Stand Low Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201 || stateno = 211
trigger2 = time = [8,13]

;============================================
;Stand Light Punch
[State -1, Stand Low Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 200 || stateno = 210
trigger1 = time = [8,13]

;============================================

;Stand High Punch
[State -1, Stand High Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = p2dist x > 45
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201 || stateno = 211
trigger2 = time = [8,13]
;============================================

;Stand High Punch
[State -1, Stand High Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 200 || stateno = 210
trigger1 = time = [8,13]
;============================================

;============================================

;Close Punch Combo 1
[State -1, Close Punch Combo 1]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = AILevel = 0
trigger1 = p2dist x <= 45
trigger1 = ctrl = 1

;Close Punch Combo 2
[State -1, Close Punch Combo 2]
type = ChangeState
value = 216
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 215
trigger1 = movehit = 1

;Close Punch Combo 3
[State -1, Close Punch Combo 3]
type = ChangeState
value = 217
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 216
trigger1 = movehit = 1

;Close Punch Combo 4
[State -1, Close Punch Combo 4]
type = ChangeState
value = 218
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 217
trigger1 = movehit = 1

;Close Punch Combo 5
[State -1, Close Punch Combo 5]
type = ChangeState
value = 219
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 218
trigger1 = movehit = 1

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2dist x > 45

;============================================

;Close Knee Kick
[State -1, Close Knee Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = AILevel = 0
trigger1 = p2dist x <= 45
trigger1 = ctrl = 1

;Close Knee Kick Combo 2
[State -1, Close Knee Kick Combo 2]
type = ChangeState
value = 246
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 245
trigger1 = movehit = 1

;Close Knee Kick Combo 3
[State -1, Close Knee Kick Combo 3]
type = ChangeState
value = 247
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 246
trigger1 = movehit = 1

;Close Knee Kick Combo 4
[State -1, Close Knee Kick Combo 4]
type = ChangeState
value = 248
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = AILevel = 0
trigger1 = stateno = 247
trigger1 = movehit = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;============================================

;Jump Punch
[State -1, Jump Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = AILevel = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Kick
;空中強キック
[State -1, Jump Kick]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = AILevel = 0
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------
;energizandoｭ
;[State -1, poweradd]
;type = ChangeState
;value = 828
;triggerall = command = "energizando"
;triggerall = power < 5000
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 1900

;-------------------------
;Provoca鈬oｭ
[State -1, taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; == ARTIFICAL INTELLIGENCE ==
[State -3, == ARTIFICAL INTELLIGENCE ==]
type = null
trigger1 = 1

[State -3, AI - Kiss of Death]
type = Changestate
value = 19120
triggerall = AILevel > 0 && RoundState = 2
triggerall = P2Life = 1
triggerall = NumHelper(7021) = 1
triggerall = NumHelper(7010) != 1
triggerall = enemy, StateNo = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = Random <= 500
;triggerall = var(58) >= 1
trigger1 = StateType != A && ctrl = 1
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2Dist X <= 45

[State -3, AI - Sonic Scream Finisher]
type = Changestate
value = 19110
triggerall = AILevel > 0 && RoundState = 2
triggerall = P2Life = 1
triggerall = NumHelper(7021) = 1
triggerall = NumHelper(7010) != 1
triggerall = enemy, StateNo = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = Random <= 500
;triggerall = var(58) >= 1
trigger1 = StateType != A && ctrl = 1
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2Dist X >= 140

[State -3, AI - Friendship]
type = Changestate
value = 19130
triggerall = AILevel > 0 && RoundState = 2
triggerall = P2Life = 1
triggerall = NumHelper(7021) = 1
triggerall = NumHelper(7010) != 1
triggerall = enemy, StateNo = 7022
triggerall = RoundNo != 1 || Enemy, TeamMode = turns
triggerall = Random <= 1000
;triggerall = var(58) >= 1
trigger1 = StateType != A && ctrl = 1
trigger1 = (p2statetype = S) || (p2statetype = C)

[State -3, AI - Super Fist Combo]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = StateType != A && ctrl = 1
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = Random <= 250
trigger1 = P2statetype != L && StateType != A
trigger1 = p2dist x <= 100 && p2dist y >= -40
;trigger1 = (StateNo = 100 || StateNo = 40 || Stateno = 0 || Stateno = 230)
;trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
;trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
value = 12000

[State -3, AI - Maximum Bubbles]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
triggerall = StateType != A && ctrl = 1
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = Random <= 250
trigger1 = P2statetype != L
trigger1 = p2dist x <= 140 || p2dist y <= -40
;Super Cancel
trigger2 = Random <= 750
trigger2 = stateno = 12001
trigger2 = animelemtime(2) >= 0
trigger2 = animelemtime(65) < 0
value = 11000

; Super Sonic Scream
[State -3, AI - Super Sonic Scream]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L
triggerall = Power >= 2000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = StateType != A && ctrl = 1
trigger1 = Random <= 250
trigger1 = p2dist x >= 200
;Dream Cancel
trigger2 = Random <= 10
trigger2 = stateno = 12001
trigger2 = animelemtime(2) >= 0
trigger2 = animelemtime(65) < 0
value = 3510

; Mega Laser Beam
[State -3, AI - Mega Laser Beam]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L
triggerall = Power >= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = StateType != A && ctrl = 1
trigger1 = Random <= 250
trigger1 = p2dist x >= 200
;Dream Cancel
trigger2 = Random <= 10
trigger2 = stateno = 12001
trigger2 = animelemtime(2) >= 0
trigger2 = animelemtime(65) < 0
value = 3500

[State -3, AI - Extending Crayon]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = Statetype = S || StateType = C
triggerall = P2statetype != L
triggerall = ctrl = 1
triggerall = random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = !NumHelper(3031)
trigger1 = p2dist x >= 200
value = 3040

[State -3, AI - Lightning Bolt]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = Statetype = S || StateType = C
triggerall = P2statetype != L
triggerall = ctrl = 1
triggerall = random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = !NumHelper(3031)
trigger1 = p2dist x >= 140
value = 3030

[State -3, AI - Octi Blade]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = Statetype = S || StateType = C
triggerall = P2statetype != L
triggerall = ctrl = 1
triggerall = random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = !NumHelper(3021)
trigger1 = p2dist x >= 140
value = 3020

[State -3, AI - Thunder Clap]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = Statetype = S || StateType = C
triggerall = P2statetype != L
triggerall = ctrl = 1
triggerall = random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = !NumHelper(3011)
trigger1 = p2dist x >= 140
value = 3010

[State -3, AI - Sonic Scream]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = p2life != 0
triggerall = Statetype = S || StateType = C
triggerall = P2statetype != L
triggerall = ctrl = 1
triggerall = random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = !NumHelper(3001)
trigger1 = p2dist x >= 140
value = 3000

[State -3, AI - Recover Ground]
type = ChangeState
triggerall = stateno = 5050
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
triggerall = Random <= 250
trigger1 = Random < AILevel * 100 && RoundState = 2
value = 5200

[State -3, AI - Recover Air]
type = ChangeState
triggerall = stateno = 5050
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
triggerall = Random <= 250
trigger1 = Random < AILevel * 100 && RoundState = 2
value = 5210

;AI - Auto Defensa
[State -3, AI - Guard 1]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = statetype = S
triggerall = statetype != C
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = enemy, NumProj >= 1 || enemy, movetype = A
triggerall = Pos Y > -1
trigger1 = random <= 950
value = 130

[State -1, AI - Guard Stand to Crouch]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y > -1
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -3, AI - Guard 2]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = statetype = C
triggerall = statetype != S
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = enemy, NumProj >= 1 || enemy, movetype = A
triggerall = Pos Y > -1
trigger1 = random <= 950
value = 131

[State -1, AI - Guard Crouch to Stand]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -3, AI - Guard 3]
type = ChangeState
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = statetype = A
triggerall = statetype != S
triggerall = statetype != C
triggerall = ctrl = 1
triggerall = enemy, NumProj >= 1 || enemy, movetype = A
trigger1 = random <= 950
value = 132

; Dodge
[State -3, AI - Rolling Dodge Forward]
type = ChangeState
value = 4001
triggerall = NumHelper(7021) != 1
triggerall = StateType = S || StateType = C
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = p2Dist X >= 120
trigger1 = random <= 250
trigger2 = p2Dist X < 120
trigger2 = random <= 250

; Dodge
[State -3, AI - Rolling Dodge Back]
type = ChangeState
value = 4002
triggerall = NumHelper(7021) != 1
triggerall = StateType = S || StateType = C
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = p2Dist X < 120
trigger1 = random <= 250

; Dodge
[State -3, AI - Dodge]
type = ChangeState
value = 4000
triggerall = NumHelper(7021) != 1
triggerall = StateType = S || StateType = C
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = p2Dist X < 120
trigger1 = random <= 250

[State -3, AI - Sweep Kick]
type = ChangeState
value = 250
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && StateType != A
triggerall = statetype != A
triggerall = random <= 750
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = ctrl = 1
trigger1 = p2dist x <= 35 && p2dist y > -40

[State -3, AI - Roundhouse Kick]
type = ChangeState
value = 260
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random <= 750
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = ctrl = 1
trigger1 = p2dist x <= 52

[State -3, AI - Gotcha! Grab]
type = ChangeState
value = 3130
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && StateType != A
triggerall = statetype != A
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = Random <= 750
trigger1 = ctrl = 1
trigger1 = p2dist X <= 52

;[State -3, AI - Throw]
;type = ChangeState
;value = 800
;triggerall = Random < AILevel * 100 && RoundState = 2
;triggerall = StateType = S || StateType = C
;triggerall = P2statetype != L && StateType != A
;triggerall = statetype != A
;triggerall = NumHelper(7021) != 1
;triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
;triggerall = Random <= 750
;trigger1 = ctrl = 1
;trigger1 = p2bodydist X <= 16

;Taunt
[State -3, AI - Taunt]
type = ChangeState
value = 195
triggerall = StateType = S || StateType = C
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = P2Life = 0
trigger1 = Life >= 700
trigger1 = ctrl = 1

; Run Forward
[State -3, AI - Run Forward]
type = ChangeState
value = 101
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateNo != 100
triggerall = StateType = S || StateType = C
triggerall = StateNo != 1400
triggerall = ctrl = 1
triggerall = Random <= 250
triggerall = NumHelper(7021) != 1
trigger1 = Power <= 4999
trigger1 = p2Dist X >= 140

;Stop running
;[State -3, AI - Stop Running]
;type = ChangeState
;value = 101
;triggerall = Random < AILevel * 10
;triggerall = StateNo = 100
;triggerall = StateType = S || StateType = C
;trigger1 = p2Dist X <= 100
;trigger1 = Time = 30

;Strong uppercut
[State -3, AI - Strong Uppercut]
type = ChangeState
value = 410
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L
triggerall = Random <= 750
triggerall = ctrl = 1
triggerall = p2dist x <= 35
trigger1 = NumHelper(7021) != 1
trigger1 = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = StateNo != 200
trigger1 = StateNo != 820
trigger2 = Random <= 250
trigger2 = NumHelper(7021) = 1
trigger2 = NumHelper(7010) != 1

;Close kick
[State -3, AI - Close Kick Combo 1]
type = ChangeState
value = 245
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = ctrl = 1
trigger1 = p2dist x <= 45

;Close Kick Combo 2
[State -3, AI - Close Kick Combo 2]
type = ChangeState
value = 246
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = Random <= 500
trigger1 = stateno = 245
trigger1 = movehit = 1

;Close Kick Combo 3
[State -3, AI - Close Kick Combo 3]
type = ChangeState
value = 247
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
trigger1 = stateno = 246
trigger1 = movehit = 1

;Close Kick Combo 4
[State -3, AI - Close Kick Combo 4]
type = ChangeState
value = 248
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
trigger1 = stateno = 247
trigger1 = movehit = 1

;Close punch Combo 1
[State -3, AI - Close Punch Combo 1]
type = ChangeState
value = 215
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = ctrl = 1
trigger1 = p2dist x <= 45

;Close punch Combo 2
[State -3, AI - Close Punch Combo 2]
type = ChangeState
value = 216
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = Random <= 500
trigger1 = stateno = 215
trigger1 = movehit = 1

;Close punch Combo 3
[State -3, AI - Close Punch Combo 3]
type = ChangeState
value = 217
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
trigger1 = stateno = 216
trigger1 = movehit = 1

;Close punch Combo 4
[State -3, AI - Close Punch Combo 4]
type = ChangeState
value = 218
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
trigger1 = stateno = 217
trigger1 = movehit = 1

;Close punch Combo 5
[State -3, AI - Close Punch Combo 5]
type = ChangeState
value = 219
triggerall = AILevel > 0 && RoundState = 2
triggerall = StateType = S
trigger1 = stateno = 218
trigger1 = movehit = 1

;Strong punch
[State -3, AI - High Punch]
type = ChangeState
value = 210
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 200
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
triggerall = p2dist x <= 57
triggerall = p2dist x > 45
trigger1 = ctrl = 1
trigger2 = stateno = 211 || stateno = 201
trigger2 = time = [8,13]

;Strong punch
[State -3, AI - High Punch]
type = ChangeState
value = 211
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 200
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = stateno = 210 || stateno = 200
trigger1 = time = [8,13]

;Weak punch
[State -3, AI - Low Punch]
type = ChangeState
value = 200
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 200
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = p2dist x <= 70
trigger1 = p2dist x > 45
trigger1 = ctrl = 1
trigger2 = stateno = 201 || stateno = 211
trigger2 = time = [8,13]

;Weak punch
[State -3, AI - Low Punch]
type = ChangeState
value = 201
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L && P2statetype != A
triggerall = StateNo != 200
triggerall = StateNo != 820
triggerall = Random <= 1000
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = stateno = 200 || stateno = 210
trigger1 = time = [8,13]

;Jump
[State -3, AI - Jump]
type = ChangeState
value = 40
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = S || StateType = C
triggerall = P2statetype != L
trigger1 = P2StateType = A
trigger1 = ctrl = 1
trigger2 = StateNo = 248 || StateNo = 249
trigger2 = Time >= 22

;Aerial Punch
[State -3, AI - Punch Jump]
type = ChangeState
value = 610
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = A
triggerall = Random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = p2dist x <= 160
trigger1 = Pos Y <= -40
trigger1 = ctrl = 1

;Aerial Kick
[State -3, AI - Kick Jump]
type = ChangeState
value = 620
triggerall = Random < AILevel * 100 && RoundState = 2
triggerall = StateType = A
triggerall = Random <= 500
triggerall = NumHelper(7021) != 1
triggerall = enemy, StateNo != 7022 && enemy, StateNo != 7023
trigger1 = p2dist x <= 160
trigger1 = Pos Y <= -40
trigger1 = ctrl = 1

;==========================================================================
;THE END.




