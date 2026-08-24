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
command.time = 20
command.buffer.time = 1

;-| Fatal Motions |---------------------------------------------------------
[Command]
name = "Fatality 1"   
command = ~D, DF, F, D, DB, B, x+y
time = 30

[Command]
name = "Fatality 2"   
command = ~D, DF, F, D, DB, B, a+b
time = 30

;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "Shotgun"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Super Shotgun"   
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "Minigun"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Double Pistol"   
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "Chainsaw"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Rocket Launcher"   
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "Plasma"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "BFG9000"   
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "Mancubus Flamer"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "Revenant Rockets"
command = ~D, DB, B, D, DB, B, c
time = 30

;-| Super Motions |------------------------------------------------------
[Command]
name = "Roll"
command = ~$B,$F, x
time = 20

[Command]
name = "Roll2"
command = ~$B,$F, y
time = 20

[Command]
name = "Rifle"
command = ~D, DF, F, x
time = 20

[Command]
name = "Rifle2"
command = ~D, DF, F, y
time = 20

[Command]
name = "Grenade"
command = ~D, DF, F, a
time = 20

[Command]
name = "Grenade2"
command = ~D, DF, F, b
time = 20

[Command]
name = "Rapid Fire"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "Rapid Fire2"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Knife"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Knife2"
command = ~F, DF, D, DB, B, y
time = 20

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "SuperJump"
command = ~D, U
time = 15

[Command]
name = "SuperJumpF"
command = ~D, UF
time = 15

[Command]
name = "SuperJumpB"
command = ~D, UB
time = 15

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
command = x+y
time = 1

[command]
name = "Counter"
command = y+b
time = 5

[command]
name = "Counter2"
command = a+b
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_s"
command = /$D,s
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

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

;===========================================================================

;Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; AI switch -> ON

[State -1, AI-On]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = !Var(59)
trigger1 = AILevel
var(59) = 1
ignorehitpause = 1

[State -1, AI-Off]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState != 2
triggerall = Var(59)
trigger1 = AILevel
var(59) = 0
ignorehitpause = 1

[State -1, Difficulty]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = Var(59)
var(58) = (Var(57)=1)*3+(Var(57)=2)*7+(Var(57)=3)*16+(Var(57)=4)*30+(Var(57)=5)*58+(Var(57)=6)*90+(Var(57)=7)*150+(Var(57)=8)*300
ignorehitpause = 1

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = !IsHelper
var(1) = 0
ignorehitpause = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = !IsHelper
trigger1 = MoveType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,230]) || (StateNo = [400,430]) || (StateNo = [600,630])
trigger2 = MoveContact
trigger3 = (StateNo = [1000,1020]) && AnimElemTime(3) > 0
trigger4 = StateNo = 1030
trigger5 = (StateNo = 1070) && MoveContact
trigger6 = (StateNo = 1071) && AnimElemTime(3) > 0
trigger7 = (StateNo = 1100) && AnimElemTime(4) > 0
var(1) = 1
ignorehitpause = 1

;===========================================================================

;-| Player |------------------------------------------------------------------

;---------------------------------------------------------------------------
;Pre-Fatality
[State -1, Pre-Fatality]
type = SelfState
value = 2999
triggerall = !IsHelper
triggerall = !Var(59) && (Var(55)=2)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
triggerall = EnemyNear,StateNo=10040 || (NumTarget=1 && !Target,IsHelper && Target,Life<=100)
trigger1 = Command = "Fatality 1" || Command = "Fatality 2"

;---------------------------------------------------------------------------
;Shotgun
[State -1, Shotgun]
type = SelfState
value = 2000
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 1500
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Shotgun"

;---------------------------------------------------------------------------
;Super Shotgun
[State -1, Super Shotgun]
type = SelfState
value = 2050
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 1500
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Super Shotgun"

;---------------------------------------------------------------------------
;Double Pistol
[State -1, Double Pistol]
type = SelfState
value = 2100
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Double Pistol"

;---------------------------------------------------------------------------
;Minigun
[State -1, Minigun]
type = SelfState
value = 2200
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Minigun"

;---------------------------------------------------------------------------
;Chainsaw
[State -1, Chainsaw]
type = SelfState
value = 2800
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Chainsaw"

;---------------------------------------------------------------------------
;Rocket Launcher
[State -1, Rocket Launcher]
type = SelfState
value = 2300
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 2500
triggerall = !NumHelper(2301)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = command = "Rocket Launcher"

;---------------------------------------------------------------------------
;Plasma
[State -1, Plasma]
type = SelfState
value = 2400
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 2500
triggerall = !NumHelper(2401)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = command = "Plasma"

;---------------------------------------------------------------------------
;BFG9000
[State -1, BFG9000]
type = SelfState
value = 2500
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 3000
triggerall = !NumHelper(2501) && !NumHelper(2502)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "BFG9000"

;---------------------------------------------------------------------------
;Mancubus Flamer
[State -1, Mancubus Flamer]
type = SelfState
value = 2600
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 3000
triggerall = !NumHelper(2601)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = command = "Mancubus Flamer"

