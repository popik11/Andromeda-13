GLOBAL_VAR_INIT(temporary_flavor_text_indicator, generate_temporary_flavor_text_indicator())

/proc/generate_temporary_flavor_text_indicator()
	var/mutable_appearance/temporary_flavor_text_indicator = mutable_appearance('modular_skyrat/modules/indicators/icons/temporary_flavor_text_indicator.dmi', "flavor", FLY_LAYER)
	temporary_flavor_text_indicator.appearance_flags = APPEARANCE_UI_IGNORE_ALPHA | KEEP_APART
	return temporary_flavor_text_indicator

/mob/living/verb/set_temporary_flavor()
	set category = "IC"
	set name = "Установить текст временного аромата"
	set desc = "Позволяет задать временный текст аромата."

	if(stat != CONSCIOUS)
		to_chat(usr, span_warning("Теперь вы не можете задать временный текст аромата..."))
		return

	var/msg = tgui_input_text(usr, "Установите временный текст вкуса в глаголе 'осмотреть'. Он предназначен для описания того, что люди могут узнать, взглянув на вашего персонажа.", "Временное описание вкуса", temporary_flavor_text, max_length = MAX_FLAVOR_LEN, multiline = TRUE)
	if(msg == null)
		return

	// Turn empty input into no flavor text
	var/result = msg || null
	temporary_flavor_text = result
	update_appearance(UPDATE_ICON|UPDATE_OVERLAYS)

/mob/living/update_overlays()
	. = ..()
	if (temporary_flavor_text)
		. += GLOB.temporary_flavor_text_indicator

