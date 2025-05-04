#define CHOICE_TRANSFER "Initiate Crew Transfer"
#define CHOICE_CONTINUE "Continue Playing"

/datum/vote/transfer_vote
	name = "Шаттл"
	default_choices = list(
		CHOICE_TRANSFER,
		CHOICE_CONTINUE,
	)
	default_message = "Проголосуйте за то, чтобы вызов шаттла."

/datum/vote/transfer_vote/toggle_votable()
	CONFIG_SET(flag/allow_vote_transfer, !CONFIG_GET(flag/allow_vote_transfer))

/datum/vote/transfer_vote/is_config_enabled()
	return CONFIG_GET(flag/autotransfer) && CONFIG_GET(flag/allow_vote_transfer)

/datum/vote/transfer_vote/can_be_initiated(forced)
	. = ..()
	if(. != VOTE_AVAILABLE)
		return .

	if(forced)
		return VOTE_AVAILABLE

	if(!CONFIG_GET(flag/autotransfer) || !CONFIG_GET(flag/allow_vote_transfer))
		return "Голосование за шаттл отключено."

	return VOTE_AVAILABLE

/datum/vote/transfer_vote/finalize_vote(winning_option)
	if(winning_option == CHOICE_CONTINUE)
		return

	if(winning_option == CHOICE_TRANSFER)
		SSshuttle.autoEnd()
		var/obj/machinery/computer/communications/comms_console = locate() in GLOB.shuttle_caller_list
		if(comms_console)
			comms_console.post_status("shuttle")
		return

	CRASH("[type] не был передан правильный вариант выигрыша. (Получено: [winning_option || "null"])")

#undef CHOICE_TRANSFER
#undef CHOICE_CONTINUE
