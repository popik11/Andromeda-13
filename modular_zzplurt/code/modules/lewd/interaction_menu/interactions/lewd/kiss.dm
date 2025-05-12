// Поцелуйчики

//-// -Rewokin_fun_comment //-//
// -Иди сюда и поцелуй меня в жаркие уста. Романтики хочется..

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, масштабное дополнение ЕРП контента.
/datum/interaction/lewd/kiss
	name = "Поцеловать"
	description = "Целуй глубоко, крепко и страстно. (Это очень заводит)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"Дарит интенсивный, глубокий и продолжительный поцелуй для %TARGET%.",
		"Глубоко целует %TARGET%.",
		"Страстно сплетается с губами %TARGET% своими.",
		"Непринужденно и легко целуется с %TARGET%.",
		"Сладострастно засасывает губы %TARGET% в поцелуе.",
		"Засасывается вместе с %TARGET% в унисон.",
		"Дико и яростно целуется вместе с %TARGET%.",
		"Дарит крепкий и ласковый поцелуй для %TARGET%.",
		"Игриво и легко взаимо сплетается губами с %TARGET%.",
		"Проникает своим язычком в ротик %TARGET% делая это по-французски.",
		"Прижимает свои губы к губам %TARGET%.",
		"Легонько целует %TARGET% прикусывая губу.",
		"Сладостно целуется с %TARGET%.",
		"Протяженно, нежно и любвеобильно целуется с %TARGET%.",
		"Дарит %TARGET% страстный любовный поцелуй."
	)
	user_messages = list(
		"Вы чувствуете теплые губы %TARGET% на своих.",
		"Язычок %TARGET% ощущается глубоко между ваших уст.",
		"Вы ощущаете всю сладость губ %TARGET% подсознательно подрагивая.",
		"Вы ощущаете сладкое, французское проникновение со стороны губ %TARGET% в ваши устечка.",
		"Ваш язычок танцует с язычком %TARGET% меж вашими ртами.",
		"Вкус рта %TARGET% любовно задерживается на ваших губах."
	)
	target_messages = list(
		"Язык %USER% исследует ваш ротик.",
		"Губы %USER% горячат то небольшое расстояние между вами.",
		"Сладкие и игривые губы %USER% расходятся в желании по вашим губам.",
		"Вы сплетаете язычки с %USER% инициируя французский поцелуй между вами.",
		"Вы чувствуете, как губы %USER% страстно прижимаются к вашим.",
		"Тепло поцелуя %USER% заставляет вас содрагаться в предвкушении."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/kiss1.ogg',
		'modular_zzplurt/sound/interactions/kiss2.ogg',
		'modular_zzplurt/sound/interactions/kiss3.ogg',
		'modular_zzplurt/sound/interactions/kiss4.ogg',
		'modular_zzplurt/sound/interactions/kiss5.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 0
	user_arousal = 6
	target_arousal = 6

/datum/interaction/lewd/kiss/post_interaction(mob/living/user, mob/living/target)
	. = ..()

	// Check if user has TRAIT_KISS_SLUT and increase their lust
	// Проверьте, есть ли у пользователя TRAIT_KISS_SLUT, и увеличьте его вожделение
	if(HAS_TRAIT(user, TRAIT_KISS_SLUT))
		user.adjust_pleasure(10, target, interaction = src, position = CLIMAX_POSITION_USER)
		user.adjust_arousal(10)
	// Check if target has TRAIT_KISS_SLUT and increase their lust
	// Проверьте, есть ли у цели TRAIT_KISS_SLUT, и увеличьте ее вожделение
	if(HAS_TRAIT(target, TRAIT_KISS_SLUT))
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
		target.adjust_arousal(10)
