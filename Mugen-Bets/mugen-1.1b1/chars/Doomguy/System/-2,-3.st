[Statedef -2]

[State -2]
type = DisplayToClipboard
trigger1 = !IsHelper
text = "\Talk:%d, Weapon:%d, Move:%d, Janitor:%d, Armor:%d, Fatal:%d"
params = (var(20)),(var(21)),(var(22)),(var(45)),(var(50)),(var(55))
ignorehitpause = 1

[State -2]
type = AppendToClipboard
trigger1 = !IsHelper&&NumEnemy
text = "\ne-state:%d, e-life:%d, e-Anim:%d, e-Time:%d, e-Helper:%d"
params = (EnemyNear,StateNo),(EnemyNear,Life),(Enemy,Anim),(Enemy,Time),(Enemy,NumHelper)
ignorehitpause = 1

[State -2]
type = AssertSpecial
trigger1 = !IsHelper
flag = NoJuggleCheck
flag2 = NoKoSlow
ignorehitpause = 1

[State -2]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = StateNo = [2000,3999]
flag = TimerFreeze
ignorehitpause = 1

[State -2]
type = AssertSpecial
triggerall = !IsHelper
triggerall = RoundState>=2
trigger1 = Alive
trigger1 = StateNo!=[180,189]
trigger1 = StateNo!=170
flag = RoundNotOver
ignorehitpause = 1

[State -2, AI]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Var(59)
flag = NoWalk
ignorehitpause = 1

[State -2, AI]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Var(59) 
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignorehitpause = 1

;------------------------------------------------
[State -2, Attribute Var]
type = VarSet
triggerall = !IsHelper
trigger1 = NumEnemy && Enemy,MoveType = H
fvar(20) = Enemy,GetHitVar(HitCount)

[State -2, Attribute Var]
type = VarSet
triggerall = !IsHelper
triggerall = FVar(20) != 0
trigger1 = Enemy,MoveType != H
trigger2 = Enemy,Stateno = [150,155]
trigger3 = Enemy,Stateno = [5200,5201]
fvar(20) = 0

[State -2, Dampener]
type = AttackMulSet
triggerall = !IsHelper
triggerall = Alive
triggerall = StateNo<1000
trigger1 = FVar(20)<10
value = 0.00001*IfElse(Enemy,Const(Data.Defence)>100,Enemy,Const(Data.Defence),100)*IfElse(Enemy,Const(Data.Life)>1000,Enemy,Const(Data.Life),1000)*(0.5+(0.5-(0.05*(FVar(20)))))

[State -2, Dampener]
type = AttackMulSet
triggerall = !IsHelper
triggerall = Alive
triggerall = StateNo<1000
trigger1 = FVar(20)>=10
value = 0.00001*IfElse(Enemy,Const(Data.Defence)>100,Enemy,Const(Data.Defence),100)*IfElse(Enemy,Const(Data.Life)>1000,Enemy,Const(Data.Life),1000)*0.5

[State -2, Dampener]
type = AttackMulSet
triggerall = !IsHelper
triggerall = Alive
trigger1 = StateNo>=1000
value = 0.00001*IfElse(Enemy,Const(Data.Defence)>100,Enemy,Const(Data.Defence),100)*IfElse(Enemy,Const(Data.Life)>1000,Enemy,Const(Data.Life),1000)

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = !IsHelper
triggerall = !Var(50)&& Var(57)>6
triggerall = Alive && MoveType = H
trigger1 = (FVar(22)-Life)>0
value = Floor((0.5-1.0)*IfElse((FVar(22)-Life)<Life,-(FVar(22)-Life),0))

[State -2, ComboDefese]
type = VarSet
triggerall = !IsHelper
trigger1 = Var(57)>6
fvar(22) = Life
ignorehitpause = 1

;------------------------------------------------
[State -2]
type = VarAdd
triggerall = !IsHelper
trigger1 = !Alive
trigger1 = Var(8)<2
var(8) = 1

[State -2]
type = VarSet
triggerall = !IsHelper
trigger1 = Alive
var(8) = 0

[State -2, Assert]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = RoundState > 1
trigger1 = LoseTime = 1
flag = NoKoSnd

[State -2, Death Scream]
type = PlaySnd
triggerall = !IsHelper
trigger1 = Roundstate > 2
trigger1 = !Alive
trigger1 = Var(8) = 1
value = S11,1+(!Var(20))
channel = 0
volumescale = 255

