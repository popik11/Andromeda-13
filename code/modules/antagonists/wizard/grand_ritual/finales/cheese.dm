/**
 * Gives the wizard a defensive/mood buff and a Wabbajack, a juiced up chaos staff that will surely break something.
 * Everyone but the wizard goes crazy, suffers major brain damage, and is given a vendetta against the wizard.
 * Already insane people are instead cured of their madness, ignoring any other effects as the station around them loses its marbles.
 */
/datum/grand_finale/cheese
	// we don't set name, desc and others, thus we won't appear in the radial choice of a normal finale rune
	dire_warning = TRUE
	minimum_time = 45 MINUTES //i'd imagine speedrunning this would be crummy, but the wizard's average lifespan is barely reaching this point

/datum/grand_finale/cheese/trigger(mob/living/invoker)
	message_admins("[key_name(invoker)] вызвал Ваббаджека и проклял команду безумием!")
	priority_announce("Опасность: На станции был вызван чрезвычайно мощный объект, изменяющий реальность. Рекомендуется немедленная эвакуация. Приготовиться к удару.", "[command_name()] Высшие Измерение", 'sound/effects/glass/glassbr1.ogg')

	for (var/mob/living/carbon/human/crewmate as anything in GLOB.human_list)
		if (isnull(crewmate.mind))
			continue
		if (crewmate == invoker) //everyone but the wizard is royally fucked, no matter who they are
			continue
		if (crewmate.has_trauma_type(/datum/brain_trauma/mild/hallucinations)) //for an already insane person, this is retribution
			to_chat(crewmate, span_boldwarning("Окружающее вас пространство внезапно наполняется какофонией маниакального смеха и психологической болтовни..."))
			to_chat(crewmate, span_nicegreen("...но проходит мгновение, и вы понимаете, что эльдрическая сила, стоящая за этим событием, затронула вас \
				срезонировала в руинах вашего и без того разрушенного разума, создав сингулярность психической нестабильности! \
				По мере того, как она разрушается, вы чувствуете... покой, наконец."))
			if(crewmate.has_quirk(/datum/quirk/insanity))
				crewmate.remove_quirk(/datum/quirk/insanity)
			else
				crewmate.cure_trauma_type(/datum/brain_trauma/mild/hallucinations, TRAUMA_RESILIENCE_ABSOLUTE)
		else
			//everyone else gets to relish in madness
			//yes killing their mood will also trigger mood hallucinations
			create_vendetta(crewmate.mind, invoker.mind)
			to_chat(crewmate, span_boldwarning("Окружающее вас пространство внезапно наполняется какофонией маниакального смеха и психологической болтовни. \n\
				Вы чувствуете, как ваша внутренняя психика разбивается на мириады осколков зазубренного стекла неизвестных Вселенной цветов, \
				бесконечно отражая ослепительный, сводящий с ума свет, исходящий из самых потаенных святилищ вашего разрушенного разума. \n\
				После короткой паузы, которая показалась вам тысячелетием, одна фраза беспрестанно повторяется в вашей голове, пропитанная ложной надеждой на освобождение... \n\
				<b>[invoker] должен умереть.</b>"))
			var/datum/brain_trauma/mild/hallucinations/added_trauma = new()
			added_trauma.resilience = TRAUMA_RESILIENCE_ABSOLUTE
			crewmate.adjustOrganLoss(ORGAN_SLOT_BRAIN, BRAIN_DAMAGE_DEATH - 25, BRAIN_DAMAGE_DEATH - 25) //you'd better hope chap didn't pick a hypertool
			crewmate.gain_trauma(added_trauma)
			crewmate.add_mood_event("wizard_ritual_finale", /datum/mood_event/madness_despair)

	//drip our wizard out
	invoker.apply_status_effect(/datum/status_effect/blessing_of_insanity)
	invoker.add_mood_event("wizard_ritual_finale", /datum/mood_event/madness_elation)
	var/obj/item/gun/magic/staff/chaos/true_wabbajack/the_wabbajack = new
	invoker.put_in_active_hand(the_wabbajack)
	to_chat(invoker, span_mind_control("Все ваши инстинкты и рациональные мысли кричат вам, когда [the_wabbajack] появляется в вашем крепком захвате..."))
