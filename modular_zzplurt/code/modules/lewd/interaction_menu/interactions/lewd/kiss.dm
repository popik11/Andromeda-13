/datum/interaction/lewd/kiss /// Translate + addons for messages by MissKira
	name = "Поцеловать"
	description = "Целуй глубоко, крепко и страстно."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH, INTERACTION_REQUIRE_TARGET_MOUTH)
	message = list(
		"Дарит интенсивный, глубокий и продолжительный поцелуй для %TARGET%.",
		"Глубоко целует %TARGET%.",
		"Проникает своим язычком в ротик %TARGET% делая это по-французски.",
		"Прижимает свои губы к губам %TARGET%.",
		"Легонько целует %TARGET% прикусывая губу.",
		"Сладостно целуется с %TARGET%.",
		"Протяженно, нежно и любвеобильно целуется с %TARGET%.",
		"Дарит %TARGET% страстный любовный поцелуй."
	)
	user_messages = list(
		"Вы чувствуете теплые губы %TARGET% на своих.",
		"Твой язычок танцует с язычком %TARGET% меж вашими ртами.",
		"Вкус рта %TARGET% любовно задерживается на ваших губах."
	)
	target_messages = list(
		"Язык %USER% исследует ваш ротик.",
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
	user_arousal = 4
	target_arousal = 4

/datum/interaction/lewd/kiss/post_interaction(mob/living/user, mob/living/target)
	. = ..()

	// Check if user has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(user, TRAIT_KISS_SLUT))
		user.adjust_pleasure(10, target, interaction = src, position = CLIMAX_POSITION_USER)
		user.adjust_arousal(10)
	// Check if target has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(target, TRAIT_KISS_SLUT))
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
		target.adjust_arousal(10)
