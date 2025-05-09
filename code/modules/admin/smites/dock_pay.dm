/// Docks the target's pay
/datum/smite/dock_pay
	name = "Плати налоги"

/datum/smite/dock_pay/effect(client/user, mob/living/target)
	. = ..()
	if (!iscarbon(target))
		to_chat(user, span_warning("Его необходимо использовать на карбоновом мобе."), confidential = TRUE)
		return
	var/mob/living/carbon/dude = target
	var/obj/item/card/id/card = dude.get_idcard(TRUE)
	if (!card)
		to_chat(user, span_warning("У [dude] нет ID карты!"), confidential = TRUE)
		return
	if (!card.registered_account)
		to_chat(user, span_warning("[dude] нет ID карты со счетом!"), confidential = TRUE)
		return
	if (card.registered_account.account_balance == 0)
		to_chat(user,  span_warning("На ID карте отсутствуют какие-либо средства. Заплатить нечем."))
		return
	var/new_cost = input("Сколько списать со счёта? Текущий баланс: [card.registered_account.account_balance] кредитов.", "СОКРАЩЕНИЕ БЮДЖЕТА") as num|null
	if (!new_cost)
		return
	if (!(card.registered_account.has_money(new_cost)))
		to_chat(user,  span_warning("На ID-карте не хватает средств. Опустошение счета."))
		card.registered_account.bank_card_talk("[new_cost] кредиты, списанные с вашего счета по результатам оценки работы.")
		card.registered_account.account_balance = 0
	else
		card.registered_account.account_balance = card.registered_account.account_balance - new_cost
		card.registered_account.bank_card_talk("[new_cost] кредиты, списанные с вашего счета по результатам оценки работы.")
	SEND_SOUND(target, 'sound/machines/buzz/buzz-sigh.ogg')
