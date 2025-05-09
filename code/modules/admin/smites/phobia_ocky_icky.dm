/// "Immerses" the player, making them unable to use some OOC terms IC
/// «Погружает» игрока, делая его неспособным использовать некоторые OOC-термины IC.
/datum/smite/ocky_icky
	name = "Фобия ICки-фобия"

/datum/smite/ocky_icky/effect(client/user, mob/living/target)
	. = ..()
	var/mob/living/carbon/ocker = target
	ocker.gain_trauma(/datum/brain_trauma/mild/phobia/ocky_icky, TRAUMA_RESILIENCE_LOBOTOMY)

