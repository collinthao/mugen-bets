;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-| AI |----------------------------------------------------
[Command]
name = "cpu00"
command = a,a,a,a,a,b,b,b,b,c,c,c,c,x,x,x,x,y,y,y,y,z,z,z,z,z,z,z,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu01"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu02"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu03"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu04"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu05"
command = U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu06"
command = z,y,x,c,b,a,a,b,c,x,y,z,y,x,c,b,a,a,b,c,x,y,z,y,x,c,b,a,a,b,c,x,y,z,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu07"
command = a,b,c,x,y,z,U,B,F,B,a,b,c,x,y,z,U,B,F,B,a,b,c,x,y,z,U,B,F,B,a,b,c,x,y,z,U,B,F,B,a,b,c,x,y,z,U,B,F,B,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu08"
command = a,b,c,a,b,c,a,b,c,x,y,z,x,y,z,a,b,c,a,b,c,a,b,c,x,y,z,x,y,z,a,b,c,a,b,c,a,b,c,x,y,z,x,y,z,z,z,z,z,z,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu09"
command = U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,U,D,F,B,a,b,c,a,b,c,a,b,c,x,y,z,B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "RagingJab"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "GasCylinder"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Rage"
command = ~D, DB, B, a+b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Knife1"
command = ~D, DF, F, x

[Command]
name = "Knife2"
command = ~D, DF, F, y

[Command]
name = "Dive1"
command = ~D, DB, B, x

[Command]
name = "Dive2"
command = ~D, DB, B, y

[Command]
name = "Chain1"
command = ~D, DF, F, a

[Command]
name = "Chain2"
command = ~D, DF, F, b

[Command]
name = "Divebomb1"
command = ~D, DB, B, a

[Command]
name = "Divebomb2"
command = ~D, DB, B, b

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
name = "recovery" ;Required (do not remove)
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

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "Push"
command = x+y

[Command]
name = "Push"
command = z+y

[Command]
name = "Push"
command = x+z

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "super_jump_up"
command = ~D, U
time = 50

;===========================================================================
;---------------------------------------------------------------------------
; 2. State entry
[Statedef -1]

[State AI Helper Check]
type = ChangeState
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper(9741)
value = 9741

[State AI Helper Check 2]
type = ChangeState
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper(9742)
value = 9742

[State AI: Let's Go!]
type = DestroySelf
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1 = IsHelper
trigger1 = movereversed = 1

;===========================================================================
;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================

[State Super: Raging Jab]
type = ChangeState
value = 3000
triggerall = var(7) <= 0
triggerall = command = "RagingJab"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State Super: Gas Cylinder]
type = ChangeState
value = 3050
triggerall = var(7) <= 0
triggerall = command = "GasCylinder"
triggerall = power >= 1500
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = (stateno = [400,499]) && movecontact
trigger5 = (stateno = [600,699]) && movecontact
trigger6 = (stateno = [1000,2999]) && movecontact

[State Super: Unstoppable Rage]
type = ChangeState
value = 3100
triggerall = var(7) <= 0
triggerall = command = "Rage"
triggerall = power >= 2000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
;===========================================================================

[State Special: Knife Swing]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "Knife1"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State Special: Knife Swing]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = command = "Knife2"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State Special: Dive Tackle]
type = ChangeState
value = 1050
triggerall = var(59) <= 0
triggerall = command = "Dive1"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = (stateno = [400,499]) && movecontact
trigger5 = (stateno = [600,699]) && movecontact

[State Special: Dive Tackle]
type = ChangeState
value = 1060
triggerall = var(59) <= 0
triggerall = command = "Dive2"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = (stateno = [400,499]) && movecontact
trigger5 = (stateno = [600,699]) && movecontact

[State Special: Chain]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "Chain1"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State Special: Chain]
type = ChangeState
value = 1110
triggerall = var(59) <= 0
triggerall = command = "Chain2"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State Special: Divebomb]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "Divebomb1"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = (stateno = [400,499]) && movecontact
trigger5 = (stateno = [600,699]) && movecontact

