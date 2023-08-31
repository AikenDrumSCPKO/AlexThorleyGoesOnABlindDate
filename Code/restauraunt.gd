extends Node2D

onready var minutes = 0
onready var waiter = 0
onready var waiterdisabled = false
onready var waiterbagel = false
var bagelGrab = 0
onready var hand = $TextureRect/AlexBackground/Sprite

func _ready():
	UniversalFunctions.update()
	UniversalFunctions.play_dialogue("null", "당신은 알렉스 톨리입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.play_dialogue("null", "30분째 기다리고 있는 중입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "웨이트리스는 계속 와서 주문할 준비가 됐는지 보채고 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "준비는 안됐습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신의 소개팅 상대는 아직 안 왔습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "상대가 날 잊어버린 건 아닌지 궁금합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 어쨌든 꽤 평범하게 생겼습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "상대는 아마 모를 겁니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "상대는 당신과 한 번도 만나본 적 없습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "어쩌면 상대도 느끼고 있을 수도 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "여긴 엄청 고급 레스토랑입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "분명 바람맞기에 그닥 나쁜 장소는 아닙니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신 바람맞아본 장소 중에서 최악도 아니고요.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	if waiter >= 1:
		UniversalFunctions.play_dialogue("null", "언제든 웨이터가 든 치즈케이크를 주문할 수도 있습니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "엄청 맛있어 보입니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "정갈합니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "체리는 흠잡을 곳이 없습니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "겉에선 광택이 납니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "사실 광택은 좋은 징조는 아닙니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "당신은 디저트를 좀 더 맛있어 보이게하는 것말고는 아무 의미없는 이상한 투명 젤라틴 같은 걸 위에 바르지 않았으면 좋겠다고 생각합니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "그건 식감을 이상하게 합니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	if waiter >= 3:
		UniversalFunctions.play_dialogue("null", str("저 남자는 분명 같은 치즈케이크를 들고 최소 " + str(waiter) + "번은 지나갔습니다."), 0.05)
		yield($CanvasLayer/Dialogue, "close")
		UniversalFunctions.play_dialogue("null", "걷는 길이... 원형이기라도 한 걸가요?", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		$Timer.starting()
		yield($Timer, "timeout")
		UniversalFunctions.play_dialogue("null", "이런. 당신은 뒤를 돌아볼 수 없습니다.", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		$Timer.starting()
		yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "당신은 어쩌면... 와인이라도 시켰어야 했습니다. 술이라도 있어야 덜 어색할 겁니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "뭐, 개소리입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "정신차립시다, 톨리!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "상대에게 좋은 첫인상을 남기고 싶은 거 아니었나요?", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "그냥 길을 좀 해메고 있을 겁니다!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "몇 분 뒤면 도착할 거라고요!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "전혀 이상할 게 없습니다!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신도 데이트에 몇 번이나 늦어봤잖아요!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "수백 번이나!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "아니, 잠깐.", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "그 정도로 많이는 아닙니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "완전 말이 안되는 소리였네요.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "어쨌든, 여긴 쉽게 찾아올 수 있는 곳이 아닙니다!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "글쎄요, 쉽게 찾아올 수 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "그렇지 않나요?", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "음.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 어떻게 여기 왔는지 기억하지 못합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 기다린 걸 기억하지 못합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	if minutes >= 1:
		UniversalFunctions.play_dialogue("null", str("당신은 " +str(30+minutes)+"분 기다렸습니다."), 0.05)
		yield($CanvasLayer/Dialogue, "close")
		$Timer.starting()
		yield($Timer, "timeout")
	UniversalFunctions.play_dialogue_auto("null", "어쩌면 이제 곧 떠나야 할", 0.05)
	yield($CanvasLayer/Dialogue, "autoclose")
	hand.visible = false
	$AnimationPlayer.play("HandOutStandUp")
	UniversalFunctions.play_dialogue_auto("알렉스 톨리", "\"안녕하세요, 제가 좀 늦었", 0.05)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("AwkwardStareStanding")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"오... 무슨?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStareStanding")
	UniversalFunctions.play_dialogue("null", "\"망할\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = true
	$TextureRect/AlexBackground.position = Vector2(0,0)
	$AnimationPlayer.play("BlankStareSit")
	UniversalFunctions.play_dialogue("null", "당신이 자리에 앉아 당신을 쳐다봅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 저녁이 이렇게 될 거라곤 상상조차 못했습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 어쩌다가 이런 상황에 처하게 됐나 생각합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "배에서 꼬르륵 소리가 납니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("MenuBlank")
	UniversalFunctions.play_dialogue("null", "당신은 메뉴를 집어들고 살펴봅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("MenuAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"뭐, 아직 메뉴를 살펴보지 않았나 봐?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("MenuNervous")
	UniversalFunctions.play_dialogue("null", "\"난 필레 미뇽을 시킬까 하는데.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"좋네. 나도 그걸로 시킬게. 내가 원하는건 내가 알겠지.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "그렇겠네. 네가 원하는 건 네가 알겠지.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play_backwards("BlankStare")
	UniversalFunctions.play_dialogue("null", "가끔은.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "당신의 웨이트리스가 돌아옵니다. 웨이트리스는 테이블에 당신이 두 명 있다는 사실에 별 신경도 쓰지 않습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "사실, 당신은 웨이트리스가 보이지 않습니다. 소리도 들리지 않습니다. 하지만 당신은 웨이트리스가 뭘 하는지 알 수 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("MenuWaitress")
	UniversalFunctions.play_dialogue("null", "당신은 주문하고 웨이트리스는 멀리 걸어갑니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "웨이트리스가 사라지고 당신은 당신을 바라봅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"그리고 먼저 말해두자면, 나는 전혀 내 타입이 아니거든... 그냥 그렇다고.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"뭐, 나도 그래.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"좋아.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"계산은 반반?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"응.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "당신은 다시 당신을 바라봅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "이럴수가. 정말 기묘하구만.", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	waiterbagel = true
	UniversalFunctions.play_dialogue("null", "너무 조용합니다. 당신은 당신과 데이트하고 있습니다.", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "당신이 당신을 바람맞혔다고 생각하던 때보다 더 안 좋아졌습니다.", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "씨발!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "씨발!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "씨발.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "이제보니... 지금 당신은 자신을 정면에서 바라보고 있고, 당신은 그렇게 평범한 편은 아닌 것 같습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "어쩌면 장점일 수도 있습니다. 어쩌면 당신의 특기를 돋보이게 하고 있을 수도 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "어쩌면 당신은 보기 괜찮은 편일 수도 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "당신은 너무 신경을 많이 씁니다. 거울은 당신이 당신을 보기 힘들게 합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "어쩌면 당신의 불안감은 비이성적인 것일 수도 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "어쩌면 사람들은 당신을 그저 한 사람으로 보고 있을 수도 있고...", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "어쩌면 사람들은 아예 당신이 꽤나... 잘 생겼다고... 할지도요.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "옙.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "당신은 잘 생겼습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	if bagelGrab == 3:
		bagelGrab()
	else:
		filetMignon()
	
func bagelGrab():
	hand.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "웨이트리스가 돌아왔고 당신에게 필레 미뇽을 건네줍니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = true
	$TextureRect/TableDressing.texture = load("res://Sprites/bagelmeal.png")
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("LookingAtFood")
	UniversalFunctions.play_dialogue("null", "생긴게...", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = false
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "...", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "이건 그냥 베이글이잖아.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "...", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.lastEnding = 3
	UniversalFunctions.speedrundisable = true
	get_tree().change_scene("res://Credits.tscn")
	
	
func filetMignon():
	hand.visible = false
	$AnimationPlayer.play("MenuWaitressLook")
	UniversalFunctions.play_dialogue("null", "웨이트리스가 돌아왔고 당신에게 필레 미뇽을 건네줍니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = true
	$TextureRect/TableDressing.texture = load("res://Sprites/steak.png")
	$TextureRect/TableDressing.visible = true
	$AnimationPlayer.play("LookingAtFood")
	UniversalFunctions.play_dialogue("null", "생긴게 맛있어 보입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 당신 필레 미뇽을 내려다볼 순 없지만 당신이 가진 건 볼 수 있습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "반대쪽 당신 걸.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "뭐 그렇습니다. 약간 촛불 때문에 가려져있습니다. 그래도 당신 음식은 맛있어 보입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신이란 말은 당신이란 말입니다, 물론.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("CuttingFood")
	UniversalFunctions.play_dialogue("null", "당신은 당신의 스테이크를 한 조각 자릅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "완벽한 미디움레어입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 여전히 내려다보지는 못합니다, 물론.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 놀라울 정도로 보지도 않고 스테이크를 자르는데 선수입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("ChewingFood")
	UniversalFunctions.play_dialogue("null", "당신은 당신이 첫 조각을 입안에 넣고 당신과 완전 같은 타이밍에 씹는 모습을 지켜봅니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	if minutes > 0 or UniversalFunctions.speedrundisable == true:
		food()
	else:
		stop()
			
			
			
func food():
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"이 필레 미뇽은 별론데.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = false
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"나도 똑같이 말하려했어.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"그래도 그냥 먹으려고.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"나도.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	hand.visible = true
	$AnimationPlayer.play("ChewingFood")
	UniversalFunctions.play_dialogue("null", "식감은 기름지기만 끔찍하게 간이 안 되어 있어서 사실상 맛이 안나는 쓰레기 수준입니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "고급 레스토랑은 고기에 간을 전혀 안하고는 고급진 고기라 합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 고기 본연의 역겨운 금속맛 밖에 느끼지 못하며, 별로 좋은 기분은 아닙니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "사실, 당신은 아무 맛도 느끼지 못합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	hand.visible = false
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"어쨌든, 적어도 베이글은 아니네.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"하! 그래. 나만은 나를 이해해주는 사람이네.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"잠깐만... 너는... 이해하지...\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("Shocked")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...세상에... 그래 맞아.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"너는 나야! 세상에, 너는 나라고!\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SuperHappy")
	UniversalFunctions.play_dialogue("알렉스 톨리", "[shake rate=15 level=15]\"이럴수가!\"[/shake]", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "[shake rate=15 level=15]\"오늘이 내 인생 최고의 날이야!\"[/shake]", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SuperHappyVibrate")
	UniversalFunctions.play_dialogue("null", "당신은 기쁨에 가득 차 몸을 떨고 있습니다.", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 당신이 처한 상황을 이해해줄 누군가를 만났습니다!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신의 인생을 이해줄 누군가를!", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "또한 당신은 마침내 당신의 얼굴이 가진 미를 인정하게 되었습니다...", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 당신의 평범함이 사랑받지 못할 것이 아니란 것을 이해했습니다.", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "...", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.options("Kiss yourself", "Do not")
	yield ($CanvasLayer/Options,"pressed")
	if $CanvasLayer/Options.selected == "자신에게 키스한다":
		kiss()
	elif $CanvasLayer/Options.selected == "하지 않는다":
		do_not()
	
func do_not():
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"세상에 우리가 이제 할 수 있는 일들 좀 생각해봐! 일하면서 서로 감싸줄 수도 있고... 절대로 다툴 일이 없는 룸메이트를 가질 수도 있고...\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"어... 말나온 김에... 우리는 이 일을 보고해야 할테지. 정상적인 상황은 아니니까.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"그니까, 우리가 보고하기 전에 우리 중 한 명이 사라지고 모든 일이 지 혼자서 마무리 되지 않으면 말이야.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"으, 개같네.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"좋아 그럼... 그럼 잠시만. 그건 완전 확실한 건 아닌 거 맞지? 우리 중 한 명이 사라질 거라고 보장된 거도 없는 거잖아.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"그렇지, 근데... 과거의 일을 보면...\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"이야기만 한다고 뭔가가 정말 이루어지는 건 아니니까.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "두 명의 당신은 재빠르게 두려움은 죄다 잊어버리고 대화에 몰두합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("null", "당신은 당신에게 자신의 근무 환경과 인생 전반의 부조리에 대해서 불평합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "당신은 당신이 공공장소에 있고 민간인들이 들을 수도 있다는 건 신경 쓰지 않습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("null", "당신이 본 사람은 지금까진 웨이터 한 명 뿐입니다. 별 문제는 안 됩니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	$TextureRect/background.play("bedroom")
	$AudioStreamPlayer.stream = load("res://res://Resources/559853__migfus20__mysterious-piano-music-loop.mp3")
	$AudioStreamPlayer.playing = true
	$TextureRect/ChairTruck.visible = false
	$TextureRect/Table.visible = false
	$TextureRect/Waiter2.visible = false
	$TextureRect/Candle.visible = false
	$TextureRect/AlexBackground.visible = false
	$TextureRect/TableDressing.visible = false
	UniversalFunctions.play_dialogue("null", "마지막에 당신은 나와서 당신이 지금까지 살았던 재단 시설 안에 있는 거주지로 돌아갑니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 가는 내내 이야기를 합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("load")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"하하! 우리 둘 다 사라지지 않고 있으면 아무것도 안 해도 돈을 주려나?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "당신은 여기 오기 전에 무언가 농담을 했습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "무언가... 당신이... 하는게 얼마나 없는지... 직장에서?", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "당신은 뭐가 어떻게 되고 있는지 전혀 모른단 사실을 깨닫습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"갑자기 무슨 일이야?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"내가 무슨 말을 했었더라?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"너는... 직장에서 하는게 얼마나 없는지에 대해 농담했지?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"아니 내 말은, 정확하게 내가 뭐라 말했는지.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	yield($AnimationPlayer,"animation_finished")
	$AnimationPlayer.play("AwkwardStare")
	yield($AnimationPlayer,"animation_finished")
	UniversalFunctions.play_dialogue_auto("알렉스 톨리", "\"뭔가 제대로 되고 있지 않은", 0.05)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("Shocked")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"오.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"혹시... 여기 오기 전에 무슨 이야기했는지 기억나?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"아니. 너는 왜 우리 소개팅에 늦었는지 기억나?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"아니.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...\"", 0.02)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"그리고 난 못 움직여.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"뭐라고?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"그래, 난 못 움직여.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"근데 너 여기까지 걸어오지 않았어?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	UniversalFunctions.play_dialogue("null", "\"맞아. 그건 알아.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "당신은 당신 둘 모두의 존재가 사라지고 있는 중일 가능성에 대해 고려합니다. 아니면 둘 모두 이미 존재하지 않거나.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play("CuriousStare")
	UniversalFunctions.play_dialogue("null", "\"우리 소개팅 전에 뭘했는지 기억해?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	
	if UniversalFunctions.lastEnding == null:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("알렉스 톨리", "\"난 우리 소개팅 전 일은 아무것도 기억 안나.\"", 0.05)
		yield($CanvasLayer/Dialogue, "close")
	elif UniversalFunctions.lastEnding == 0:
		$AnimationPlayer.play("AwkwardStare")
		UniversalFunctions.play_dialogue("알렉스 톨리", "\"모든 일이 다... 어지러웠어.\"", 0.05)
		yield($CanvasLayer/Dialogue, "close")
	elif UniversalFunctions.lastEnding == 1:
		$AnimationPlayer.play("HandOutHappy")
		UniversalFunctions.play_dialogue("알렉스 톨리", "\"새 친구와 함께 집에 가는 길이었어.\"", 0.05)
		yield($CanvasLayer/Dialogue, "close")
	elif UniversalFunctions.lastEnding == 2:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("알렉스 톨리", "\"나는... 여기에 앉아있었어. 누구랑 얘기하는 중이었어.\"", 0.05)
		yield($CanvasLayer/Dialogue, "close")
	elif UniversalFunctions.lastEnding == 3:
		$AnimationPlayer.play("BlankTalkStare")
		UniversalFunctions.play_dialogue("알렉스 톨리", "\"베이글을 기억해\"", 0.05)
		yield($CanvasLayer/Dialogue, "close")
		
	
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"너는 어떤데?\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "당신은 자신에 대해 많은 걸 기억합니다. 당신은 오리엔테이션을 기억합니다. 당신은 버거를 기억합니다. 당신은 살인 혐의를 받은 일을 기억합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HalfSmileStare")
	UniversalFunctions.play_dialogue("null", "\"베이글을 기억해.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"나도 그래.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "당신은 읽을 걸 기억합니다. 당신은 쓴 걸 기억합니다. 당신은 웹사이트 화면을 본 걸 기억합니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "당신은 알렉스 톨리가 아닙니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "당신은 물론 알고 있었습니다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"뭐, 만나서 반가웠어.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankTalkStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"나중에 보자고.\"", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	$Timer.starting()
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.lastEnding = 2
	get_tree().change_scene("res://Credits.tscn")
	
	
func kiss():
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.play_dialogue("null", "당신은 당신을 향해 몸을 기울인다...", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "손을 뻗어 당신의 미소짓는 얼굴을 잡는다...", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "그리곤 눈을 감는다.", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 당신의 입술이 당신에게 잠시 닿는 걸 느낀다...", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "그리고 당신은 몸을 빼고 당신을 마지막으로 한 번 쳐다본다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("BlankStare")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"...\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"...\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"그래 사실, 그거 참 이상했어.\"", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("NervousStare")
	UniversalFunctions.play_dialogue("null", "\"맞아... 그냥... 다시는... 하지... 말자.\"", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"동의해.\"", 0.06)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("SmileStare")
	UniversalFunctions.play_dialogue("null", "\"하지만 그래도! 이거만 잊고 넘어가면 이 일을 아름다운 우정의 시작점이라 생각할 수 있어!\"", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutSereneSmile")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"맞아! 내게 마침내 이야기할 상대가 생긴 걸! 나를 이해해줄 상대가!\"", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutStandUpEnd")
	UniversalFunctions.play_dialogue("null", "당신을 일어서서 당신의 손을 잡는다.", 0.05)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "\"좋아! 우리 이제 어딘가 조용한 곳에 가서 다른 사람들에게는 말하지 못하는 이야기를 전부 하자!\"", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	$TextureRect/background.play("crossing")
	$AudioStreamPlayer.stream = load("res://Resources/559850__migfus20__jazz-background-music-loop.mp3")
	$AudioStreamPlayer.playing = true
	$TextureRect/ChairTruck.visible = false
	$TextureRect/Table.visible = false
	$TextureRect/Waiter2.visible = false
	$TextureRect/Candle.visible = false
	$TextureRect/AlexBackground.visible = false
	$TextureRect/TableDressing.visible = false
	$AnimationPlayer.play("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.play_dialogue("null", "당신은 당신과 밖에 나와 걸으며, 내내 이야기 합니다. 당신은 무슨 이야기를 하는지 모릅니다. 당신은 들을 수 없습니다.", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	UniversalFunctions.play_dialogue("null", "당신은 당신을 향해 돌아서서 미소를 지으면 교차로를 건너갑니다. 그 무엇도 당신의 이 좋은 분위기를 해칠 수 없습니다.", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$TextureRect/AlexBackground.visible = true
	$AnimationPlayer.play("StandingNight")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("StandingNightTalk")
	UniversalFunctions.play_dialogue_auto("null", "\"도착하기 전에 아이스크림은 어\"", 0.04)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("Truck")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.play_dialogue("null", "트럭이 갑자기 튀어나와서 당신을 칩니다. 당신은 즉사합니다.", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	UniversalFunctions.play_dialogue("null", "에휴, 씨발.", 0.04)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.lastEnding = 1
	get_tree().change_scene("res://Credits.tscn")


func stop():
	$AudioStreamPlayer.stop()
	waiterdisabled = true
	hand.visible = false
	$AnimationPlayer.play("STOP")
	UniversalFunctions.play_dialogue_auto_set("알렉스 톨리", "[shake rate=15 level=15]\"그만!\"[/shake]", 0.02, 3)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue_auto_set("알렉스 톨리", "\"세상에\"", 0.02, 1.5)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue_auto("알렉스 톨리", "\"다했어?\"", 0.07)
	yield($CanvasLayer/Dialogue, "autoclose")
	$AnimationPlayer.play("NervousStare")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play("HandOutAwkward")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"저기... 난 괜찮은 사람 같고 그런데...\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStare")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"근데... 우리 너무 빨리 나아가고 있어.\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"난 그냥 이렇게나 빨리 우리가 관계를 진행할 준비가 안 됐어.\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("ThisSucks")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"그리고, 그렇게 하면 난 엄청 어지럽거든.\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutHappy")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"또 보자고?\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("HandOutEh")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"그니까... 어차피 우리 갈 곳이라곤 똑같을 거잖아.\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play("AwkwardStareStanding")
	UniversalFunctions.play_dialogue("알렉스 톨리", "\"잘가.\"", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$AnimationPlayer.play_backwards("HandOutStandUp")
	UniversalFunctions.play_dialogue("null", "당신은 스피드러너에겐 별 관심이 없는 것 같습니다.", 0.07)
	yield($CanvasLayer/Dialogue, "close")
	$Timer.starting()
	yield($Timer, "timeout")
	$AnimationPlayer.play_backwards("load")
	yield($AnimationPlayer, "animation_finished")
	UniversalFunctions.lastEnding = 0
	UniversalFunctions.speedrundisable = true
	get_tree().change_scene("res://Credits.tscn")


func _on_Minutes_timeout():
	minutes += 1



func _on_Waiter_timeout():
	waiter += 1
	if waiterdisabled == false and waiterbagel == false:
		$TextureRect/Waiter2/WaiterAnims.play("move")
		$Waiter.stop()
		yield($TextureRect/Waiter2/WaiterAnims, "animation_finished")
		$Waiter.start()
	elif waiterdisabled == false and waiterbagel == true:
		$TextureRect/BagelWaiter/Bagel3.visible = true
		$TextureRect/BagelWaiter/WaiterAnims.play("move")
		$Waiter.stop()
		yield($TextureRect/Waiter2/WaiterAnims, "animation_finished")
		$Waiter.start()
		waiterbagel = false



func _on_Bagel3_pressed():
	$TextureRect/BagelWaiter/Bagel3.visible = false
	bagelGrab += 1
	print(bagelGrab)
	waiterbagel = false
	$Waiter.start()
