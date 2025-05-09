/datum/smite/dust
	name = "Пыль (С)"

/datum/smite/dust/effect(client/user, mob/living/target)
	. = ..()
	target.dust(just_ash = FALSE, drop_items = TRUE, force = TRUE)

/datum/smite/dust/divine
	name = "Пыль (С)(Б)"
	smite_flags = SMITE_DIVINE|SMITE_DELAY|SMITE_STUN
