/datum/techweb_node/nanite_base
	id = "nanite_base"
	display_name = "Базовое Программирование Нанитов"
	description = "Основы создания и программирования нанитов. Наниты будут пассивно генерировать очки науки в зависимости от их количества."
	prereq_ids = list(TECHWEB_NODE_BCI)
	design_ids = list(
		// "access_nanites",
		"debugging_nanites",
		"monitoring_nanites",
		"nanite_chamber",
		"nanite_chamber_control",
		"nanite_cloud_control",
		"nanite_comm_remote",
		"nanite_disk",
		"nanite_program_hub",
		"nanite_programmer",
		"nanite_remote",
		"nanite_scanner",
		"public_nanite_chamber",
		"relay_nanites",
		"relay_repeater_nanites",
		"repairing_nanites",
		"repeater_nanites",
		"sensor_nanite_volume",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/nanite_smart
	id = "nanite_smart"
	display_name = "Программирование Умных Нанитов"
	description = "Программы, требующие от нанитов выполнения сложных действий, самостоятельной работы, перемещения или поиска целей."
	prereq_ids = list("nanite_base", TECHWEB_NODE_PROGRAMMING)
	design_ids = list(
		"memleak_nanites",
		"metabolic_nanites",
		"purging_nanites",
		"sensor_voice_nanites",
		"stealth_nanites",
		"voice_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/nanite_mesh
	id = "nanite_mesh"
	display_name = "Программирование Сетчатых Нанитов"
	description = "Нанитовые программы, требующие статических структур и мембран."
	prereq_ids = list("nanite_base", TECHWEB_NODE_MOD_ENGI_ADV)
	design_ids = list(
		"conductive_nanites",
		"cryo_nanites",
		"dermal_button_nanites",
		"emp_nanites",
		"hardening_nanites",
		"refractive_nanites",
		"shock_nanites",
		"temperature_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/nanite_bio
	id = "nanite_bio"
	display_name = "Программирование Биологических Ннанитов"
	description = "Программы нанитов, требующие сложного биологического взаимодействия."
	prereq_ids = list("nanite_base", TECHWEB_NODE_MOD_MEDICAL_ADV)
	design_ids = list(
		"bloodheal_nanites",
		"coagulating_nanites",
		"flesheating_nanites",
		"poison_nanites",
		"sensor_crit_nanites",
		"sensor_damage_nanites",
		"sensor_death_nanites",
		"sensor_health_nanites",
		"sensor_species_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_3_POINTS)

/datum/techweb_node/nanite_neural
	id = "nanite_neural"
	display_name = "Программирование Нейронных Нанитов"
	description = "Нанитовые программы, воздействующие на нервы и мозговое вещество."
	prereq_ids = list("nanite_bio")
	design_ids = list(
		"bad_mood_nanites",
		"brainheal_nanites",
		"good_mood_nanites",
		"nervous_nanites",
		"paralyzing_nanites",
		"selfscan_nanites",
		"stun_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/nanite_synaptic
	id = "nanite_synaptic"
	display_name = "Программирование Синаптических Нанитов"
	description = "Нанитовые программы, влияющие на разум и мысли."
	prereq_ids = list("nanite_neural", TECHWEB_NODE_SURGERY_EXP)
	design_ids = list(
		"blinding_nanites",
		"hallucination_nanites",
		"mindshield_nanites",
		"mute_nanites",
		"pacifying_nanites",
		"sleep_nanites",
		// "speech_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/nanite_harmonic
	id = "nanite_harmonic"
	display_name = "Программирование Гармоничных Нанитов"
	description = "Программы для нанитов, требующие бесшовной интеграции нанитов и биологии. Пассивно увеличивает скорость регенерации нанитов для всех облаков при исследовании."
	prereq_ids = list("nanite_bio","nanite_smart","nanite_mesh")
	design_ids = list(
		"regenerative_nanites",
		"aggressive_nanites",
		"brainheal_plus_nanites",
		"defib_nanites",
		"fakedeath_nanites",
		"purging_plus_nanites",
		// "regenerative_plus_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/nanite_combat
	id = "nanite_military"
	display_name = "Программирование Военных Нанитов"
	description = "Нанитовые программы, выполняющие функции военного класса."
	prereq_ids = list("nanite_harmonic", TECHWEB_NODE_SYNDICATE_BASIC)
	design_ids = list(
		// "explosive_nanites",
		"meltdown_nanites",
		"nanite_sting_nanites",
		"pyro_nanites",
		"viral_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_3_POINTS)

/datum/techweb_node/nanite_hazard
	id = "nanite_hazard"
	display_name = "Программирование Опасных Нанитов"
	description = "Чрезвычайно продвинутые программы нанитов, способные стать чрезвычайно опасными."
	prereq_ids = list("nanite_harmonic", TECHWEB_NODE_ALIENTECH)
	design_ids = list(
		"mindcontrol_nanites",
		"mitosis_nanites",
		// "spreading_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/nanite_replication_protocols
	id = "nanite_replication_protocols"
	display_name = "Протоколы Репликации Нанитов"
	description = "Протоколы, которые переписывают стандартную процедуру репликации нанитов для достижения большей эффективности в определенных обстоятельствах."
	prereq_ids = list("nanite_smart")
	design_ids = list(
		"factory_nanites",
		"kickstart_nanites",
		"offline_nanites",
		"pyramid_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_3_POINTS)
	hidden = TRUE
	experimental = TRUE

/datum/techweb_node/nanite_storage_protocols
	id = "nanite_storage_protocols"
	display_name = "Протоколы Хранения Нанитов"
	description = "Протоколы, которые переписывают стандартную процедуру хранения нанитов для достижения большей эффективности или большей емкости."
	prereq_ids = list("nanite_smart")
	design_ids = list(
		"free_range_nanites",
		"hive_nanites",
		"unsafe_storage_nanites",
		"zip_nanites",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS, TECHWEB_POINT_TYPE_NANITE = TECHWEB_TIER_3_POINTS)
	hidden = TRUE
	experimental = TRUE
