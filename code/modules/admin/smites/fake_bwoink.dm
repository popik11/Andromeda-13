/// Sends the target a fake adminhelp sound
/datum/smite/fake_bwoink
	name = "Звук ахелпа"

/datum/smite/fake_bwoink/effect(client/user, mob/living/target)
	. = ..()
	SEND_SOUND(target, 'sound/effects/adminhelp.ogg')
