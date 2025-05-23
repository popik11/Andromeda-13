/datum/controller/subsystem/ticker
	var/quote_of_the_round_record_start
	var/quote_of_the_round_text
	var/quote_of_the_round_attribution
	var/quote_of_the_round_ckey

/datum/controller/subsystem/ticker/Initialize()
	. = ..()
	quote_of_the_round_record_start = rand(CONFIG_GET(number/quote_of_the_round_time_random_start), CONFIG_GET(number/quote_of_the_round_time_random_end))
	message_admins(
		span_notice("Уведомление: Цитата раунда будет выбрана через [DisplayTimeText(quote_of_the_round_record_start,1)].")
	)
	log_runtime("Цитата раунда будет выбрана через [DisplayTimeText(quote_of_the_round_record_start,1)].")

/datum/controller/subsystem/ticker/declare_completion(force_ending)

	if(!CONFIG_GET(flag/roundend_embeds)) // SPLURT EDIT - Discord rounded embeds.
		if(quote_of_the_round_text)
			for(var/channel_tag in CONFIG_GET(str_list/channel_announce_new_game))
				send2chat(
					new /datum/tgs_message_content(generate_quote_of_the_round()),
					channel_tag
				)
			to_chat(world, span_notice("A quote of the round was found, and should have been sent to discord."))
			log_runtime("A quote of the round was found, and should have been sent to discord.")

		else
			if(world.time <= quote_of_the_round_record_start)
				to_chat(world, span_notice("A quote of the round could not be found due to the round being too short."))
				log_runtime("A quote of the round could not be found. The round ended too early.")
			else
				to_chat(world, span_notice("A quote of the round could not be found. Perhaps the crew should be more memorable."))
				log_runtime("A quote of the round could not be found. Perhaps the filters are too strict?")

	. = ..()

/datum/controller/subsystem/ticker/proc/generate_quote_of_the_round()
	return "A shift on [SSmapping.current_map.map_name] has ended.\n\
	[pick(strings("quote_of_the_round.json", "workers"))] [pick(strings("quote_of_the_round.json", "action"))] [pick(strings("quote_of_the_round.json", "message"))] that occured during said shift:\n\
	> *[quote_of_the_round_text]*\n \\- *[quote_of_the_round_attribution]*"
