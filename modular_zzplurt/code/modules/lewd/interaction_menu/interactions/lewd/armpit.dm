/datum/interaction/lewd/armpit_fuck	/// ADD ANDROMEDA-13 (@Мисс Кира): Перевод, дополнение ЕРП контента.
	name = "Трахать в подмышку"
	description = "Трахните подмышку партнера."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_TOPLESS)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"Кончает на всю подмышку %TARGET%!",
		"Выпускает все свои соки в подмышку %TARGET%!",
		"Покрывает подмышку %TARGET% своими соками!"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"Вы кончаете на всю подмышку %TARGET%!",
		"Вы выпускаете свои соки в подмышку %TARGET%!",
		"вы покрываете подмышку %TARGET% своими соками!"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%USER% Кончает на вашу подмышку своими соками!",
		"%USER% Выпускает на вашу подмышку свои соки!",
		"%USER% Покрывает вашу подмышку своими соками!"
	))
	message = list(
		"Входит в подмышку %TARGET% с сочным шлепком!",
		"Вгоняет свой член в подмышку %TARGET%!",
		"Вставляет свой член в ямку %TARGET%!",
		"Долбится своим членом в подмышку %TARGET%!"
	)
	user_messages = list(
		"Вы чувствуете теплую ямку %TARGET% вокруг своего члена.",
		"Мягкость подмышки %TARGET% приятно ощущается на вашем члене.",
		"Подмышка %TARGET% приятно обхватывает и сжимает ваш член."
	)
	target_messages = list(
		"Вы чувствуете как член %USER% трется о вашу подмышку.",
		"Вы чувствуете как %USER% грубовато трется членом о вашу подмышку.",
		"Член %USER% легко скользит по вашей подмышке.",
		"Горечь члена %USER% сдавливает вашу ямку в подмышке."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 3
	target_pleasure = 0
	user_arousal = 5
	target_arousal = 2

/datum/interaction/lewd/armpit_lick
	name = "Вылизать подмышку"
	description = "Облизать подмышку партнера"
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_MOUTH,
		INTERACTION_REQUIRE_TARGET_TOPLESS
	)
	message = list(
		"Лижет подмышку %TARGET%.",
		"Проходится своим языком по подмышке %TARGET%.",
		"Пробует ямку подмышки %TARGET% на вкус.",
		"Старательно пробует ямку подмышки %TARGET% на вкус.",
		"Проходится своим лицом в подмышку %TARGET% облизывая ту."
	)
	user_messages = list(
		"Вы чувствуете вкус подмышки %TARGET%.",
		"Аромат подмышки %TARGET% плавно заполняет ваш нос.",
		"Вы ощущаете вкус подмышки %TARGET%."
	)
	target_messages = list(
		"Вы ощущаете язык %USER% в своей подмышке.",
		"Влажный язык %USER% плавно скользит по вашей подмышке в ямку.",
		"Тепло из рта %USER% в вашей подмышке, заставляет вас нежно содрагаться."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/armpit_smother
	name = "Прижаться подмышкой к лицу"
	description = "Прижми своей подмышкой лицо партнера."
	interaction_requires = list(
		INTERACTION_REQUIRE_TARGET_MOUTH,
		INTERACTION_REQUIRE_SELF_TOPLESS
	)
	message = list(
		"Прижимает свою подмышку к лицу %TARGET%!",
		"Властно прижимает лицо %TARGET% своей подмышкой!",
		"Вдавливает лицо %TARGET% в свою подмышку!",
		"Придавливает лицо %TARGET% к своей подмышке!"
	)
	user_messages = list(
		"Вы чувствуете как лицо %TARGET% прижимается к вашей подмышке.",
		"Вы прижимаете голову и лицо %TARGET% к своей подмышке.",
		"Вы удерживаете лицо %TARGET% в своей подмышке."
	)
	target_messages = list(
		"Ваше лицо вдавлено в подмышку %USER%.",
		"Подмышка %USER% слегка душит вас.",
		"Ваш нос стремительно улавливает аромат подмышки %USER%."
	)
	sound_range = 1
	sound_use = FALSE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/armpit_pitjob
	name = "Сделать приятно подмышкой"
	description = "Развлеките член своего партнера своей подмышкой."
	interaction_requires = list(
		INTERACTION_REQUIRE_SELF_TOPLESS
	)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"Кончает на всю подмышку %USER%!",
		"Выпускает свои горячие соки в подмышку %USER%!",
		"Покрывает подмышку %USER% своими соками!"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%TARGET% Кончает на всю вашу подмышку!",
		"%TARGET% Выпускает свои горячие соки в вашу подмышку!",
		"%TARGET% Покрывает вашу подмышку своими соками!"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"Вы кончаете на всю подмышку %USER%!",
		"Вы выпускаете свои соки в подмышку %USER%!",
		"Вы покрываете подмышку %USER% своими соками!"
	))
	message = list(
		"Работает своей подмышкой, развлекая член %TARGET%.",
		"Зажимает член %TARGET% между своим телом и рукой!",
		"Вздраичвает член %TARGET% при помощи своей подмышки.",
		"Ласкает пенис %TARGET% своим подреберьем."
	)
	user_messages = list(
		"Вы ощущаете, как член %TARGET% пульсирует в вашей подмышке.",
		"Тепло ствола %TARGET% заполняет ямку вашей подмышки, вызывая подрагивания.",
		"Вы ощущаете давление от натирания членом %TARGET% о вашу подмышку."
	)
	target_messages = list(
		"Горячая подмышка %USER% приятно гладит ваш член.",
		"Ваш ствол скользит между рукой и телом %USER% пульсируя от удовольствия.",
		"Мягкость подмышки %USER% ощущается безумно хорошо для вас."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 2
	target_arousal = 5
