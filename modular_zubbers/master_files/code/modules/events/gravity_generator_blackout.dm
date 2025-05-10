/datum/round_event/gravity_generator_blackout
	announce_when = 3
	start_when = 1
	announce_chance = 100

/datum/round_event/gravity_generator_blackout/announce(fake)
	priority_announce("Обнаружен всплеск обратной связи в системах распределения массы [station_name()]. Искусственная гравитация была отключена на время повторной инициализации системы. Требуется ручной сброс генератора гравитации.", "[command_name()] Инженерный Отдел", ANNOUNCER_GRAVGENBLACKOUT)
