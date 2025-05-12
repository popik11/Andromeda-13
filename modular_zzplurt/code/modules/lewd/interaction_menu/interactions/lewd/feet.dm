/// Действия ногой

//-// -Rewokin_fun_comment //-//
// Чулки или колготки? Попробуй обе и реши, на чей стороне ты.

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/grindface
	name = "Прижать ногой лицо"
	description = "Прижмите чье-нибудь лицо своей ножкой. (Это только заводит)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"Размашисто проходится своей %FEET% по лицу %TARGET%.",
		"Сильно жмется своей %FEET% к лицу %TARGET%.",
		"Натирается своей %FEET% о лицо %TARGET%.",
		"Кладет свою %FEET% прямо на лицо %TARGET%.",
		"Кладет свою %FEET% на лицо %TARGET% и сильно давит.",
		"Резко кладет свою %FEET% на лицо %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry2.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_dry4.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/grindface/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	// Get shoes or barefoot text
	// В обуви или босой ногой
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("босые ноги", "подошвы")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/grindmouth
	name = "Засунуть ножку в рот"
	description = "Пройдитесь своей ногой кому-нибудь в рот. (Это только заводит)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"Грубо пихает свою %FEET% глубже в рот %TARGET%.",
		"Грубо заталкивает еще один дюйм своей %FEET% в ротик %TARGET%.",
		"Давит свои весом, проталкивая свою %FEET% глубже в ротик %TARGET%.",
		"Заталкивает свою %FEET% глубоко в рот %TARGET%.",
		"Прижимает кончик своей %FEET% к губам %TARGET% и надавливает во-внутрь.",
		"Готовится и одним быстрым движением засовывает свою %FEET% глубоко в ротик %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg',
		'modular_zzplurt/sound/interactions/foot_wet3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 3
	target_arousal = 3

/datum/interaction/lewd/grindmouth/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("босые ноги", "пальцы", "подошвы")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob
	name = "Работа ножкой (ФутДжоб)"
	description = "Вздрочните кому-нибудь своей ножкой. (Это заводит, Немного приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"Дрочит член %TARGET% используя свою %FEET%.",
		"Трется своей %FEET% о ствол %TARGET%.",
		"Работает своей %FEET% вверх и вниз на пенисе %TARGET%."
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Кончает по всей %FEET% %USER% своим семенем.",
			"Покрывает %FEET% %USER% в своем смени.",
			"Выпрыскивает все соки прямо на %FEET% %USER%."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы кончаете по всей %FEET% %USER% своим семенем.",
			"Вы покрываете семенем всю %FEET% %USER%.",
			"Вы выпрыскиваете все свои соки прямо на %FEET% %USER%."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Обильно кончает прямо на вашу %FEET%.",
			"%TARGET% Покрывает вашу %FEET% своим семенем.",
			"%TARGET% Выстреливает все что есть на вашу %FEET%."
		)
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	target_pleasure = 4
	user_pleasure = 0
	user_arousal = 3
	target_arousal = 6

/datum/interaction/lewd/footjob/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("ножка", "подошвы")

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob/show_climax(mob/living/cumming, mob/living/came_in, position)
	var/obj/item/clothing/shoes/worn_shoes = cumming.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || pick("ножка", "подошвы")

	// Store original lists, with null checks
	var/list/original_message_overrides = cum_message_text_overrides[position]
	var/list/original_self_overrides = cum_self_text_overrides[position]
	var/list/original_partner_overrides = cum_partner_text_overrides[position]
	original_message_overrides = original_message_overrides?.Copy()
	original_self_overrides = original_self_overrides?.Copy()
	original_partner_overrides = original_partner_overrides?.Copy()

	// Pick and modify one message from each list
	var/message_override = replacetext(pick(cum_message_text_overrides[position]), "%FEET%", feet_text)
	var/self_override = replacetext(pick(cum_self_text_overrides[position]), "%FEET%", feet_text)
	var/partner_override = replacetext(pick(cum_partner_text_overrides[position]), "%FEET%", feet_text)

	// Set single message lists
	cum_message_text_overrides[position] = list(message_override)
	cum_self_text_overrides[position] = list(self_override)
	cum_partner_text_overrides[position] = list(partner_override)

	. = ..()

	// Restore original lists
	cum_message_text_overrides[position] = original_message_overrides
	cum_self_text_overrides[position] = original_self_overrides
	cum_partner_text_overrides[position] = original_partner_overrides