;------------------------------------------------
[State -2, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(25)=1
value = ,AT
time = 1
ignorehitpause = 1

[State -2, NHB]
type = NotHitBy
triggerall = !IsHelper
trigger1 = Var(25)=2
value = ,AP,AT
time = 1
ignorehitpause = 1

[State -2, Override]
type = HitOverride
triggerall = !IsHelper
trigger1 = Var(25)
attr = SCA,AA,AP,AT
slot = 1
stateno = 5000
time = -1

[State -2, Pan]
type = SndPan
trigger1 = !IsHelper
channel = 0
abspan = 0
ignorehitpause = 1

[State -2, Remove]
type = RemoveExplod
triggerall = !IsHelper
triggerall = NumExplod(3606)=1
triggerall = !Var(40)
trigger1 = StateNo!=3600
id = 3606

[State -2, Remove]
type = RemoveExplod
triggerall = !IsHelper
triggerall = NumExplod(6475)=1
triggerall = !Var(40)
trigger1 = StateNo!=3600
id = 6475

[State -2, Remove]
type = RemoveExplod
triggerall = !IsHelper
triggerall = NumExplod(6555)=1
triggerall = !Var(40)
trigger1 = StateNo!=3550
id = 6555

[State -2, Afterimage Remover]
type = AfterImageTime
triggerall = !IsHelper
trigger1 = MoveType = H
trigger2 = StateNo = [0,40]
trigger3 = StateNo = [52,199]
trigger4 = (StateNo = [200,749]) && PrevStateNo != 50
trigger5 = Stateno = [5000,5999]
time = 0

[State -2, PalFX Remover]
type = PalFX
triggerall = !IsHelper
trigger1 = MoveType = H
trigger2 = StateNo = [0,40]
trigger3 = StateNo = [52,199]
trigger4 = (StateNo = [200,749]) && PrevStateNo != 50
trigger5 = Stateno = [5000,5999]
time = 0

;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Var]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState=2
trigger1 = Var(50) && Var(51)<=0
var(50) = 0
ignorehitpause = 1

[State -3, Var]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState=1
trigger1 = Var(50)=1
var(51) = 250
ignorehitpause = 1

[State -3, Var]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState=1
trigger1 = Var(50)=2
var(51) = 500
ignorehitpause = 1

[State -3, Var]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState=1
trigger1 = Var(50)=3
var(51) = 750
ignorehitpause = 1

[State -3, Var]
type = VarAdd
triggerall = !IsHelper
triggerall = Var(50) && Var(51)>0
triggerall = Alive && MoveType = H
trigger1 = GetHitVar(HitCount) >= 1 && GetHitVar(Damage)
var(51) = Floor(-0.5*GetHitVar(Damage))
ignorehitpause = 1

[State -3, Protect]
type = LifeAdd
triggerall = !IsHelper
triggerall = Var(50) && Var(51)>0
trigger1 = GetHitVar(HitCount) >= 1 && GetHitVar(Damage)
value = Floor(0.7*GetHitVar(Damage))
ignorehitpause = 1

[State -3, Armor Helper]
type = Helper
triggerall = !Ishelper && Alive
triggerall = RoundState>=1
triggerall = !NumHelper(7000)
trigger1 = Var(50)
ID = 7000
stateno = 7000
name = "Armor"
keyctrl = 0
ownpal = 1
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

;AI
;------------------------------------------------ AI Helper
[State -3, Ai Helper]
type = Helper
triggerall = PlayerIDExist(ID)
triggerall = !Ishelper && Alive
triggerall = Var(59) && RoundState = 2
trigger1 = !NumHelper(9999)
ID = 9999
stateno = 9999
name = "AI Helper"
pos = 0,0
keyctrl = 0
ownpal = 1
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[State -3, Fatality Helper]
type = Helper
triggerall = !Ishelper && Alive && Var(55)=2
triggerall = RoundState=2 && RoundNo>1
triggerall = Enemy,ALive && Enemy,Life < 100
trigger1 = !NumHelper(8000)
ID = 8000
stateno = 8000
name = "Fatality"
pos = 0,0
keyctrl = 0
ownpal = 1
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

;AI
;------------------------------------------------ Miscs
[State -3, Run/Walk Forward]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A && (Random<Var(58)*1.2)
triggerall = !InGuardDist && !EnemyNear,NumProj
triggerall = (P2Dist X > 0) && (P2BodyDist X = [20,100])
trigger1 = Ctrl && EnemyNear,StateType = L
value = IfElse(P2BodyDist X >60,20,100)