[State Special: Divebomb]
type = ChangeState
value = 1210
triggerall = var(59) <= 0
triggerall = command = "Divebomb2"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = (stateno = [400,499]) && movecontact
trigger5 = (stateno = [600,699]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Moves
;---------------------------------------------------------------------------
;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;Air Dash Fwd
[State Air Dash Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Air Dash Back
[State Air Dash Back]
type = ChangeState
value = 102
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Run Fwd
[State Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Run Back
[State Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;===========================================================================
;---------------------------------------------------------------------------
; Basic Attacks
;---------------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Throw
[State Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype != A) || (p2statetype = C)
trigger1 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
; Standing attacks
;---------------------------------------------------------------------------
;===========================================================================

[State Stand_X]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State Stand_Y]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact

[State Stand_Z]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact

[State Stand_A]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact

[State Stand_B]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact

[State Stand_C]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Crouching Attacks
;---------------------------------------------------------------------------
;===========================================================================

[State Crouch_X]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact

[State Crouch_Y]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = stateno = 400 && movecontact

;Crouch_Z
[State Crouch_Z]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact

;Crouch_A
[State Crouch_A]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact

;Crouch_B
[State Crouch_B]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact
trigger6 = stateno = 430 && movecontact

;Crouch_C
[State Crouch_C]
type = ChangeState
value = 450
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,299]) && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = stateno = 440 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Air Attacks
;---------------------------------------------------------------------------
;===========================================================================

;Air_X
[State Air_X]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102

;Air_Y
[State Air_Y]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102
trigger3 = stateno = 600 && movecontact

;Air_Z
[State Air_Z]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact

;Air_A
[State Air_A]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact

;Air_B
[State Air_B]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact

;Air_C
[State Air_C]
type = ChangeState
value = 650
triggerall = var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101 || stateno = 102
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact

;--------------------------------------------------------------------------
[State Guard Push Stand]
type = ChangeState
value = 80
triggerall = Var(59) <= 0
triggerall = command = "Push"
trigger1 = stateno = [150,153]

;===========================================================================
;---------------------------------------------------------------------------
; Recovery Roll
;---------------------------------------------------------------------------
;===========================================================================
[State Forward Recovery Roll]
type = ChangeState
value = 70
triggerall = Var(59) <= 0
triggerall = command = "holdfwd"
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State Backward Recovery Roll]
type = ChangeState
value = 71
triggerall = Var(59) <= 0
triggerall = command = "holdback"
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;===========================================================================
;---------------------------------------------------------------------------
; Super Jump / Launcher
;---------------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Super Jump Up
[State Super Jump Up]
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = command = "super_jump_up" && ctrl
trigger1 = statetype != A && statetype != A 
trigger2 = stateno = 10  
;-----------------------------
;Launcher
[State Launcher] ;by GGN
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = Command = "holdup"
trigger1 = stateno = 250 && movehit
trigger2 = stateno = 420 && movehit

;---------------------------------------------------------------------------
;Taunt
[State Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; A.I
;---------------------------------------------------------------------------
;===========================================================================

[State AI: Run Fwd]
type = ChangeState
value = 100
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10
trigger1 = p2bodydist y = [-20,0]
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))

[State AI:Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) 
trigger2 = p2bodydist x <= 50

[State AI:Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [150,170]) && Random <= (355 * (var(59) ** 2 / 64.0))
trigger1 = enemy,backedgedist < 70

;---------------------------------------------------------------------------
[State AI: Fwd dodge]
type = ChangeState
value = 70
triggerall = roundstate = 2
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
trigger1 = Random <= (375 * (var(59) ** 2 / 64.0))

;---------------------------------------------------------------------------
[State AI: Backwards dodge]
type = ChangeState
value = 71
triggerall = roundstate = 2
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
trigger1 = Random <= (375 * (var(59) ** 2 / 64.0))

;Throw Attempt
[State AI: Throw Attempt]
type = ChangeState
value = 800
triggerall = (roundstate = 2) && (var(59) >=1)
TriggerAll = StateType != A
TriggerAll = RoundState = 2
TriggerAll = P2StateType != L
TriggerAll = P2StateType != A
TriggerAll = P2BodyDist X = [-7,7] 
triggerall = ctrl 
TriggerAll = (PrevStateNo=[5000,5270]) || (PrevStateNo=[120,159])
Trigger1 = Random <= (499 * (var(59) ** 2 / 64.0))

;===========================================================================
;---------------------------------------------------------------------------
; A.I Stand Chaining
;---------------------------------------------------------------------------
;===========================================================================
[State AI: Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype != A)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger2 = (p2bodydist x <= 40) && (stateno = 100)
value = 200

