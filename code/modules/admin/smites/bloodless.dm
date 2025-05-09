/// Slashes up the target
/datum/smite/bloodless
	name = "Вскрыть вены (С)"

/datum/smite/bloodless/effect(client/user, mob/living/target)
	. = ..()
	if (!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return
	var/mob/living/carbon/carbon_target = target
	for(var/_limb in carbon_target.bodyparts)
		var/obj/item/bodypart/limb = _limb // fine to use this raw, its a meme smite
		var/type_wound = pick(list(/datum/wound/slash/flesh/severe, /datum/wound/slash/flesh/moderate))
		limb.force_wound_upwards(type_wound, smited = TRUE)
		type_wound = pick(list(/datum/wound/slash/flesh/critical, /datum/wound/slash/flesh/severe, /datum/wound/slash/flesh/moderate))
		limb.force_wound_upwards(type_wound, smited = TRUE)
		type_wound = pick(list(/datum/wound/slash/flesh/critical, /datum/wound/slash/flesh/severe))
		limb.force_wound_upwards(type_wound, smited = TRUE)