[State -3, Run Forward]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A
triggerall = !InGuardDist && !EnemyNear,NumProj
triggerall = (P2Dist X > 0) && (Random<Var(58)*1.2)
triggerall = Ctrl || StateNo = 10 || StateNo = 12 || StateNo = 5120 && AnimTime = -1
trigger1 = P2BodyDist X > 190 && EnemyNear,MoveType != A
trigger2 = P2BodyDist X > 160 && EnemyNear,StateType = L
trigger3 = EnemyNear,StateType != A && EnemyNear,MoveType != A
trigger3 = EnemyNear,StateType != L
trigger3 = P2BodyDist X = [140,170]
trigger4 = P2BodyDist X = [80,140]
trigger4 = EnemyNear,StateNo = [120,152]
value = 100

[State -3, Run Forward]
type = SelfState
triggerall = !IsHelper && Power < 500
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A
triggerall = !EnemyNear,NumProj && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && (Random<Var(58)*1.1)
triggerall = (P2BodyDist X = [80,120]) && (P2BodyDist Y = [-80,0])
trigger1 = (StateNo = [210,299]) || (StateNo = [410,499])
trigger1 = MoveContact
value = 100

[State -3, Short Jump]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = EnemyNear,StateType != L
trigger1 = EnemyNear,StateType != A
trigger1 = EnemyNear,MoveType != A && !Enemy,NumProj
trigger1 = P2BodyDist X = [90,150]
trigger1 = Random<Var(58)*1.0
value = 61

[State -3, Normal Jump]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = EnemyNear,StateType != A
trigger1 = EnemyNear,StateType != L
trigger1 = EnemyNear,MoveType != H
trigger1 = EnemyNear,Vel X < 0
trigger1 = P2BodyDist X = [105,115]
trigger1 = Random<Var(58)*1.2
trigger2 = EnemyNear,StateType != A
trigger2 = EnemyNear,StateType != L
trigger2 = EnemyNear,MoveType != H
trigger2 = P2BodyDist X = [110,115]
trigger2 = EnemyNear,Vel X >= 0
trigger2 = Random<Var(58)*1.2
trigger3 = PrevStateNo = 430
trigger3 = EnemyNear,MoveType = H
trigger3 = Random<Var(58)*1.1
trigger4 = P2BodyDist X = [115,140]
trigger4 = EnemyNear,StateType != A && EnemyNear,MoveType = A
value = 40

[State -3, Long Jump]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A
triggerall = EnemyNear,MoveType = A
triggerall = Ctrl
trigger1 = EnemyNear,StateType != L
trigger1 = EnemyNear,MoveType != H
trigger1 = Random<Var(58)*1.2
trigger1 = P2BodyDist X = [150,160]
trigger2 = BackEdgeBodyDist <= 30
trigger2 = EnemyNear,StateType = L
trigger2 = P2BodyDist X < 55
trigger2 = Random<Var(58)*1.3
value = 62

[State -3, Roll]
type = SelfState
triggerall = !IsHelper && (EnemyNear,StateNo!=10040)
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3) && (Var(57)>2)
triggerall = StateType != A && !NumHelper(1001) && (Random<Var(58)*1.2)
triggerall = Ctrl || (StateNo = [120,149])
triggerall = P2Dist X > 0 && P2BodyDist X >= 90
trigger1 = EnemyNear,Alive && EnemyNear,StateType = A && EnemyNear,MoveType = H
trigger2 = Facing != EnemyNear,Facing || P2Dist X <= 0
trigger2 = EnemyNear,Alive && EnemyNear,StateType != L && EnemyNear,MoveType = A && !EnemyNear,Ctrl
value = 1070

[State -1, Taunt]
type = SelfState
triggerall = !IsHelper
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A && EnemyNear,StateType = L
triggerall = Random<Var(58)*1.2
triggerall = Life > P2Life && Life > 250
triggerall = Ctrl && StateNo != [190,199]
trigger1 = P2BodyDist X > 105
value = 195

;------------------------------------------------ Guards
[State -3, Defens]
type = SelfState
triggerall = !IsHelper && (EnemyNear,StateNo!=10040)
triggerall = (RoundState = 2) && (Var(59)) && (Var(25)!=3) && (Var(57)>2)
triggerall = (Ctrl) && StateNo != [120,155]
trigger1 = InGuardDist || Enemy,MoveType = A
trigger1 = Facing=-EnemyNear,Facing
trigger2 = !InGuardDist || Enemy,MoveType = A
trigger2 = Facing*EnemyNear,Facing*((EnemyNear,Pos X-Pos X)*Facing)=[0,40]
value = 120

