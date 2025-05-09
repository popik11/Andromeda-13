/// Полноценная ебля

//-// -Rewokin_comment //-//
// Эти описания просто имба, как же я горжусь Кирой.

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/fuck
	name = "Вагинальный Секс"
	description = "Займись вагинальным сексом, для нормальных робастеров."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Кончает глубоко внутрь киски %TARGET%!",
			"Вжавшись в выпаде, наполняет киску %TARGET%!",
			"Прижавшись и войдя как можно глубже, наполняет %TARGET%!",
			"Шлепаясь яйцами, стреляет глубоко во внутрь %TARGET% переполняя вагину!",
			"Выстреливает семенем прямо во внутрь %TARGET%!",
			"Покрывает все пространство внутри %TARGET% своим семенем!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Оргазмирует прямо на член и таз %USER%!",
			"Вздрагивая и выгинаясь, сквиртует на %USER%!",
			"Выгинаясь от удовольствия, обильно сквиртует на таз и член %USER%!",
			"Выстреливает сладкими соками прямо на %USER%!",
			"Покрывает сладкими соками таз %USER%!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы кончаете глубоко во внутрь киски %TARGET% ощущая свой долг исполненным!",
			"Вы вжимаетесь в выпаде, наполняя одним обильным выстрелом киску %TARGET%!",
			"Вы прижимаетесь как можно сильнее и войдя как можно поглубже, наполняете пизденку %TARGET%!",
			"Шлепнувшись яйцами, вы выстреливаете в киску %TARGET% нереполняя её теплом!",
			"Вы стреляете семенем прямо во внутрь %TARGET% переполняя внутренности вагины!",
			"Вы покрываете семенем внутренности киски %TARGET%!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы сквиртуете на член %USER%!",
			"Вы стреляете своими соками на таз и член %USER%!",
			"Вздрагивая и выгинаясь, вы сквиртуете на %USER%!",
			"Выгинаясь от удовольствия, вы обильно сквиртуете на %USER%!",
			"Вы покрываете своими соками пенис %USER% сквиртуя!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает глубоко внутрь вас, это очень тепло и приятно!",
			"%USER% Вжимается в вас молниеносным ударом глубоко во внутрь, тут же наполняя вас обильным выстрелом во-внутрь!",
			"%USER% Прижимается к вам как можно сильнее, и войдя поглубже начинает расстреливать вашу пизденку изнутри!",
			"%USER% Шлепаясь об вас яйцами, молниеносно стреляет внутрь вас семенем, переполняя вас!",
			"%USER% Стреляет семенем прямо в вашу пизденку, вы ощущаете наполненность!",
			"%USER% Покрывает семенем ваши внутренности киски!"
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Сквиртует на ваш член и таз!",
			"%TARGET% Вздрагивая и выгинаясь, сквиртует прямо на вас!",
			"%TARGET% Выгинаясь от удовольствия, обильно стреляет сквиртом на вас!",
			"%TARGET% Стреляет своими соками прямо на вас!",
			"%TARGET% Пачкает вас своими сладкими соками!"
		)
	)
	message = list(
		"Вдалбливается в киску %TARGET% хлюпая",
		"Нещадно долбится во-внутрь киски %TARGET% ударяясь в упор",
		"Трахает %TARGET% в киску смачно хлюпая",
		"Придерживая животик %TARGET% глубоко вонзается членом в киску",
		"Крепко ударживая бедра %TARGET% грубовато двигается внутри киски",
		"Нежно проталкивается членом в киску %TARGET%",
		"Нежно скользит в киску %TARGET% хлюпнув",
		"Плавно разрабатывает промежную целку %TARGET% шлепаясь яйцами",
		"Плавно двигается внутри %TARGET% слегка придерживая себя",
		"Быстро долбится внутрь %TARGET% создавая влажные звуки",
		"Заметно ускоряется внутри %TARGET% стараясь давить на пездочку как можно сильнее",
		"Скользит внутрь киски %TARGET% с шлепком.",
		"Проскальзывая внутрь киски %TARGET% с шлепком заставляет содрагаться животик.",
		"Входит и выходит из пизденки %TARGET% шлепаясь.",
		"Входит в пизду %TARGET% снова и снова, вдалбливаясь в неё."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ1.ogg',
		'modular_zzplurt/sound/interactions/champ2.ogg'
	)
	sound_range = 2
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 6
	user_arousal = 11
	target_arousal = 10