;---------------------------------------------------------------------------
;Revenant Rockets
[State -1, Revenant Rockets]
type = SelfState
value = 2700
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Power >= 3000
triggerall = !NumHelper(2701) && !NumHelper(2702)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || (((StateNo=[200,440]) || (StateNo=[1000,1080])) && (MoveContact || Var(1)))
trigger1 = Command = "Revenant Rockets"

;---------------------------------------------------------------------------
;Rifle
[State -1, Rifle]
type = SelfState
value = 1000
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1001)
triggerall = StateType = S
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || var(1)))
trigger1 = Command = "Rifle"
trigger2 = Command = "Rifle2"

;---------------------------------------------------------------------------
;Rifle (Crouching)
[State -1, Rifle (Crouching)]
type = SelfState
value = 1010
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1001)
triggerall = StateType = C
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || var(1)))
trigger1 = Command = "Rifle"
trigger2 = Command = "Rifle2"

;---------------------------------------------------------------------------
;Rifle(Mid-air)
[State -1, Rifle (Mid-air)]
type = SelfState
value = 1020
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1001)
triggerall = StateType = A
triggerall = Ctrl || (StateNo=101) || ((StateNo=[600,640]) && (MoveContact || Var(1)))
trigger1 = Command = "Rifle"
trigger2 = Command = "Rifle2"

;---------------------------------------------------------------------------
;Rapid Fire
[State -1, Rapid Fire]
type = SelfState
value = 1005
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1001)
triggerall = StateType != A
triggerall = Power >= 500
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = Command = "Rapid Fire"
trigger2 = Command = "Rapid Fire2"

;---------------------------------------------------------------------------
;Grenade
[State -1, Grenade]
type = SelfState
value = 1050
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1051)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = Command = "Grenade"
trigger2 = Command = "Grenade2"

;---------------------------------------------------------------------------
;Knife Punisher
[State -1, Knife Punisher]
type = SelfState
value = 1060
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = Command = "Knife"
trigger2 = Command = "Knife2"

;---------------------------------------------------------------------------
;Roll
[State -1, Roll]
type = SelfState
value = 1070
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = !NumHelper(1001)
triggerall = StateType != A
triggerall = Ctrl || (StateNo=101) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = Command = "Roll"
trigger2 = Command = "Roll2"

;---------------------------------------------------------------------------
;Round kick
[State -1, Round kick]
type = SelfState
value = 1310
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "x" || Command = "y" || Command = "z"
trigger1 = StateNo = 100

;---------------------------------------------------------------------------
;Sliding kick
[State -1, Sliding kick]
type = SelfState
value = 1300
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = StateType != A
triggerall = Command = "a" || Command = "b" || Command = "c"
trigger1 = StateNo = 100

;---------------------------------------------------------------------------
;Counter
[State -1]
type = SelfState
value = IfElse(StateType!=A,1100,1200)
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "Counter" || Command = "Counter2"
triggerall = Ctrl
trigger1 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
trigger2 = MoveType = H && (Var(30) >= 5)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = SelfState
value = 100
triggerall = !IsHelper
triggerall = !Var(59)
trigger1 = Command = "FF"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = SelfState
value = 105
triggerall = !IsHelper
triggerall = !Var(59)
trigger1 = Command = "BB"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = SelfState
value = 195
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = StateType != A
triggerall = Command = "start"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = SelfState
value = 800+(Random%6*10)
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "y"
triggerall = StateType = S
triggerall = Ctrl
triggerall = StateNo != 100
trigger1 = command = "holdfwd"
trigger1 = P2BodyDist X < 3
trigger1 = (EnemyNear,StateType != A)
trigger1 = EnemyNear,MoveType != H
trigger2 = Command = "holdback"
trigger2 = P2BodyDist X < 5
trigger2 = (EnemyNear,StateType != A)
trigger2 = EnemyNear,MoveType != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = SelfState
value = 200
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "x" || Command = "a"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = SelfState
value = 210
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "y" || Command = "b"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Standing Strong Punch
[State -1, Strong Punch]
type = SelfState
value = 230
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "z" || Command = "c"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = SelfState
value = 400
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "x" || Command = "a"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = SelfState
value = 410
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "y" || Command = "b"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Punch]
type = SelfState
value = 430
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "z" || Command = "c"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [200,499]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = SelfState
value = 600
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "x" || Command = "a"
trigger1 = StateType = A
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [600,699]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = SelfState
value = 610
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "y" || Command = "b"
trigger1 = StateType = A
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [600,699]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Punch]
type = SelfState
value = 630
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "z" || Command = "c"
trigger1 = StateType = A
trigger1 = Ctrl || (StateNo=101)
trigger2 = StateNo = [600,699]
trigger2 = MoveContact || MoveType = I

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = SelfState
value = 65
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "SuperJump"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Super Jump - front
[State -1, Super Jump - front]
type = SelfState
value = 66
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "SuperJumpF"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Super Jump - back
[State -1, Super Jump - back]
type = SelfState
value = 67
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Command = "SuperJumpB"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Wall Jump
[State -1, State]
type = SelfState
value = 60
triggerall = !IsHelper
triggerall = !Var(59)
triggerall = Ctrl
triggerall = StateType = A
triggerall = Command = "holdup"
triggerall = Pos Y <= -50
trigger1 = Command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = Command = "holdback"
trigger2 = FrontEdgeBodyDist <= 0