;------------------------------------------------ Commons
[State -3, Standing Light Kick]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.0) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && (P2BodyDist X = [0,40]) && (P2BodyDist Y = [-20,0])
trigger1 = Ctrl || StateNo = 52
value = 200

[State -3, Standing Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.0) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && (P2BodyDist X = [10,40]) && (P2BodyDist Y = [-20,0])
trigger1 = Ctrl || StateNo = 52
trigger1 = EnemyNear,StateType = S
trigger2 = StateNo = 200
trigger2 = MoveGuarded
value = 210

[State -3, Standing Hard Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.2) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && (P2BodyDist X < 50) && (P2BodyDist Y =[-40,0])
trigger1 = Ctrl || StateNo = 52
trigger1 = P2BodyDist X = [50,70]
trigger2 = StateNo = 200 || StateNo = 400
trigger2 = P2BodyDist X < 30
trigger2 = MoveHit
trigger3 = StateNo = 210 || StateNo = 410
trigger3 = P2BodyDist X = [15,75]
trigger3 = MoveHit
value = 230

[State -3, Crouching Light Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.0) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != A && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && P2BodyDist X = [0,30]
trigger1 = Ctrl || StateNo = 52
trigger2 = Stateno = 200 && MoveContact
value = 400

[State -3, Crouching Hard Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.0) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != A && EnemyNear,StateType != L
triggerall = (P2Dist X > 0) && (P2BodyDist X = [25,35])
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 400 && MoveContact
value = 410

[State -3, Crouching Hard Kick]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (Random<Var(58)*1.2) && Power < 2000
triggerall = StateType != A && EnemyNear,StateType != A
triggerall = (P2Dist X > 0) && EnemyNear,StateType != L
trigger1 = Ctrl
trigger1 = (P2BodyDist X = [40,55])
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 400 || StateNo = 410
trigger2 = (P2BodyDist X = [50,60]) && MoveContact
value = 430

[State -3, Air Light Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (StateType = A) && (Random<Var(58)*1.0)
triggerall = (P2Dist X > 0) && (P2BodyDist X < 65) && (P2BodyDist Y =[-40,40])
trigger1 = Ctrl
trigger2 = PrevStateNo = 40 || PrevStateNo = [61,62]
value = 600

[State -3, Air Hard Punch]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (StateType = A) && (Random<Var(58)*1.0)
triggerall = (P2Dist X > 0) && (P2BodyDist X < 70) && (P2BodyDist Y =[-20,40])
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
value = 610

[State -3, Air Hard Kick]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (StateType = A) && (Random<Var(58)*1.1)
triggerall = (P2Dist X > 0) && (P2BodyDist X < 70) && (P2BodyDist Y =[-40,30])
trigger1 = Ctrl
trigger2 = StateNo = 610 && MoveContact
value = 630

[State -3, Throw]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (StateType != A) && (Random<Var(58)*1.0)
triggerall = (P2Dist X > 0) && (P2BodyDist X < 20)
triggerall = EnemyNear,StateType != A && EnemyNear,Movetype != H
trigger1 = Ctrl && Enemy,StateNo != 5120
value = 800+(Random%6*10)

;------------------------------------------------ Supers
[State -3, Rifle]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = (StateType != A) && (Random<Var(58)*1.2)
triggerall = EnemyNear,StateType != L
triggerall = P2Dist X > 0 && (P2BodyDist X = [80,270]) &&(P2BodyDist Y > -50)
trigger1 = Ctrl
value = IfElse(EnemyNear,StateType != C,1000,1010)

[State -3, Rifle Rapid fire]
type = SelfState
triggerall = !IsHelper && Power >= 500
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.4)
triggerall = EnemyNear,StateType != L
triggerall = P2Dist X > 0 && (P2BodyDist X = [60,120])
trigger1 = Ctrl
value = 1005

[State -3, Air Rifle]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType = A && (Random<Var(58)*1.2)
triggerall = (P2Dist X > 0) && (P2BodyDist X < 70) && (P2BodyDist Y =[-40,45])
triggerall = EnemyNear,MoveType = H
trigger1 = Ctrl
trigger2 = StateNo = 610 && MoveContact
trigger3 = StateNo = 630 && MoveContact
value = 1020

