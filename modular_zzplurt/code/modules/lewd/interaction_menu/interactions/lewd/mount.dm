/datum/interaction/lewd/mount_vagina	/// ADD ANDROMEDA-13 (@Мисс Кира): Перевод, дополнение ЕРП контента.
	name = "Оседлать (Вагина)"
	description = "Оседлай кого-нибудь своей сильной Вагиной."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_PENIS, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Оргазмирует прямо на член и таз %TARGET%!",
			"Поскакивая и выгинаясь, сквиртует на %TARGET%!",
			"Выгинаясь от удовольствия, обильно сквиртует на таз и член %TARGET%!",
			"Выстреливает сладкими соками прямо на %TARGET%!",
			"Сладко содрагаясь и постанывая, оргазмирует на %TARGET%!",
			"Покрывает сладкими соками таз %TARGET%!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Кончает внутрь киски %USER%!",
			"Вжавшись при наскоке, наполняет киску %USER%!",
			"Не выдерживая наезда, стреляет глубоко во внутрь %USER% переполняя вагину!",
			"Выстреливает семенем прямо во внутрь %USER%!",
			"Покрывает все пространство внутри %USER% своим семенем!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы сквиртуете на член %TARGET%!",
			"Вы стреляете своими соками на таз и член %TARGET%!",
			"Поскакивая и выгинаясь, вы сквиртуете на %TARGET%!",
			"Выгинаясь от удовольствия, вы обильно сквиртуете на %TARGET%!",
			"Вы поскакивая на члене обильно оргазмируете под себя %TARGET%!",
			"Вы покрываете своими соками пенис %TARGET% сквиртуя!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы кончаете во внутрь киски %USER%!",
			"Вы вжимаетесь при наскоке, наполняя одним обильным выстрелом киску %USER%!",
			"Не выдержав наезда, вы выстреливаете в киску %USER% переполняя её теплом!",
			"Вы стреляете семенем прямо во внутрь %USER% переполняя внутренности вагины!",
			"Вы покрываете семенем внутренности киски %USER%!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Сквиртует на ваш член и таз!",
			"%USER% Вздрагивая и выгинаясь, сквиртует прямо на вас!",
			"%USER% Выгинаясь от удовольствия, обильно стреляет сквиртом на вас!",
			"%USER% Поскакивая на члене, обильно оргазмирует на вас!",
			"%USER% Стреляет своими соками прямо на вас!",
			"%USER% Пачкает вас своими сладкими соками!"
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Кончает внутрь вас, это тепло и приятно!",
			"%TARGET% Вжимаясь при наскоке, вас тут же наполняет волна тепла обильным выстрелом во-внутрь!",
			"%TARGET% Шлепаясь при наскоке, в вас молниеносно происходит выстрел семенем, переполняя вас!",
			"%TARGET% Стреляет семенем прямо в вашу пизденку, вы ощущаете наполненность!",
			"%TARGET% Покрывает семенем ваши внутренности киски!"
		)
	)
	message = list(
		"Увлеченно поскакивает на члене %TARGET%.",
		"Ускоренно наезжает на члене %TARGET% шлепаясь о тело.",
		"Страстно и смачно скачет на члене %TARGET%.",
		"Седлает пенис %TARGET% как настоящая наездница.",
		"Заставляет %TARGET% войти в её киску, и начинает поскакивать.",
		"Соскальзывает своей киской на член %TARGET% и начинает поскакивать.",
		"Прыгает на члене %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 7
	user_arousal = 10
	target_arousal = 10

/datum/interaction/lewd/mount_anus
	name = "Оседлать (Попка)"
	description = "Оседлайте кого-нибудь своей попкой."
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_BOTH, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = ORGAN_SLOT_ANUS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Оргазмирует прямо на %TARGET%!",
			"Поскакивая и выгинаясь, сквиртует на %TARGET%!",
			"Выгинаясь от удовольствия, обильно сквиртует на %TARGET%!",
			"Выстреливает сладкими соками прямо на %TARGET%!",
			"Сладко содрагаясь и постанывая, оргазмирует на %TARGET%!",
			"Обильно покрывает сладкими соками %TARGET% во время оргазма!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Кончает внутрь попки %USER%!",
			"Вжавшись при наскоке, наполняет попку %USER%!",
			"Не выдерживая наезда, стреляет глубоко во внутрь %USER% переполняя попку!",
			"Выстреливает семенем прямо во внутрь %USER%!",
			"Покрывает все пространство внутри %USER% своим семенем!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы сквиртуете на %TARGET%!",
			"Вы стреляете своими соками под себя на %TARGET%!",
			"Поскакивая и выгинаясь, вы сквиртуете на %TARGET%!",
			"Выгинаясь от удовольствия, вы обильно сквиртуете на %TARGET%!",
			"Поскакивая на члене вы обильно оргазмируете под себя %TARGET%!",
			"Вы покрываете своими соками %TARGET% сквиртуя!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы кончаете во внутрь задницы %USER%!",
			"Вы вжимаетесь при наскоке, наполняя одним обильным выстрелом жопку %USER%!",
			"Не выдержав наезда, вы выстреливаете в попку %USER% переполняя её теплом!",
			"Вы стреляете семенем прямо во внутрь %USER% переполняя внутренности ануса!",
			"Вы покрываете семенем внутренности попки %USER%!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Сквиртует на вас!",
			"%USER% Вздрагивая и выгинаясь, сквиртует прямо на вас!",
			"%USER% Выгинаясь от удовольствия, обильно стреляет сквиртом на вас!",
			"%USER% Поскакивая на члене, обильно оргазмирует на вас!",
			"%USER% Стреляет своими соками прямо на вас!",
			"%USER% Пачкает вас своими сладкими соками!"
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Кончает внутрь вас, это тепло и приятно!",
			"%TARGET% Вжимаясь при наскоке, вас тут же наполняет волна тепла обильным выстрелом во-внутрь!",
			"%TARGET% Шлепаясь при наскоке, в вас молниеносно происходит выстрел семенем, переполняя вас!",
			"%TARGET% Стреляет семенем прямо в вашу попку, вы ощущаете наполненность!",
			"%TARGET% Покрывает семенем ваши внутренности задницы!"
		)
	)
	message = list(
		"Увлеченно поскакивает на члене %TARGET% попкой.",
		"Ускоренно наезжает на члене %TARGET% попкой, немного шлепаясь о тело.",
		"Страстно и смачно скачет на члене %TARGET% своей задницей.",
		"Седлает пенис %TARGET% как настоящая задняя наездница.",
		"Заставляет %TARGET% войти в её попку, и начинает поскакивать.",
		"Соскальзывает своей жопкой на член %TARGET% и начинает поскакивать.",
		"Прыгает на члене %TARGET% своим колечком."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 7
	user_arousal = 8
	target_arousal = 10
	user_pain = 3

/datum/interaction/lewd/mount_face
	name = "Оседлать(Лицо)"
	description = "Посидите на чьем-нибудь лице жопкой."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"Расживается своей попкой на лице %TARGET%.",
		"Пихается своей заднице в лицо %TARGET%.",
		"Насаживает свою заднице прямо на лицо %TARGET%.",
		"Хватает затылок %TARGET% и вдавливает его в свои булочки."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg',
		'modular_zzplurt/sound/interactions/squelch2.ogg',
		'modular_zzplurt/sound/interactions/squelch3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 5
	target_arousal = 3
