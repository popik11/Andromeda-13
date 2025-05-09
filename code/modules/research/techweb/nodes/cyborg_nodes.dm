/datum/techweb_node/augmentation
	id = TECHWEB_NODE_AUGMENTATION
	starting_node = TRUE
	display_name = "Аугментация"
	description = "Для тех, кто предпочитает блестящий металл хлюпающей плоти."
	prereq_ids = list(TECHWEB_NODE_ROBOTICS)
	design_ids = list(
		"borg_chest",
		"borg_head",
		"borg_l_arm",
		"borg_l_leg",
		"borg_r_arm",
		"borg_r_leg",
		"borg_suit",
		"cybernetic_eyes",
		"cybernetic_eyes_moth",
		"cybernetic_ears",
		"cybernetic_lungs",
		"cybernetic_stomach",
		"cybernetic_liver",
		"cybernetic_heart",
	)
	experiments_to_unlock = list(
		/datum/experiment/scanning/people/android,
	)

/datum/techweb_node/cybernetics
	id = TECHWEB_NODE_CYBERNETICS
	display_name = "Кибернетика"
	description = "Роботы Sapient с предустановленными инструментальными модулями и программируемыми законами."
	prereq_ids = list(TECHWEB_NODE_AUGMENTATION)
	design_ids = list(
		"robocontrol",
		"borgupload",
		"cyborgrecharger",
		"mmi_posi",
		"mmi",
		"mmi_m",
		"advanced_l_arm",
		"advanced_r_arm",
		"advanced_l_leg",
		"advanced_r_leg",
		"borg_upgrade_rename",
		"borg_upgrade_restart",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/techweb_node/borg_service
	id = TECHWEB_NODE_BORG_SERVICES
	display_name = "Обновление Сервесных Киборгов"
	description = "Пусть они готовят по правилам."
	prereq_ids = list(TECHWEB_NODE_CYBERNETICS)
	design_ids = list(
		"borg_upgrade_rolling_table",
		"borg_upgrade_condiment_synthesizer",
		"borg_upgrade_silicon_knife",
		"borg_upgrade_service_apparatus",
		"borg_upgrade_drink_apparatus",
		"borg_upgrade_service_cookbook",
		"borg_upgrade_botany",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/techweb_node/borg_mining
	id = TECHWEB_NODE_BORG_MINING
	display_name = "Обновление Шахтерских Киборгов"
	description = "Для добычи полезных ископаемых в местах, слишком опасных для человека."
	prereq_ids = list(TECHWEB_NODE_CYBERNETICS)
	design_ids = list(
		"borg_upgrade_lavaproof",
		"borg_upgrade_holding",
		"borg_upgrade_diamonddrill",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/techweb_node/borg_medical
	id = TECHWEB_NODE_BORG_MEDICAL
	display_name = "Обновление Медицинский Киборгов"
	description = "Пусть они следуют первому закону Азимова."
	prereq_ids = list(TECHWEB_NODE_BORG_SERVICES, TECHWEB_NODE_SURGERY_ADV)
	design_ids = list(
		"borg_upgrade_pinpointer",
		"borg_upgrade_beakerapp",
		"borg_upgrade_defibrillator",
		"borg_upgrade_expandedsynthesiser",
		"borg_upgrade_piercinghypospray",
		"borg_upgrade_surgicalprocessor",
		"borg_upgrade_surgicalomnitool",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/techweb_node/borg_utility
	id = TECHWEB_NODE_BORG_UTILITY
	display_name = "Обновление Хозяйственных Киборгов"
	description = "Пусть они вытирают за нас полы."
	prereq_ids = list(TECHWEB_NODE_BORG_SERVICES, TECHWEB_NODE_SANITATION)
	design_ids = list(
		"borg_upgrade_advancedmop",
		"borg_upgrade_broomer",
		"borg_upgrade_expand",
		"borg_upgrade_prt",
		"borg_upgrade_plunger",
		"borg_upgrade_high_capacity_replacer",
		"borg_upgrade_selfrepair",
		"borg_upgrade_thrusters",
		"borg_upgrade_trashofholding",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

/datum/techweb_node/borg_utility/New()
	. = ..()
	if(!CONFIG_GET(flag/disable_secborg))
		design_ids += "borg_upgrade_disablercooler"

/datum/techweb_node/borg_engi
	id = TECHWEB_NODE_BORG_ENGI
	display_name = "Обновление Инженерных Киборгов"
	description = "Чтобы еще больше расслабиться."
	prereq_ids = list(TECHWEB_NODE_BORG_MINING, TECHWEB_NODE_PARTS_UPG)
	design_ids = list(
		"borg_upgrade_rped",
		"borg_upgrade_engineeringomnitool",
		"borg_upgrade_circuitapp",
		"borg_upgrade_inducer",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

// Implants root node
/datum/techweb_node/passive_implants
	id = TECHWEB_NODE_PASSIVE_IMPLANTS
	display_name = "Пассивные Имплантаты"
	description = "Имплантаты, разработанные для бесперебойной работы без активного участия пользователя, улучшающие различные физиологические функции или обеспечивающие постоянную пользу."
	prereq_ids = list(TECHWEB_NODE_AUGMENTATION)
	design_ids = list(
		"skill_station",
		"implant_trombone",
		"implant_chem",
		"implant_tracking",
		"implant_exile",
		"implant_beacon",
		"implant_bluespace",
		"implantcase",
		"implanter",
		"locator",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_SECURITY, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/cyber_implants
	id = TECHWEB_NODE_CYBER_IMPLANTS
	display_name = "Кибернетические Имплантаты"
	description = "Продвинутые технологические усовершенствования, интегрированные в тело, обеспечивают улучшение физических возможностей."
	prereq_ids = list(TECHWEB_NODE_PASSIVE_IMPLANTS, TECHWEB_NODE_CYBERNETICS)
	design_ids = list(
		"ci-breather",
		"ci-nutriment",
		"ci-thrusters",
		"ci-herculean",
		"ci-connector",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs[TECHWEB_POINT_TYPE_GENERIC] /= 2

/datum/techweb_node/cyber/combat_implants
	id = TECHWEB_NODE_COMBAT_IMPLANTS
	display_name = "Боевые Имплантаты"
	description = "Проснись уже блять, самурай, время сжечь эту станцию."
	prereq_ids = list(TECHWEB_NODE_CYBER_IMPLANTS)
	design_ids = list(
		"ci-reviver",
		"ci-antidrop",
		"ci-antistun",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/integrated_toolsets
	id = TECHWEB_NODE_INTERGRATED_TOOLSETS
	display_name = "Интегрированный Инструментарий"
	description = "Десятилетия контрабанды ассистентами привели к созданию полноценного ящика для инструментов, который легко помещается в руке."
	prereq_ids = list(TECHWEB_NODE_COMBAT_IMPLANTS, TECHWEB_NODE_EXP_TOOLS)
	design_ids = list(
		"ci-nutrimentplus",
		"ci-toolset",
		"ci-surgery",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/cyber_organs
	id = TECHWEB_NODE_CYBER_ORGANS
	display_name = "Кибернетические Органы"
	description = "У нас есть технология, чтобы восстановить его."
	prereq_ids = list(TECHWEB_NODE_CYBERNETICS)
	design_ids = list(
		"cybernetic_eyes_improved",
		"cybernetic_eyes_improved_moth",
		"cybernetic_ears_u",
		"cybernetic_lungs_tier2",
		"cybernetic_stomach_tier2",
		"cybernetic_liver_tier2",
		"cybernetic_heart_tier2",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/cyber_organs_upgraded
	id = TECHWEB_NODE_CYBER_ORGANS_UPGRADED
	display_name = "Модернизированные Кибернетические Органы"
	description = "У нас есть технология для его модернизации."
	prereq_ids = list(TECHWEB_NODE_CYBER_ORGANS)
	design_ids = list(
		"ci-gloweyes",
		"ci-welding",
		"ci-gloweyes-moth",
		"ci-welding-moth",
		"cybernetic_ears_whisper",
		"cybernetic_lungs_tier3",
		"cybernetic_stomach_tier3",
		"cybernetic_liver_tier3",
		"cybernetic_heart_tier3",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	required_experiments = list(/datum/experiment/scanning/people/augmented_organs)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cyber/cyber_organs_adv
	id = TECHWEB_NODE_CYBER_ORGANS_ADV
	display_name = "Продвинутые Кибернетические Органы"
	description = "Самые современные кибернетические органы с расширенными сенсорными возможностями позволяют обнаруживать ERP как никогда легко."
	prereq_ids = list(TECHWEB_NODE_CYBER_ORGANS_UPGRADED, TECHWEB_NODE_NIGHT_VISION)
	design_ids = list(
		"cybernetic_ears_xray",
		"ci-thermals",
		"ci-xray",
		"ci-thermals-moth",
		"ci-xray-moth",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)
	discount_experiments = list(/datum/experiment/scanning/people/android = TECHWEB_TIER_5_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)
