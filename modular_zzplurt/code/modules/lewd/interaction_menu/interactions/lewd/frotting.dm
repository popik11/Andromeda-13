/datum/interaction/lewd/frotting ///Translate + addons with messages + redacted by MissKira
	name = "Фроттинг(Гомосексуальный Секс)"
	description = "Потри свой о чужой."
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS, CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = null, CLIMAX_POSITION_TARGET = null)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Полноценно кончает на член %TARGET%.",
			"Выстреливает семенем на ствол %TARGET%",
			"Покрывает член %TARGET% своим семенем."
		),
		CLIMAX_POSITION_TARGET = list(
			"Кончает на член %USER%.",
			"Выстреливает семенем на ствол %USER%.",
			"Покрывает семенем пенис %USER%."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы сквиртуете на член %TARGET%.",
			"Вы стреляете семенем на член %TARGET%",
			"Вы покрываете семенем член %TARGET%."
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы сквиртуете на член %USER%.",
			"Вы стреляете семенем на член %USER%.",
			"Вы покрываете семенем пенис %USER%."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает на ваш член.",
			"%USER% Стреляет семенем в ваш ствол.",
			"%USER% Покрывает семенем ваш ствол."
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Кончает на ваш член.",
			"%TARGET% Стреляет семенем в ваш ствол.",
			"%TARGET% Покрывает семенем ваш ствол."
		)
	)
	message = list(
		"Гладится членом о член %TARGET%.",
		"Трется членом о член %TARGET%.",
		"Вжимается членом в член %TARGET%.",
		"Фроттится о %TARGET%."
	)
	sound_use = TRUE
	sound_range = 1
	user_pleasure = 4
	target_pleasure = 4
	user_arousal = 8
	target_arousal = 8

/datum/interaction/lewd/tribadism
	name = "Трибадизм(Лесбиянский Секс)"
	description = "Потрись своей киской о чужую киску."
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA, CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = ORGAN_SLOT_VAGINA, CLIMAX_POSITION_TARGET = ORGAN_SLOT_VAGINA)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Сквиртует прямо на киску %TARGET%!",
			"Крепко вжавшись тазом и киской, сквиртует прямо в целку %TARGET%!",
			"Обильно сквиртует прямо на киску %TARGET%!",
			"Неумолимо дрожа, сквиртует на киску %TARGET%!",
			"Подрагивая, обильно оргазмирует на киску %TARGET%!",
			"Подрагивая, нежно и струйками оргазмирует в киску %TARGET%!",
			"Небрежно и сильно вздрагивая, пачкает тело %TARGET% своими соками!",
			"Стреляет своими соками прямо на киску %TARGET%!",
			"Сильно пачкает киску %TARGET% своими соками!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Сквиртует прямо на киску %USER%!",
			"Крепко вжавшись тазом и киской, сквиртует прямо в целку %TARGET%!",
			"Обильно сквиртует прямо на киску %TARGET%!",
			"Неумолимо дрожа, сквиртует на киску %TARGET%!",
			"Подрагивая, обильно оргазмирует на киску %TARGET%!",
			"Подрагивая, нежно и струйками оргазмирует в киску %TARGET%!",
			"Небрежно и сильно вздрагивая, пачкает тело %TARGET% своими соками!",
			"Стреляет своими соками прямо на киску %USER%!",
			"Сильно пачкает киску %USER% своими соками!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы сквиртуете прямо на киску %TARGET%!",
			"Вы крепко вжавшись тазом и киской, сквиртуете прямо в целку %TARGET%!",
			"Вы обильно сквиртуете прямо на киску %TARGET%!",
			"Вы неумолимо дрожа, сквиртуете прямо на киску %TARGET%!",
			"Вы подрагивая, обильно оргазмируете на киску %TARGET%!",
			"Вы подрагивая, нежно и струйками оргазмируете в киску %TARGET%!",
			"Вы небрежно и сильно вздрагивая, пачкаете тело %TARGET% своими соками!",
			"Вы стреляете сладкими соками прямо на киску %TARGET%!",
			"Вы покрываете киску %TARGET% обилием своих соков!"
		),
		CLIMAX_POSITION_TARGET = list(
			"Вы сквиртуете прямо на киску %USER%!",
			"Вы крепко вжавшись тазом и киской, сквиртуете прямо в целку %USER%!",
			"Вы обильно сквиртуете прямо на киску %USER%!",
			"Вы неумолимо дрожа, сквиртуете прямо на киску %USER%!",
			"Вы подрагивая, обильно оргазмируете на киску %USER%!",
			"Вы подрагивая, нежно и струйками оргазмируете в киску %USER%!",
			"Вы небрежно и сильно вздрагивая, пачкаете тело %USER% своими соками!",
			"Вы стреляете сладкими соками прямо на киску %USER%!",
			"Вы покрываете киску %USER% обилием своих соков!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Сквиртует прямо на вашу киску!",
			"%USER% Крепко вжавшись тазом и киской, сквиртует прямо в вашу целку!",
			"%USER% Обильно сквиртует прямо на вашу киску!",
			"%USER% Неумолимо дрожа, сквиртует прямо на вашу киску!",
			"%USER% Подрагивая, обильно оргазмирует на вашу кису!",
			"%USER% Подрагивая, нежно и струйками оргазмирует в вашу пизденку!",
			"%USER% Небрежно и сильно вздрагивая, пачкает ваше тело своими соками!",
			"%USER% Стреляет своими соками прямо на вашу киску!",
			"%USER% Покрывает ваш таз и киску своими сладкими соками!"
		),
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Сквиртует прямо на вашу киску!",
			"%TARGET% Крепко вжавшись тазом и киской, сквиртует прямо в вашу целку!",
			"%TARGET% Обильно сквиртует прямо на вашу киску!",
			"%TARGET% Неумолимо дрожа, сквиртует прямо на вашу киску!",
			"%TARGET% Подрагивая, обильно оргазмирует на вашу кису!",
			"%TARGET% Подрагивая, нежно и струйками оргазмирует в вашу пизденку!",
			"%TARGET% Небрежно и сильно вздрагивая, пачкает ваше тело своими соками!",
			"%TARGET% Стреляет своими соками прямо на вашу киску!",
			"%TARGET% Покрывает ваш таз и киску своими сладкими соками!"
		)
	)
	message = list(
		"Теребится своей пиздой о пизду %TARGET%.",
		"Вжимается своей пиздой в киску %TARGET% и потирается.",
		"Натирается своей киской о киску %TARGET% с легким постоном.",
		"Вздрачивает свою кису о кису %TARGET% в обоюдном трении.",
		"Долбится своей киской прямо в таз %TARGET% скрещивая киски.",
		"Покрепче ухватившись за %TARGET% натирается кисками.",
		"Настойчиво сдавливает пизду %TARGET% своей пиздой, с хлюпающим звуком.",
		"Вдавливает %TARGET% сплетаясь в поцелуе кисами.",
		"Трибадирует вместе с %TARGET% слащаво гладясь кисками.",
		"Трется своей киской о целку %TARGET% издавая влажные звуки.",
		"Дрочит своей киской о пизду %TARGET%.",
		"Выгинается скрещивая киску с киской %TARGET% создавая хлюп."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/squelch1.ogg',
		'modular_zzplurt/sound/interactions/squelch2.ogg',
		'modular_zzplurt/sound/interactions/squelch3.ogg'
	)
	sound_range = 2
	sound_use = TRUE
	user_pleasure = 6
	target_pleasure = 6
	user_arousal = 10
	target_arousal = 10
