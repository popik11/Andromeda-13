/// Ties the target's shoes
/datum/smite/knot_shoes
	name = "Завязаь шнурки"

/datum/smite/knot_shoes/effect(client/user, mob/living/target)
	. = ..()
	if (!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return
	var/mob/living/carbon/dude = target
	var/obj/item/clothing/shoes/sick_kicks = dude.shoes
	if (!sick_kicks || sick_kicks.fastening_type == SHOES_SLIPON)
		to_chat(user, span_warning("У [dude] нету обуви или шнуровки на ней!"), confidential = TRUE)
		return
	sick_kicks.adjust_laces(SHOES_KNOTTED)