[State -3, Air Rifle]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType = A && (Random<Var(58)*1.2)
triggerall = (P2Dist X > 0) && ((P2BodyDist X)*1.5 < P2BodyDist Y)
triggerall = (P2BodyDist X > 30) && (P2BodyDist Y > 15)
trigger1 = PrevStateNo = 40 && Time >= 8
value = 1020

[State -3, Grenade]
type = SelfState
triggerall = !IsHelper && !NumHelper(1051)
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.4)
triggerall = EnemyNear,StateType != L
triggerall = P2Dist X > 0 && (P2BodyDist X = [60,160]) && (P2BodyDist Y > -50)
trigger1 = Ctrl
value = 1050

[State -3, Grenade]
type = SelfState
triggerall = !IsHelper && !NumHelper(1051)
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.2)
triggerall = EnemyNear,StateType != L
triggerall = P2Dist X > 0 && P2BodyDist Y > -30
trigger1 = Ctrl && (P2BodyDist X = [25,70])
trigger2 = (StateNo = [210,299]) || (StateNo = [410,499])
trigger2 = StateNo != 430 && MoveContact
trigger2 = (P2BodyDist X = [10,50])
value = 1050

[State -3, Knife Counter]
type = SelfState
triggerall = !IsHelper && (EnemyNear,StateNo!=10040)
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && Var(57)>4
triggerall = (StateType != A) && (Ctrl) && (Random<Var(58)*1.4)
trigger1 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
trigger1 = (P2Dist X > 0) && (P2BodyDist X <= 50)
value = 1060

;------------------------------------------------ Hypers
[State -3, Chainsaw]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.4) && (Power = [2000,3000])
triggerall = EnemyNear,StateType != L && EnemyNear,StateNo != [5100,5120]
triggerall = (P2Dist X > 0) && (P2BodyDist X = [30,120])
triggerall = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = EnemyNear,StateType != A
trigger2 = EnemyNear,Vel Y > 0 && EnemyNear,Pos Y = [-70,-10]
trigger3 = StateNo != 230 && MoveHit
trigger3 = EnemyNear,StateNo != [120,159]
value = 2800

[State -3, Shotgun/Super Shotgun]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.4) && (Power = [1500,2000])
triggerall = EnemyNear,StateType != L
triggerall = (P2Dist X > 0)
triggerall = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = (P2BodyDist X = [50,255])
trigger2 = StateNo != 230 && MoveHit
trigger2 = EnemyNear,StateNo != [120,159]
trigger3 = P2BodyDist X = [15,85]
trigger3 = Enemy,HitDefAttr = SC,NA,SA
value = IfElse(Random%2=0,2000,2050)

[State -3, Minigun/Plasma]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.5) && (Power = [2000,3000])
triggerall = EnemyNear,StateType != L && EnemyNear,StateType != A
triggerall = (P2Dist X > 0)
triggerall = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger1 = (P2BodyDist X = [80,240]) && (EnemyNear,Pos Y = [-70,0])
trigger2 = EnemyNear,MoveType = A && !EnemyNear,Ctrl
trigger2 = (P2BodyDist X > 120) && (EnemyNear,Pos Y = [-70,0])
trigger3 = !EnemyNear,Ctrl && (EnemyNear,StateNo != [120,153])
trigger3 = (P2BodyDist X > 120) && (EnemyNear,Pos Y = [-70,0])
value = IfElse(Random%2=0,2200,2400)

[State -3, Rocket launcher]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.5) && (Power = [2000,3000])
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != 5050 && EnemyNear,StateNo != 5060 && EnemyNear,StateNo != 5110 && EnemyNear,StateNo != 5120
triggerall = (P2Dist X > 0) && (P2BodyDist X = [50,300]) && (EnemyNear,Pos Y = [-10,0])
trigger1 = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
value = 2300

[State -3, BFG]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.6) && (Power = [2000,3000])
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != 5050 && EnemyNear,StateNo != 5060 && EnemyNear,StateNo != 5110 && EnemyNear,StateNo != 5120
triggerall = (P2Dist X > 0) && (P2BodyDist X > 80) && (EnemyNear,Pos Y = [-40,0])
trigger1 = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
value = 2500

[State -3, Flamer/Revenant]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)!=3) && (EnemyNear,StateNo!=10040)
triggerall = StateType != A && (Random<Var(58)*1.6) && (Power = [2000,3000])
triggerall = EnemyNear,StateType != L && EnemyNear,StateType != A
triggerall = (P2Dist X > 0) && (P2BodyDist X = [25,200])
trigger1 = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
value = IfElse(Random%2=0,2600,2700)

