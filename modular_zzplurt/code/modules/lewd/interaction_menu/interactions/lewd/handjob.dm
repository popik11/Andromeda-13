/datum/interaction/lewd/handjob	/// ADD ANDROMEDA-13 (@Мисс Кира): Перевод, дополнение ЕРП контента.
	name = "Ручная Работа(ХэндДжоб)"
	description = "Поработай ручками с кем-нибудь."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	message = list(
		"Вздрачивает член %TARGET%",
		"Работае со стволом %TARGET% своими руками",
		"Жестко вздрачивает %TARGET% за член"
	)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Кончает на руки %USER%!",
			"Выплескивает свои соки на руки %USER%!",
			"Покрывает семенем пальцы %USER%!"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы кончаете на руки %USER%!",
			"Вы стреляете на ладошки %USER%!",
			"Вы покрываете семенем пальчики %USER%!"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Кончает на ваши руки!",
			"%TARGET% Стреляет на ваши ладошки!",
			"%TARGET% Покрывает семенем ваши пальчики!"
		)
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	user_arousal = 3
	target_pleasure = 4
	target_arousal = 6

/datum/interaction/lewd/handjob/act(mob/living/user, mob/living/target)
	var/obj/item/liquid_container

	// Check active hand first
	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		// Check if pulling a container
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	// Add container text to message if needed
	if(liquid_container)
		var/list/original_messages = message.Copy()
		var/chosen_message = pick(message)
		message = list("[chosen_message] над [liquid_container]")
		interaction_modifier_flags |= INTERACTION_OVERRIDE_FLUID_TRANSFER
		. = ..()
		interaction_modifier_flags &= ~INTERACTION_OVERRIDE_FLUID_TRANSFER
		message = original_messages
	else
		. = ..()

/datum/interaction/lewd/handjob/show_climax(mob/living/cumming, mob/living/came_in, position)
	if(interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER)
		var/obj/item/liquid_container

		// Check active hand first
		var/obj/item/cached_item = came_in.get_active_held_item()
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item
		else
			// Check if pulling a container
			cached_item = came_in.pulling
			if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
				liquid_container = cached_item

		if(liquid_container)
			// Store original lists, with null checks
			var/list/original_message_overrides = cum_message_text_overrides[position]
			var/list/original_self_overrides = cum_self_text_overrides[position]
			var/list/original_partner_overrides = cum_partner_text_overrides[position]
			original_message_overrides = original_message_overrides?.Copy()
			original_self_overrides = original_self_overrides?.Copy()
			original_partner_overrides = original_partner_overrides?.Copy()

			// Set container-specific messages
			cum_message_text_overrides[position] = list("Кончает в [liquid_container].")
			cum_self_text_overrides[position] = list("Вы кончаете в [liquid_container].")
			cum_partner_text_overrides[position] = list("%TARGET% кончает в [liquid_container].")

			. = ..()

			// Restore original messages
			cum_message_text_overrides[position] = original_message_overrides
			cum_self_text_overrides[position] = original_self_overrides
			cum_partner_text_overrides[position] = original_partner_overrides
			return

	. = ..()

/datum/interaction/lewd/handjob/post_climax(mob/living/cumming, mob/living/came_in, position)
	if(interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER)
		var/obj/item/liquid_container

		// Check active hand first
		var/obj/item/cached_item = came_in.get_active_held_item()
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item
		else
			// Check if pulling a container
			cached_item = came_in.pulling
			if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
				liquid_container = cached_item

		if(liquid_container)
			var/obj/item/organ/genital/testicles/testicles = cumming.get_organ_slot(ORGAN_SLOT_TESTICLES)
			if(testicles)
				testicles.transfer_internal_fluid(liquid_container.reagents, testicles.internal_fluid_count)

	. = ..()