/datum/interaction/lewd/fuck/anal
	name = "Анальный Секс"
	description = "Займись прикрытием заднего прохода, в вашей поддержке нуждаются."	//-// -Rewokin_fun_comment //-// Есть пробитие, мехвод контужен.
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_ANUS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Кончает глубоко внутрь попки %TARGET%, семя обильно вытекает!",
			"Вжавшись в выпаде, наполняет попку %TARGET%!",
			"Прижавшись и втолкнувшись как можно глубже, наполняет %TARGET% в попку!",
			"Шлепаясь яйцами, стреляет глубоко во внутрь %TARGET% переполняя попку!",
			"Выстреливает семенем прямо во внутрь попки %TARGET%!",
			"Покрывает все пространство внутри попки %TARGET% своим семенем!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Кончает под себя от удовольствия!",
			"Судорожно испускает соки под себя от удовольствия!",
			"Вздрагивая и выгинаясь, покрывает поверхность под собой любовными соками от удовольствия!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы кончаете глубоко во внутрь попки %TARGET% семя обильно вытекает!",
			"Вы вжимаетесь в выпаде, наполняя одним обильным выстрелом попку %TARGET%!",
			"Вы прижимаетесь как можно сильнее и войдя как можно поглубже, наполняете уздечко %TARGET%!",
			"Шлепнувшись яйцами, вы выстреливаете в попку %TARGET% нереполняя её теплом!",
			"Вы стреляете семенем прямо во внутрь %TARGET% переполняя внутренности ануса!",
			"Вы покрываете семенем внутренности попки %TARGET%, семя обильно вытекает!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы кончаете под себя от удовольствия!",
			"Вы судорожно испускаете соки под себя от удовольствия!",
			"Вздрагивая и выгинаясь, вы покрываете поверхность под собой любовными соками от удовольствия!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает глубоко внутрь вашей попки, это очень тепло, больно и приятно!",
			"%USER% Вжимается в вас молниеносным ударом глубоко во внутрь, тут же наполняя вашу попу обильным выстрелом во-внутрь!",
			"%USER% Вонзается в вас молниеносным ударом глубоко в попку, тут же наполняя вас обильным выстрелом во-внутрь!",
			"%USER% Прижимается к вам как можно сильнее, и войдя поглубже начинает расстреливать вашу попку изнутри!",
			"%USER% Шлепаясь об вас яйцами, молниеносно стреляет внутрь вашей попки семенем, переполняя вас!",
			"%USER% Стреляет семенем прямо в вашу задницу, вы ощущаете наполненность!",
			"%USER% Покрывает семенем ваши внутренности ануса!"
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Кончает под себя от удовольствия!",
			"%TARGET% Судорожно испускает соки под себя от удовольствия!",
			"%TARGET% Выгинаясь и вздрагивая покрывает поверхность под собой любовными соками от удовольствия!"
		)
	)
	message = list(
		"Вдалбливается в попку %TARGET% шлепаясь и хлюпая",
		"Нещадно долбится во-внутрь задницы %TARGET% ударяясь глубоко во-внутрь",
		"Трахает %TARGET% в жопку смачно хлюпая и шлепаясь",
		"Придерживая животик %TARGET% глубоко вонзается членом в попку",
		"Крепко ударживая бедра %TARGET% грубовато двигается внутри попки",
		"Нежно проталкивается членом в анальное колечко %TARGET%",
		"Нежно скользит в попку %TARGET% хлюпнув",
		"Плавно разрабатывает попку %TARGET% шлепаясь яйцами",
		"Плавно двигается внутри задницы %TARGET% слегка придерживая себя",
		"Быстро долбится внутрь жопки %TARGET% создавая вакуумные звуки",
		"Заметно ускоряется внутри %TARGET% стараясь давить на внутренности попки как можно сильнее",
		"Скользит внутрь попки %TARGET% с шлепком.",
		"Входит и выходит из попки %TARGET% шлепаясь.",
		"Входит в задницу %TARGET% снова и снова, вдалбливаясь в неё."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 5
	user_arousal = 12
	target_arousal = 6
	target_pain = 5


//-// -Rewokin_comment //-//
// Да Кира, тот же буб-джоб, но чуть иначе

/datum/interaction/lewd/breastfuck
	name = "Трахнуть грудь (Пенис)"
	description = "Выеби чью-нибудь грудь?!"
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_BREASTS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Кончает между грудей %TARGET%, семя обильно попадает на лицо!",
			"Грубо толкаясь между грудей %TARGET% своим членом, стреляет в лицо %TARGET%!",
			"Покрывает грудь %TARGET% своим семенем, попадая в ротик!"
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы кончаете между грудей %TARGET% отправляя соки в полет и на лицо %TARGET%!",
			"Вы грубо толкаясь между грудей %TARGET% своим членом, наконец кончаете!",
			"Вы покрываете грудь %TARGET% своим семенем, попадая и в ротик!"
		),
		CLIMAX_POSITION_TARGET = list()
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает между ваших грудей, попадая вам в лицо!",
			"%USER% Грубо толкнувшись между ваших грудей своим членом, кончает вам на грудь и шею!",
			"%USER% Покрывает вашу грудь горячим семенем, попутно стреляя вам в ротик парой капель!"
		),
		CLIMAX_POSITION_TARGET = list()
	)
	message = list(
		"Трахает %TARGET% между грудей.",
		"Елозит членом между сисек %TARGET%.",
		"Толкается членом между титек %TARGET%.",
		"Долбится о грудь %TARGET% своим пенисом.",
		"Вставляет в титьки %TARGET% свой член, и начинает двигаться.",
		"Сжимает груди %TARGET% вместе, и давит членом меж ними."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 3


//-// -Rewokin_comment //-//
// Трахнуть чью-то ногу?
// Ну тут я хер знает, пока убрал, решим уже позже, чё с этим делать.

// /datum/interaction/lewd/footfuck
//	name = "Foot Fuck"
//	description = "Rub your cock on their foot."
//	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
//	interaction_requires = list(INTERACTION_REQUIRE_TARGET_FEET)
//	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
//	cum_message_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"cums all over %TARGET%'s foot.",
//			"shoots their load on %TARGET%'s sole.",
//			"covers %TARGET%'s toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_self_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"you cum all over %TARGET%'s foot.",
//			"you shoot your load on %TARGET%'s sole.",
//			"you cover %TARGET%'s toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_partner_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"%USER% cums all over your foot.",
//			"%USER% shoots their load on your sole.",
//			"%USER% covers your toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	message = list(
//		"fucks %TARGET%'s foot.",
//		"rubs their cock on %TARGET%'s foot.",
//		"grinds their cock on %TARGET%'s foot."
//	)
//	sound_possible = list(
//		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
//		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
//		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
//		'modular_zzplurt/sound/interactions/foot_wet2.ogg'
//	)
//	sound_range = 1
//	sound_use = TRUE
//	user_pleasure = 3
//	target_pleasure = 0
//	user_arousal = 6
//	target_arousal = 2

// /datum/interaction/lewd/footfuck/double
//	name = "Double Foot Fuck"
//	description = "Rub your cock between their feet."
//	interaction_requires = list(INTERACTION_REQUIRE_TARGET_FEET)
//	cum_message_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"cums all over %TARGET%'s feet.",
//			"shoots their load on %TARGET%'s soles.",
//			"covers %TARGET%'s toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_self_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"you cum all over %TARGET%'s feet.",
//			"you shoot your load on %TARGET%'s soles.",
//			"you cover %TARGET%'s toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_partner_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"%USER% cums all over your feet.",
//			"%USER% shoots their load on your soles.",
//			"%USER% covers your toes in cum."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	message = list(
//		"fucks %TARGET%'s feet.",
//		"rubs their cock between %TARGET%'s feet.",
//		"thrusts their cock between %TARGET%'s feet.",
//		"grinds their cock between %TARGET%'s feet."
//	)
//	user_arousal = 15
//	target_arousal = 5

// /datum/interaction/lewd/footfuck/vag
//	name = "Vaginal Foot Grind"
//	description = "Rub your vagina on their foot."
//	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
//	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
//	cum_message_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"squirts all over %TARGET%'s foot.",
//			"orgasms on %TARGET%'s sole.",
//			"coats %TARGET%'s toes with their juices."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_self_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"you squirt all over %TARGET%'s foot.",
//			"you orgasm on %TARGET%'s sole.",
//			"you coat %TARGET%'s toes with your juices."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	cum_partner_text_overrides = list(
//		CLIMAX_POSITION_USER = list(
//			"%USER% squirts all over your foot.",
//			"%USER% orgasms on your sole.",
//			"%USER% coats your toes with their juices."
//		),
//		CLIMAX_POSITION_TARGET = list()
//	)
//	message = list(
//		"grinds their pussy against %TARGET%'s foot.",
//		"rubs their clit on %TARGET%'s foot.",
//		"ruts on %TARGET%'s foot."
//	)
//	sound_use = TRUE
//	user_pleasure = 15
//	target_pleasure = 0
//	user_arousal = 20
//	target_arousal = 5

// /datum/interaction/lewd/cockfuck
//	name = "Cockfuck"
//	description = "Fuck their cock."
//	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
//	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
//	cum_genital = list(
//		CLIMAX_POSITION_USER = CLIMAX_PENIS,
//		CLIMAX_POSITION_TARGET = CLIMAX_PENIS
//	)
//	cum_target = list(
//		CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS,
//		CLIMAX_POSITION_TARGET = ORGAN_SLOT_PENIS
//	)
//	message = list(
//		"pushes their cock into %TARGET%'s urethra",
//		"penetrates %TARGET%'s cock with their own",
//		"thrusts deep into %TARGET%'s cockhole",
//		"fucks %TARGET%'s cock from the inside"
//	)
//	user_messages = list(
//		"You feel %TARGET%'s cock squeezing around yours",
//		"The warmth of %TARGET%'s urethra envelops your shaft",
//		"%TARGET%'s cock tightens around yours as you thrust deeper"
//	)
//	target_messages = list(
//		"You feel %USER%'s cock stretching your urethra",
//		"%USER%'s shaft pushes deep inside your cock",
//		"The warmth of %USER%'s cock fills your shaft from within"
//	)
//	sound_possible = list(
//		'modular_zzplurt/sound/interactions/bang1.ogg',
//		'modular_zzplurt/sound/interactions/bang2.ogg',
//		'modular_zzplurt/sound/interactions/bang3.ogg'
//	)
//	sound_range = 1
//	sound_use = TRUE
//	user_pleasure = 6
//	target_pleasure = 6
//	user_arousal = 8
//	target_arousal = 8
//	target_pain = 4
