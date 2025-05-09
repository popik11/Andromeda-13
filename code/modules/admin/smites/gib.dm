/// Gibs the target
/datum/smite/gib
	name = "Убить на месте (С)"

/datum/smite/gib/effect(client/user, mob/living/target)
	. = ..()
	target.gib(DROP_ORGANS|DROP_BODYPARTS)

/datum/smite/gib/divine
	name = "Убить на месте (С) (Б)"
	smite_flags = SMITE_DIVINE|SMITE_DELAY|SMITE_STUN
