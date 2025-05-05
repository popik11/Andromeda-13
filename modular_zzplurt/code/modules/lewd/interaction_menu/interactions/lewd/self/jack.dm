/// ADD ANDROMEDA-13 (@rewokin): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/jack_self
	name = "Подрочи член (Себе)"
	description = "Ты знаешь, что делать с этим питоном."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	usage = INTERACTION_SELF
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	cum_message_text_overrides = list(CLIMAX_POSITION_USER = list(
		"обильно кончает на руку",
		"кончает в кулачёк",
		"эякулирует на ладонь"
	))
	cum_self_text_overrides = list(CLIMAX_POSITION_USER = list(
		"Вы обильно кончаете на свою руку",
		"Вы кончаете в кулачёк",
		"Вы эякулируете на свою ладонь"
	))
	message = list(
		"дрочит свой член",
		"активно дрочит рукой",
		"дрочит",
		"мастурбирует"
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bang1.ogg',
		'modular_zzplurt/sound/interactions/bang2.ogg',
		'modular_zzplurt/sound/interactions/bang3.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 4
	user_arousal = 6

/datum/interaction/lewd/jack_self/act(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(!ishuman(user))
		return
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

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

/datum/interaction/lewd/jack_self/post_climax(mob/living/carbon/human/user, mob/living/carbon/human/target, position)
	if(!ishuman(user))
		return
	var/obj/item/liquid_container
	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		var/obj/item/organ/genital/testicles/testicles = user.get_organ_slot(ORGAN_SLOT_TESTICLES)
		if(testicles?.internal_fluid_datum)
			var/datum/reagents/R = new(testicles.internal_fluid_maximum)
			testicles.transfer_internal_fluid(R, testicles.internal_fluid_count)
			R.trans_to(liquid_container, R.total_volume)
			qdel(R)
	. = ..()
