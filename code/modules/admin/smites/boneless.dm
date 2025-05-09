/// Gives the target critically bad wounds
/datum/smite/boneless
	name = "Сломать кости"

/datum/smite/boneless/effect(client/user, mob/living/target)
	. = ..()

	if (!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return

	var/mob/living/carbon/carbon_target = target
	for(var/obj/item/bodypart/limb as anything in carbon_target.bodyparts)
		var/severity = pick_weight(list(
			WOUND_SEVERITY_MODERATE = 1,
			WOUND_SEVERITY_SEVERE = 2,
			WOUND_SEVERITY_CRITICAL = 2,
		))
		carbon_target.cause_wound_of_type_and_severity(WOUND_BLUNT, limb, severity)
