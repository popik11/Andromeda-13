/client/verb/check_antag_tickets()
	set name = "Проверьте тикет на антага"
	set category = "OOC"

	var/antag_ticket_rate = CONFIG_GET(number/antag_tickets_per_update)

	if(!antag_ticket_rate)
		to_chat(src,span_notice("В настоящее время тикеты на антага не раздаются."))
		return

	var/antag_ticket_count = get_antag_tickets()
	var/antag_ticket_gain = antag_ticket_multiplier()*antag_ticket_rate

	to_chat(src,span_notice("В данный момент у вас есть <b>[antag_ticket_count]</b> тикет антаг, и [antag_ticket_gain >= 0 ? "выигрыш" : "проигрыш"] <b>[abs(antag_ticket_gain)]</b> каждый раз отменяются тикеты [DisplayTimeText(SSblackbox.wait,1)]."))

/client/verb/antag_tickets_info()
	set name = "Что такое тикеты антага?"
	set category = "OOC"

	var/antag_ticket_rate = CONFIG_GET(number/antag_tickets_per_update)

	if(!antag_ticket_rate)
		to_chat(span_notice("Тикеты на антага в данный момент отключены, поэтому вы можете не беспокоиться о них."))
		return

	var/information = "\
	Антаговские тикет - это способ сбалансировать игровое время между антагонистом и неантагонистом. \
	Если у вас больше антагонистических билетов, вы с большей вероятностью будете выбраны антагонистом, а если меньше - с меньшей. \
	Тикеты антага приобретаются, когда вы играете за команду и не являетесь антагонистом, а тикеты антага тратятся, когда вы играете за антагониста. \
	Обратите внимание, что, будучи антагонистом, вы не теряете антаг-тикеты, если на вас надеты наручники, вы скованы, мертвы, крит, недееспособны или находитесь в тюрьме."

	to_chat(src,span_notice(information))