[State -3, Fatalities]
type = SelfState
triggerall = !IsHelper && (Var(55)=2)
triggerall = RoundState = 2 && RoundNo>1 && (Var(59)) && (Var(25)!=3)
triggerall = StateType != A && (Random<Var(58)*1.4)
triggerall = EnemyNear,StateType != L && EnemyNear,StateType != A
triggerall = (P2Dist X > 0) && (P2BodyDist X = [0,250])
triggerall = EnemyNear,Life<=100
trigger1 = Ctrl || (StateNo = 52) || ((StateNo=101)) || ((StateNo=[200,440]) && (MoveContact || Var(1)))
trigger2 = Ctrl && EnemyNear,StateNo=10040
value = 2999

;------------------------------------------------ Combo Breakers
[State -3, Combo Counter Add]
type = VarAdd
triggerall = !IsHelper
triggerall = !Time
trigger1 = MoveType = H
var(30) = 1
ignorehitpause = 1

[State -3, Combo Counter Reset]
type = VarSet
triggerall = !IsHelper
trigger1 = MoveType != H
var(30) = 0
ignorehitpause = 1

[State -3, NotHitBy]
type = NotHitBy
triggerall = !IsHelper
triggerall = (Var(30) > 5) 
trigger1 = Var(59) && Var(57)>5 && (!Var(55))
value = SA,AA
time = 20
ignorehitpause = 1

[State -3, Ground Counter]
type = SelfState
triggerall = !IsHelper
triggerall = Var(59) && Var(57)>5
triggerall = P2BodyDist X <= 100 && StateType !=A
triggerall = (Var(30) >= 5) && (!Lose)
trigger1 = !Time
value = 1100
ignorehitpause = 1

[State -3, Air Counter]
type = SelfState
triggerall = !IsHelper
triggerall = Var(59) && Var(57)>5
triggerall = P2BodyDist X <= 100 && StateType = A
triggerall = (Var(30) >= 5) && (!Lose)
trigger1 = !Time
value = 1200
ignorehitpause = 1

;------------------------------------------------Pseudo Fatality
[State -3, Rip-Helper]
type = Helper
triggerall = !IsHelper
triggerall = Enemy,StateNo = 10000
trigger1 = !NumHelper(10010)
name = "Rip apart"
ID = 10010
stateno = 10010
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3, Burn-Helper]
type = Helper
triggerall = !IsHelper
triggerall = Enemy,StateNo = 10001
trigger1 = !NumHelper(10013)
name = "Burning skeleton"
ID = 10013
stateno = 10013
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3, Melting-Helper]
type = Helper
triggerall = !IsHelper
triggerall = Enemy,StateNo = 10002
trigger1 = !NumHelper(10015)
name = "Melting"
ID = 10015
stateno = 10015
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

;------------------------------------------------ Anti-Cheap
[State -3, Var]
type = VarSet
triggerall = !IsHelper && Var(59)
triggerall = !Var(25) && Alive
trigger1 = Enemy,Name = "Constans II"
trigger2 = Enemy,Name = "Lucy Diclonius by Crucifix"
trigger3 = Enemy,Name = "Haruhi Suzumiya"
trigger4 = Enemy,Name = "Tomoe Mami"
trigger5 = Enemy,Name = "Kyo Fate"
trigger6 = Enemy,Name = "Ella"
trigger7 = Enemy,Name = "Darkriel Akiyami"
trigger8 = Enemy,AuthorName = "ONI-MIKO"
trigger9 = Enemy,AuthorName = "The Necromancer"
trigger10 = Enemy,AuthorName = "Geros"
var(25) = 1
ignorehitpause = 1

[State -3, Var]
type = VarSet
triggerall = !IsHelper && Var(59)
triggerall = !Var(25) && Alive
trigger1 = Enemy,Name = "isabeau"
trigger2 = Enemy,Name = "Light Iruin"
trigger3 = Enemy,Name = "kfm-ultra"
trigger4 = Enemy,AuthorName = "Player-One & NexT One"
trigger5 = Enemy,AuthorName = "BigChoppa and BigSally"
trigger6 = Enemy,AuthorName = "Heal_The_World"
trigger7 = Enemy,AuthorName = "Precious_QingQing"
trigger8 = Enemy,AuthorName = "KILL,Nether,2BE"
var(25) = 2
ignorehitpause = 1