[State AI: Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 210

[State AI: Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 210) && movecontact && Random <= (499 * (var(59) ** 2 / 64.0))
value = 220

[State AI: Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 230

;Start Standing Chain Combo
[State AI: Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = [210,211]) && movecontact
value = 240

[State AI: Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 220) && movecontact && Random <= (499 * (var(59) ** 2 / 64.0))
value = 250

;===========================================================================
;---------------------------------------------------------------------------
; A.I Crouch Chaining
;---------------------------------------------------------------------------
;===========================================================================
[State AI: Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = Random <= (499 * (var(59) ** 2 / 64.0))
trigger1 = pos y = 0

[State AI: Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = Random <= (499 * (var(59) ** 2 / 64.0))

[State AI: Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = (roundstate = 2) && (var(59) >=1)
trigger1 = p2bodydist x <= 30
trigger1 = stateno = 440
trigger1 = movehit
trigger1 = Random <= (499 * (var(59) ** 2 / 64.0))
trigger2 = p2bodydist x <= 32
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = Random <= (499 * (var(59) ** 2 / 64.0))
trigger3 = p2bodydist x <= 35
trigger3 = stateno = 210 || stateno = 240 || stateno = 211 || stateno = 241
trigger3 = movehit
trigger3 = Random <= (499 * (var(59) ** 2 / 64.0))

[State AI: Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2statetype != A
triggerall = P2statetype != A
trigger1 = p2bodydist x <= 46
trigger1 = p2bodydist y = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = Random <= (499 * (var(59) ** 2 / 64.0))

[State AI: Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (roundstate = 2) && (var(59) >=1)&& p2movetype != A
trigger1 = stateno = 430 || stateno = 400
trigger1 = movehit
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = stateno = 200
trigger2 = movehit && random <=75*var(59) && p2statetype != A
trigger3 = P2statetype != A
trigger3 = p2bodydist x <= 40
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = p2bodydist y = [-2,2]

[State AI: Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x = [-2,40]
triggerall = P2MoveType != A
trigger1 = stateno = 440 || stateno = 410
trigger1 = movecontact
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))

;End Crouching Chain

[State AI: Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 60

;===========================================================================
;---------------------------------------------------------------------------
; A.I Air Chaining
;---------------------------------------------------------------------------
;===========================================================================

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [60,61])
value = 600

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact
value = 610

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 610) && movecontact && (random = [0,500])
value = 620

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact && (random = [500,999])
value = 630

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 630) && movecontact
value = 640

[State AI: Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 640) && movecontact
value = 650

;===========================================================================
;---------------------------------------------------------------------------
; A.I Special Moves
;---------------------------------------------------------------------------
[State AI: Fireball X]
type = ChangeState
value = 1000
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 75 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

[State AI: Fireball X]
type = ChangeState
value = 1010
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 75 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

;===========================================================================
[State AI: Fireball X]
type = ChangeState
value = 1050
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 75 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)
trigger5 = (stateno = 600) && (movecontact) && Random <= 68*var(59)
trigger6 = (stateno = 610) && (movecontact) && Random <= 68*var(59)
trigger7 = (stateno = 620) && (movecontact) && Random <= 75*var(59)
trigger8 = (stateno = 630) && (movecontact) && Random <= 68*var(59)
trigger9 = (stateno = 640) && (movecontact) && Random <= 68*var(59)
trigger10 = (stateno = 650) && (movecontact) && Random <= 75*var(59)

[State AI: Fireball X]
type = ChangeState
value = 1060
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 75 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)
trigger5 = (stateno = 600) && (movecontact) && Random <= 68*var(59)
trigger6 = (stateno = 610) && (movecontact) && Random <= 68*var(59)
trigger7 = (stateno = 620) && (movecontact) && Random <= 75*var(59)
trigger8 = (stateno = 630) && (movecontact) && Random <= 68*var(59)
trigger9 = (stateno = 640) && (movecontact) && Random <= 68*var(59)
trigger10 = (stateno = 650) && (movecontact) && Random <= 75*var(59)

[State AI: Fireball X]
type = ChangeState
value = 1100
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

[State AI: Fireball X]
type = ChangeState
value = 1110
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 110 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

[State AI: Fireball X]
type = ChangeState
value = 1200
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 90 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)
trigger5 = (stateno = 600) && (movecontact) && Random <= 68*var(59)
trigger6 = (stateno = 610) && (movecontact) && Random <= 68*var(59)
trigger7 = (stateno = 620) && (movecontact) && Random <= 75*var(59)
trigger8 = (stateno = 630) && (movecontact) && Random <= 68*var(59)
trigger9 = (stateno = 640) && (movecontact) && Random <= 68*var(59)
trigger10 = (stateno = 650) && (movecontact) && Random <= 75*var(59)

[State AI: Fireball X]
type = ChangeState
value = 1210
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 90 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)
trigger5 = (stateno = 600) && (movecontact) && Random <= 68*var(59)
trigger6 = (stateno = 610) && (movecontact) && Random <= 68*var(59)
trigger7 = (stateno = 620) && (movecontact) && Random <= 75*var(59)
trigger8 = (stateno = 630) && (movecontact) && Random <= 68*var(59)
trigger9 = (stateno = 640) && (movecontact) && Random <= 68*var(59)
trigger10 = (stateno = 650) && (movecontact) && Random <= 75*var(59)


