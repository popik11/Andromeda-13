// Действия с сосочками

/// ADD ANDROMEDA-13 (@rewokin): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/nipsuck
	name = "Пососать соски"
	description = "Посасывайте сосочки."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_BREASTS = REQUIRE_GENITAL_EXPOSED)
	message = list(
		"нежно посасывает сосок %TARGET%.",
		"нежно покусывает сосок %TARGET%.",
		"лижет сосок %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 2
	target_pleasure = 3
	target_arousal = 5

/datum/interaction/lewd/nipsuck/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()

	// Handle different intents
	// Вариации действий от интента
	switch(resolve_intent_name(user.combat_mode))
		if("harm")
			message = list(
				"кусает сосок %TARGET%.",
				"агрессивно сосет сосок %TARGET%."
			)
			target_pleasure = 4 // Aggressive sucking has higher rewards	// Агрессивное сосание приносит больше пользы
			target_arousal = 5
		if("disarm")
			message = list(
				"игриво покусывает сосок %TARGET%.",
				"дразняще посасывает сосок %TARGET%."
			)
		if("grab")
			message = list(
				"сосредоточенно сосет сосок %TARGET%.",
				"покусывает сосок %TARGET%.",
			)
			target_pleasure = 4 // Intent sucking has higher rewards	// Интент сосания имеет более высокую награду
			target_arousal = 5
	. = ..()
	message = original_messages

/datum/interaction/lewd/nipsuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/obj/item/organ/genital/breasts/breasts = target.get_organ_slot(ORGAN_SLOT_BREASTS)
	if(breasts?.internal_fluid_datum)
		// Calculate milk amount based on how full the breasts are (0.5 to 2 multiplier)
		// Рассчитайте количество молока в зависимости от наполненности груди (множитель от 0,5 до 2)
		var/milk_multiplier = 0.5
		if(breasts.internal_fluid_maximum > 0)
			milk_multiplier = 0.5 + (1.5 * (breasts.internal_fluid_count / breasts.internal_fluid_maximum))

		var/transfer_amount = rand(1, 2 * milk_multiplier)
		var/intent = resolve_intent_name(user.combat_mode)
		if(intent == "harm" || intent == "grab")
			transfer_amount = rand(1, 3 * milk_multiplier) // More aggressive sucking gets more milk	// Более агрессивное сосание позволяет получить больше молока

		var/datum/reagents/R = new(breasts.internal_fluid_maximum)
		breasts.transfer_internal_fluid(R, transfer_amount)
		R.trans_to(user, R.total_volume)
		qdel(R)

	if(!user.combat_mode && prob(5 + target.arousal))
		var/list/arousal_messages
		switch(resolve_intent_name(user.combat_mode))
			if("help")
				arousal_messages = list(
					"%TARGET% дрожит от возбуждения.",
					"%TARGET% тихо стонет.",
					"%TARGET% выдыхает тихий стон.",
					"%TARGET% gasps.",
					"%TARGET% тихонько вздрагивает.",
					"%TARGET% вздрагивает от приставаний к груди."
				)
			if("disarm")
				arousal_messages = list(
					"%TARGET% игриво извивается.",
					"%TARGET% дразняще покачивается.",
					"%TARGET% испускает игривый стон.",
					"%TARGET% прикусывает губу.",
					"%TARGET% извивается от прилюдий."
				)
			if("grab")
				arousal_messages = list(
					"%TARGET% стонет от нетерпения.",
					"%TARGET% выпячивает грудь вперед.",
					"%TARGET% издает желанный стон.",
					"%TARGET% дрожит от возбуждения.",
					"%TARGET% дрожит от предвкушения."
				)

		if(arousal_messages)
			message = list(pick(arousal_messages))
