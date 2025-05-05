// Удушающий

/// ADD ANDROMEDA-13 (@rewokin): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/thighs_penis
	name = "Удушение (Член)"
	description = "Задушите своим пенисом."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"давит своим весом на лицо %TARGET%, полностью закрывая обзор.",
		"вставляет свой член в лицо, удерживая между бёдер %TARGET%, елозя своим членом.",
		"вставляет в рот %TARGET% свой член сильно вдавливая, не давая вдохнуть."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2

/datum/interaction/lewd/thighs_vagina
	name = "Удушение (Вагина)"
	description = "Задуши своей киской."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"давит своим весом на лицо %TARGET%, полностью закрывая обзор.",
		"полностью закрывает лицо, удерживая между бёдер %TARGET%, втирая свою мокрую киску.",
		"втирает свою киску в рот %TARGET%, не давая вдохнуть."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 2

//-// -Rewokin_horni_comment //-//
// Ммм~

/datum/interaction/lewd/thighfuck
	name = "Трахнуть бёдра"
	description = "Трахни бедра."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_BOTTOMLESS)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"кончает на бёдра %TARGET%",
		"кончает на ноги %TARGET%",
		"покрывает бёдра %TARGET% спермой"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"Вы кончаете на бёдра %TARGET%",
		"Вы кончаете на ноги %TARGET%",
		"Вы покрываете бёдра %TARGET% спермой"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_USER = list(
		"%USER% кончает на твои бёдра",
		"%USER% кончает вам на ноги",
		"%USER% покрывает ваши бёдра спермой"
	))
	message = list(
		"трахает бёдра %TARGET%",
		"скользит членом между бёдер %TARGET%",
		"вставляет член между бедер %TARGET%",
	)
	user_messages = list(
		"Вы чувствуете, как бёдра %TARGET% сжимают ваш член",
		"Тепло между ног %TARGET% ощущается потрясающе",
		"Мягкие бёдра %TARGET% прекрасно ощущаются вокруг твоего члена"
	)
	target_messages = list(
		"Вы чувствуете, как член %USER% скользит между вашими бёдрами",
		"Член %USER% трется между твоих ног",
		"Тёплый член %USER% прижимается к вашим бёдрам"
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
	user_arousal = 6
	target_arousal = 4

//-// -Rewokin_horni_comment //-//
// Ммм~~!!

/datum/interaction/lewd/thighjob
	name = "Трахнуть бёдрами"
	description = "Ублажайте бедрами."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_BOTTOMLESS)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_message_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"кончает на бёдра %USER%",
		"кончает на ноги %USER%",
		"покрывает бёдра %USER% спермой"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"%TARGET% кончает на твои бёдра",
		"%TARGET% кончает вам на ноги",
		"%TARGET% покрывает ваши бёдра спермой"
	))
	cum_partner_text_overrides = list(CLIMAX_POSITION_TARGET = list(
		"ВЫ кончаете на бёдра %USER%",
		"Вы кончаете на ноги %USER%",
		"Вы покрываете бёдра %USER% спермой"
	))
	message = list(
		"сжимает член %TARGET% между своих бёдер",
		"доставляет удовольствие %TARGET% своими бёдрами",
		"трет член %TARGET% между ног"
	)
	user_messages = list(
		"Вы чувствуешь, как член %TARGET% пульсирует между ваших бёдер",
		"Тепло члена %TARGET% приятно ощущается между ног",
		"Вы сжимаете член %TARGET% своими бёдрами"
	)
	target_messages = list(
		"Теплые бёдра %USER% сжимают твой член",
		"Ваш член скользит между ног %USER%",
		"Мягкость бедер %USER% ощущается потрясающе"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 4
	target_arousal = 6
