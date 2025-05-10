/datum/round_event_control/mice_migration
	name = "Mice Migration"
	typepath = /datum/round_event/mice_migration
	weight = 10
	category = EVENT_CATEGORY_ENTITIES
	description = "A horde of mice arrives, and perhaps even the Rat King themselves."

/datum/round_event/mice_migration
	var/minimum_mice = 5
	var/maximum_mice = 15

/datum/round_event/mice_migration/announce(fake)
	var/cause = pick("космической зимы", "сокращение бюджета", "голода",
		"холодного космоса", "\[ОТРЕДАКТИРОВАНО\]", "изменения климата",
		"невезения")
	var/plural = pick("несколько", "орава", "стая", "рой",
		"группа", "не более [maximum_mice]")
	var/name = pick("грызунов", "мышей", "пищащих тварей",
		"млекопитающих, поедающие провода", "\[ОТРЕДАКТИРОВАНО\]", "паразитов, истощающие энергию")
	var/movement = pick("мигрируют", "роятся", "проникают", "обитают")
	var/location = pick("maintenance tunnels", "maintenance areas",
		"\[ОТРЕДАКТИРОВАНО\]")

	priority_announce("Из-за [cause], [plural] [name] и сейчас [movement] \
		в [location].", "Миграционное предупреждение",
		SSstation.announcer.event_sounds[ANNOUNCER_MOUSE_MIGRATION] || 'sound/mobs/non-humanoids/mouse/mousesqueek.ogg') // SPLURT EDIT - ORIGINAL: 'sound/mobs/non-humanoids/mouse/mousesqueek.ogg'

/datum/round_event/mice_migration/start()
	SSminor_mapping.trigger_migration(rand(minimum_mice, maximum_mice))