[State -3, Var]
type = VarSet
triggerall = !IsHelper
triggerall = !Var(25) && Alive
trigger1 = EnemyNear,Name = "Broly  super saiyen nv3" || EnemyNear,Name = "Broly 'le cauchemar' super saiyen nv3"
trigger2 = EnemyNear,Name = "Dark Chun Li"
trigger3 = EnemyNear,Name = "Dark Hikari Reiko"
trigger4 = EnemyNear,Name = "Eternal SailorMoon"
trigger5 = EnemyNear,Name = "Goku Ultra Instinct" && EnemyNear,PalNo >= 10
trigger6 = EnemyNear,Name = "Insane Sunset shimmer"
trigger7 = EnemyNear,Name = "Kadelioscope"
trigger8 = EnemyNear,Name = "Mech-HISUIX" || EnemyNear,Name = "mechhisuiex"
trigger9 = EnemyNear,Name = "Nameless One"
trigger10 = EnemyNear,Name = "n-ri_ssj9"
trigger11 = EnemyNear,Name = "NyanCat" && Enemy,AuthorName = "Yogurty14"
trigger12 = EnemyNear,Name = "OmegaTH" || EnemyNear,Name = "Omega Tom Hanks"
trigger13 = EnemyNear,Name = "ore_no_moto_yome"
trigger14 = EnemyNear,Name = "Gogeta-SSJ4 by Pocket_Danyell"
trigger15 = EnemyNear,Name = "Goku super saiyajin 5"
trigger16 = EnemyNear,Name = "Legendary Ryu"
trigger17 = EnemyNear,Name = "Perfect Weapon MB-02"
trigger18 = EnemyNear,Name = "Psycho Shredder[S]"
trigger19 = EnemyNear,Name = "Rainbow Factory"
trigger20 = EnemyNear,Name = "Rare Akuma"
trigger21 = EnemyNear,Name = "saitama"
trigger22 = EnemyNear,Name = "seph"
trigger23 = EnemyNear,Name = "Shiny Diamond"
trigger24 = EnemyNear,Name = "Sonic.exe"
trigger25 = EnemyNear,Name = "son Goku by FRS GAMES"
trigger26 = EnemyNear,Name = "SSJ God Goku Z2"
trigger27 = EnemyNear,Name = "SSJ2-GOKU by BARDOCK"
trigger28 = EnemyNear,Name = "Super Dizzy" || EnemyNear,Name = "Omni-Psych Super Dizzy Lv 3" || EnemyNear,Name = "Omni-Psych Super Dizzy [LE] Version 3"
trigger29 = EnemyNear,Name = "Trollface" && Enemy,AuthorName = "Yogurty14"
trigger30 = EnemyNear,Name = "Ultimate Sula"
trigger31 = EnemyNear,Name = "US Morrigan"
var(25) = 3
ignorehitpause = 1

[State -3, Hyper]
type = SelfState
triggerall = !IsHelper
triggerall = RoundState = 2 && (Var(59)) && (Var(25)=3)
triggerall = EnemyNear,Alive && StateNo != [3900,3901]
trigger1 = RoundState=2 && !Win
value = 3900

;------------------------------------------------ Power
[State -3, AI Power]
type = PowerAdd
triggerall = !IsHelper
triggerall = Alive && RoundState = 2
triggerall = Var(59) && Var(57)>5
trigger1 = Power!=PowerMax
value = IfElse(MoveType=A,2,1)
ignorehitpause = 1

[State -3, AI Power]
type = PowerAdd
triggerall = !IsHelper
triggerall = Alive && RoundState = 2
triggerall = Var(59) && Var(57)=[3,5]
triggerall = MoveType = A && MoveHit
triggerall = StateNo != [2000,3000]
trigger1 = Power!=PowerMax
value = EnemyNear,GetHitVar(Damage)
ignorehitpause = 1

[State -3, Player Power]
type = PowerAdd
triggerall = !IsHelper
triggerall = Alive && RoundState = 2
triggerall = !Var(59)
trigger1 = Power!=PowerMax
value = IfElse(Life<250,2,EnemyNear,GetHitVar(Damage))
ignorehitpause = 1

;------------------------------------------------ Common
[State -3, P2 Safe Fall]
type = TargetState
triggerall = !IsHelper
trigger1 = NumTarget=1
trigger1 = Target,Command="recovery"
trigger1 = Target,Pos y>=-20 && Target,Vel y>0
trigger1 = Target,Alive && Target,HitFall && Target,GetHitVar(Fall.Recover)
trigger1 = Target,StateNo=5030 || Target,StateNo=5035 || Target,StateNo=5050 || Target,StateNo=5071
value = 5205
ignorehitpause = 1

