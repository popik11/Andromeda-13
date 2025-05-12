/// Действия с ртом/лицом

//-// -Rewokin_fun_comment //-//
// Кире нравится доминировать?~
// Тише будь, Революция красной патриархии

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, ОГРОМНОЕ дополнение ЕРП контента.
/datum/interaction/lewd/facefuck_vagina
	name = "Тереться о лицо (Вагина)"
	description = "Погладьтесь своей Киской о чье-нибудь лицо. (Это очень заводит, Это приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Оргазмирует на лицо %TARGET%.",
			"%USER% Тычась своей вагиной, стреляет на лицо %TARGET% сладкими соками.",
			"%USER% Плавно пройдясь пизденкой, содрагается и сквиртует на личико %TARGET%.",
			"%USER% Наелозившись влагалищем, небрежно отстреливается сладкими соками в лико %TARGET%.",
			"%USER% Вжавшись в влажном движении, сквиртует на лицо %TARGET%.",
			"%USER% Нежно протеревшись, содрагается, пачкая лицо %TARGET% своими соками.",
			"%USER% Покрывает лицо %TARGET% своими любовными выделениями."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы прижимаетесь киской к лицу %TARGET% обильно оргазмируя на него.",
			"Вы тычась своей вагиной, стреляете на лицо %TARGET% сладкими соками.",
			"Вы плавно пройдясь пизденкой, содрагаетесь и сквиртуете на личико %TARGET%.",
			"Вы наелозившись влагалищем, небрежно отстреливаетесь сладкими соками в лико %TARGET%.",
			"Вы вжимаетесь в выпаде, сквиртуя на лицо %TARGET%.",
			"Вы покрываете лицо %TARGET% сладкими соками."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает на ваше лицо сладкими соками.",
			"%USER% Тычась своей вагиной, стреляет на ваше лицо сладкими соками.",
			"%USER% Плавно пройдясь пизденкой, содрагается и сквиртует на ваше личико.",
			"%USER% Наелозившись влагалищем, небрежно отстреливается сладкими соками в ваше лико.",
			"%USER% Вжимается в вас молниеносным движением, и оргазмирует.",
			"%USER% Прижимается к вам как можно сильнее, и покрывает ваше лицо соками."
		)
	)
	message = list(
		"Втирается своей киской в лицо %TARGET%.",
		"Захватывает затылок %TARGET% надавливая им на свою киску.",
		"Растирается своим влагалищем по лицу %TARGET%.",
		"Скользит своей целкой по ротику %TARGET%.",
		"Движется туда-сюда своей вагиной на лице %TARGET%.",
		"Вагинально проходится по лицу %TARGET%.",
		"Игриво проходится своей пизденкой по лицу %TARGET%.",
		"Толкается своей кисой в лицо %TARGET% хлюпаясь.",
		"Просовывает рот %TARGET% между своих ног.",
		"Смотрит %TARGET% в глаза, прежде чем вжать в свою киску.",
		"Покачивает бедрами и извивается, вдавливая свою кису в лицо %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	user_arousal = 8
	target_pleasure = 0
	target_arousal = 5

/datum/interaction/lewd/facefuck_penis
	name = "Трахнуть в рот (Член)"
	description = "Выеби кого-нибудь прямо в рот. (Это очень заводит, Это приятно, Немного больно)"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает прямо в ротик %TARGET%.",
			"%USER% Переполняет рот %TARGET% семенем, заставляя то вытекать и капать с губ.",
			"%USER% Кончает в ротик %TARGET% заставляя семя стекать с губ.",
			"%USER% Вжавшись посильнее, наполняет ротик %TARGET%.",
			"%USER% Нежно протолкнувшись, стреляет глубоко в рот %TARGET%.",
			"%USER% Покрывает семенем ротик %TARGET% заталкиваясь поглубже."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы пихаетесь членом в рот %TARGET% кончая в него.",
			"Вы пропихиваетесь в щечку %TARGET% и кончаете в ротик; семя приятно наполняет ротик, окутывая ваш член.",
			"Вы заставляете %TARGET% принять ваше семя в свой ротик.",
			"Вы вставляете свой пенис поглубже в %TARGET% заливая ротик семенем.",
			"Вы вжимаетесь как можно сильнее, наполняя ротик %TARGET% своим семенем.",
			"Вы толкаетесь в морду %TARGET% своим членом, прежде чем наполнить её семенем."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает прямо в ваш ротик.",
			"%USER% Переполняет ваш ротик! семя стекает с ваших губ.",
			"%USER% Заставляет вас заглотнуть семя, переполняя ваш ротик.",
			"%USER% Вставляет свой пенис в ваш рот, начиная извергать теплое семя.",
			"%USER% Вжавшись в ваш ротик, начинает стрелять в ваши щечки изнутри.",
			"%USER% Толкается в ваш ротик, прежде чем наполнить его своим семенем."
		)
	)
	message = list(
		"Грубо трахает %TARGET% в ротик.",
		"Пенетрирует ротик %TARGET% своим членом.",
		"Нежно давит пенисом на язычок %TARGET% проходя в ротик.",
		"Грубо толкается в рот %TARGET% своим членом.",
		"Неумолимо долбит заднюю часть щеки %TARGET% своим членом.",
		"Заталкивает свой член в рот %TARGET%.",
		"Надавливает на язык %TARGET% своим членом, пока не услышит легкий рвотный звук.",
		"Захватывает голову %TARGET% и притягивает к своему члену, прежде чем грубо проникнуть в рот.",
		"Смотрит в глаза %TARGET% пока вставляет свой член в жаждущий рот %TARGET%!",
		"Сильно двигает бедрами, толкаясь в рот %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 4
    target_pain = 1
//-// -Rewokin_fun_comment //-//
// Гок-гок-гок

/datum/interaction/lewd/throatfuck
	name = "Глубокий оральный секс (Член)"
	description = "Выеби чье-нибудь горло орально и грубо. (Это очень заводит, Это очень приятно, Это больно, Это смертельно душит)"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает прямо в горло %TARGET% придушивая.",
			"%USER% Кончает в горлышко %TARGET% придушивая, семя течет из ротика жертвы.",
			"%USER% Вжавшись и ударившись в горлышко %TARGET% окутывает горло своим семенем изнутри.",
			"%USER% Грубо втолкнувшись, наполняет горло %TARGET% семенем.",
			"%USER% Покрывает семенем горлышко %TARGET% втолкнувши себя как можно глубже."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы пихаетесь членом в горло %TARGET% кончая в него.",
			"Ваш член пульсирует, прежде чем наполнить горлышко %TARGET% семенем.",
			"Вы вставляете свой пенис поглубже в %TARGET% заливая горлышко семенем.",
			"Вы вжимаетесь как можно сильнее, наполняя горлышко %TARGET% горячим семенем.",
			"Вы толкаетесь в горло %TARGET% своим членом, прежде чем наполнить его семенем."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает глубоко в ваше горло, это невыносимо.",
			"%USER% Кончает в ваше горлышко, вы ощущаете как из вашего ротика течет семя, в порыве удержать сознание и задыхаясь.",
			"%USER% Толкается как можно глубже; Вы дрожите, ощущая удушение и наполненность своего горла.",
			"%USER% Вжавши в вас свой ствол, начинает неистово удушивать вас и наполнять семенем.",
			"%USER% Толкается в ваше горлышко, прежде чем грубо наполнить его своим семенем."
		)
	)
	message = list(
		"Жестоко заталкивает свой член в горло %TARGET% заставляя задыхаться.",
		"Душит %TARGET% своим членом, глубоко входя в рот по самые яйца.",
		"Жестоко трахает горлышко %TARGET%.",
		"Вталкивается грубыми ритмичными движениями глубоко в горлышко %TARGET%.",
		"Толкает горлышко %TARGET% своим пенисом.",
		"Придушивает %TARGET% дерзкими толчками в горлышко.",
		"Грубо входит и выходит из горлышка %TARGET% пока яйца шлепаются о лицо."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 8
	target_pleasure = 1
	user_arousal = 11
	target_arousal = 4
	target_pain = 5

/datum/interaction/lewd/throatfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/stat_before = target.stat
	target.adjustOxyLoss(5)
	if(target.stat == UNCONSCIOUS && stat_before != UNCONSCIOUS)
		message = list("%TARGET% Вырубается от члена %USER% в своем горлышке") //-// -Rewokin_fun_comment //-//	>Reason for disconnection = xyi v gorle