;===========================================================================
;---------------------------------------------------------------------------
; A.I Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================
[State AI: Fireball X]
type = ChangeState
value = 3000
triggerall = Var(7) <= 0
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 65 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,25]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

[State AI: Fireball X]
type = ChangeState
value = 3050
triggerall = Var(7) <= 0
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
triggerall = power >= 1500
triggerall = Numhelper(3050) <= 0
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)
trigger5 = (stateno = 600) && (movecontact) && Random <= 68*var(59)
trigger6 = (stateno = 610) && (movecontact) && Random <= 68*var(59)
trigger7 = (stateno = 620) && (movecontact) && Random <= 75*var(59)
trigger8 = (stateno = 630) && (movecontact) && Random <= 68*var(59)
trigger9 = (stateno = 640) && (movecontact) && Random <= 68*var(59)
trigger10 = (stateno = 650) && (movecontact) && Random <= 75*var(59)

[State AI: Fireball X]
type = ChangeState
value = 3100
triggerall = Var(7) <= 0
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = P2Movetype != A
triggerall = power >= 2000
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = Random <= (355 * (var(59) ** 2 / 64.0))
trigger2 = statetype != A && ctrl
trigger2 = (P2BodyDist X = [0,75]) && !(enemy,ctrl)
trigger2 = Random <= (355 * (var(59) ** 2 / 64.0))
;============================`
;Combo attempts
;============================
trigger3 = (stateno = [200,299]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno = [400,499]) && (movecontact) && Random <= (499 * (var(59) ** 2 / 64.0))
trigger4 = (stateno != 420)

;===========================================================================
;---------------------------------------------------------------------------
; A.I Misc
;---------------------------------------------------------------------------
;===========================================================================

[State AI: Air Dash]
type = ChangeState
value = 101
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = var(22) = 0
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = P2StateType != L
triggerall = P2MoveType != A
triggerall = !inguarddist
triggerall = stateno != 110
triggerall = ctrl
trigger1 = p2bodydist X > 90 
trigger1 = Random <= (75 * (var(59) ** 2 / 64.0))

[State AI: AIR RECOVERY]
type = changestate
value = ifelse((pos y >= -20), 5200, 5210)
triggerall = (roundstate = 2) && (var(59) >=1)
triggerall = roundstate = 2 && stateno = 5050
triggerall = alive
triggerall = canrecover
trigger1 = vel y > -1
trigger1 = Random <= (599 * (var(59) ** 2 / 64.0))

; Recover AI by K.Y. Shanxi

[State AI: Recover from Hit FAll]
type = ChangeState
value = 5200 ;
triggerall = var(59) >= 3 && RoundState <= 2
triggerall = StateNo = 5050
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Random <= (500 * (var(59) ** 2 / 64.0))

[State AI: Recover from Hit FAll]
type = ChangeState
value = 5200 ;HITFALL_RECOVER
triggerall = var(59) >= 3 && RoundState <= 2
triggerall = StateNo = 5050
triggerall = Vel Y > 0
triggerall = Pos Y >= ifelse(enemynear,movetype = A, -10, -20)
triggerall = alive
trigger1 = Random <= (500 * (var(59) ** 2 / 64.0))
trigger1 = CanRecover

[State AI Misc: Recover Damn it!] ; Recover in While lying down
type = SelfState
triggerall = var(59) >= 2 && RoundState <= 2
triggerall = alive
trigger1 = stateno = 5110
trigger1 = Random <= (599 * (var(59) ** 2 / 64.0)) || var(59)>=6
trigger2 = stateno = 5100
trigger2 = Random <= (599 * (var(59) ** 2 / 64.0)) || var(59)>=6
value = 5120