[State -3, P2 Facing]
type = TargetFacing
triggerall = !IsHelper
trigger1 = MoveContact=1 && NumTarget=1
trigger1 = !(Target,HitShakeOver) && !(Target,HitFall) && (Target,Time<=1)
value = IfElse(P2Dist x>=0,-1,1)
ignorehitpause = 1

[State -3, Prevent Undergound Juggles]
type= TargetBind
triggerall = !IsHelper
trigger1 = MoveHit=1
trigger1 = NumTarget=1 && NumEnemy
trigger1 = (Target,Time<=1) && (Target,ID=EnemyNear,ID)
trigger1 = !(Target,HitShakeOver) && (Target,HitFall) && (Target,Pos y>0)
pos = Ceil(P2Dist x),Ceil(-Pos y)
ignorehitpause = 1

[State -3, Variable Height]
type = PlayerPush
triggerall = !IsHelper
triggerall = StateType=A && MoveType!=H && NumEnemy
triggerall = P2BodyDist x = [-(EnemyNear,Const(Size.Ground.Back)+EnemyNear,Const(Size.Ground.Front)),0]; checks if both characters are within each other's width
trigger1 = P2StateType=S
trigger1 = P2Dist y >= (EnemyNear,Const(Size.Height) - 22)
trigger2 = P2StateType=C
trigger2 = P2Dist y >= (EnemyNear,Const(Size.Height) - 48)
trigger3 = P2StateType=L
trigger3 = P2Dist y >= 11
value = 0
ignorehitpause = 1

[State -3, Superpause Check]
type = VarAdd
triggerall = !IsHelper
trigger1 = Var(6)
var(6) = -1

[State -3, Reset Time counter]
type = VarSet
triggerall = !IsHelper
trigger1 = MoveContact = 1
var(12) = 0

[State -3, Increase]
type = VarSet
triggerall = !IsHelper
triggerall = Var(6) <= 0
triggerall = Var(12)
trigger1 = NumTarget >= 1
trigger1 = Target,HitShakeOver
var(12) = Var(12)+1

[State -3, Time counter]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(12)
trigger1 = FVar(6)
var(12) = 1

[State -3, Drop]
type = VarSet
triggerall = !IsHelper
triggerall = FVar(6)
trigger1 = !NumTarget
trigger2 = ProjContact = 1
trigger3 = MoveContact = 1
fvar(6) = 0
ignorehitpause = 1

[State -3, Accel]
type = VarSet
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = Var(6) <= 0
triggerall = NumTarget >= 1
trigger1 = Target, HitShakeOver
fvar(6) = (Target,GetHitVar(xvel)*Exp((-0.1886)*((Var(12)))))

[State -3, Push]
type = PosAdd
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = !Var(6)
triggerall = NumTarget >= 1
triggerall = (Target, BackEdgeBodyDist <= 0) || (Target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = StateNo != [800,899]
trigger1 = Statetype != A
x = IfElse(Facing=-1,FVar(6),-FVar(6))

;------------------------------------------------ Commons
[State -3, Guard]
type = PlaySnd
triggerall = !IsHelper && Alive
triggerall = !Time
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
trigger5 = StateNo = 154
value = S120,(Random%3)
volumescale = 255

[State -3, Hurt]
type = PlaySnd
triggerall = !IsHelper && !Var(20)
triggerall = Alive && !Time
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
trigger6 = StateNo = 5100
value = S5001,0
channel = 0
volumescale = 255

[State -3, Hurt]
type = PlaySnd
triggerall = !IsHelper && Var(20)
triggerall = Alive && Life >=500
triggerall = !Time
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
trigger6 = StateNo = 5100
value = S5000,(Random%3)
channel = 0
volumescale = 255

[State -3, Hurt]
type = PlaySnd
triggerall = !IsHelper && Var(20)
triggerall = Alive && Life=[250,499]
triggerall = !Time
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
trigger6 = StateNo = 5100
value = S5000,3+(Random%2)
channel = 0
volumescale = 255

[State -3, Hurt]
type = PlaySnd
triggerall = !IsHelper && Var(20)
triggerall = Alive && Life <250
triggerall = !Time
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
trigger6 = StateNo = 5100
value = S5000,5
channel = 0
volumescale = 255