/datum/interaction/lewd/footjob/double
	name = "Двойная работа ножкой (ДаблФутДжоб)"
	description = "Вздрочните кому-нибудь своими ножками. (Это очень заводит, Это приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_FEET)
	message = list(
		"Вздрачивает член %TARGET% своими %FEET%.",
		"Надрачивает пушку %TARGET% используя свои %FEET%.",
		"Играется с членом %TARGET% задействуя %FEET%.",
		"Небрежно обводит письку %TARGET% своими %FEET%.",
		"Трется своими %FEET% о пенис %TARGET%.",
		"Работает двумя своими %FEET% вверх-вниз, заглаживая член %TARGET%."
	)
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 4
	target_arousal = 7

/datum/interaction/lewd/footjob/double/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/clothing/shoes/worn_shoes = user.get_item_by_slot(ITEM_SLOT_FEET)
	var/feet_text = worn_shoes?.name || "ножка"

	var/chosen_message = pick(message)
	chosen_message = replacetext(chosen_message, "%FEET%", feet_text)
	message = list(chosen_message)
	. = ..()
	message = original_messages

/datum/interaction/lewd/footjob/vagina
	name = "Вагинальная работа ножкой (ВагинальныйФутДжоб)"
	description = "Поработайте своей ножкой с чьей-нибудь вагиной. (Это заводит, Немного приятно)"
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	message = list(
		"Трет клитор %TARGET% используя свою %FEET%.",
		"Трется своей %FEET% о целку %TARGET%.",
		"Трется своей %FEET% о киску %TARGET%.",
		"Натирает своей %FEET% киску %TARGET%.",
		"Давит своей %FEET% киску %TARGET% попутно растирая её.",
		"Слегка толкается своей %FEET% в киску %TARGET% прижимая ту.",
		"Трет своей %FEET% вверх-вниз по кисе %TARGET%."
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Сквиртует прямо на %FEET% %USER%.",
			"%TARGET% Сквиртует на %FEET% %USER% запыхаясь.",
			"%TARGET% Обильно сквиртит прямо на %FEET% %USER%.",
			"%TARGET% Оргазмирует на %FEET% %USER%.",
			"%TARGET% Обильно оргазмирует прямо на %FEET% %USER%.",
			"%TARGET% Обильно покрывает %FEET% %USER% своими соками."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы неумолимо сквиртуете на %FEET% %USER%.",
			"Вы сквиртуете прямо на %FEET% %USER%.",
			"Вы протяжно оргазмируете на %FEET% %USER%.",
			"Вы сладко оргазмируете прямо на %FEET% %USER%.",
			"Вы тихонько и сжато стреляете соками на %FEET% %USER%.",
			"Вы обильно покрываете %FEET% %USER% вашими соками~."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Обильно сквиртует на вашу %FEET%.",
			"%TARGET% Сквиртует на вашу %FEET%.",
			"%TARGET% Неумолимо сквиртует на вашу %FEET%.",
			"%TARGET% Сочно оргазмирует на вашу %FEET%.",
			"%TARGET% Слащаво и обильно оргазмирует на вашу %FEET%.",
			"%TARGET% Покрывает вашу %FEET% обильным количеством соков."
		)
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/foot_dry1.ogg',
		'modular_zzplurt/sound/interactions/foot_dry3.ogg',
		'modular_zzplurt/sound/interactions/foot_wet1.ogg',
		'modular_zzplurt/sound/interactions/foot_wet2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 4
	user_arousal = 4
	target_arousal = 7
