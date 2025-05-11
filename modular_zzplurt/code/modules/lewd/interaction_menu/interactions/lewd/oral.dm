// Работа ртом

/// ADD ANDROMEDA-13 (@rewokin/@ms_kira): Перевод/ До-перевод, масштабное дополнение ЕРП контента.
/datum/interaction/lewd/oral_vagina
	name = "Отлизать киску"
	description = "Отлизать чью-нибудь киску, или попробовать её на вкус. (Это очень заводит, Это приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Содрагаясь оргазмирует в ротик %USER%.",
			"%TARGET% Дрожа сквиртует в ротик %USER% от удовольствия.",
			"%TARGET% Извиваясь от удовольствия, стреляет сладкими соками в ротик %USER%.",
			"%TARGET% Чуть согнувшись, обильно оргазмирует в ротик %USER%.",
			"%TARGET% Пытается сжать свои ножки вместе, прежде чем не выдержит и кончит в жадный ротик %USER%.",
			"%TARGET% Дрогнув и слегка согнув ножки, активно оргазмирует в ротик %USER%.",
			"%TARGET% Вжимаясь в ротик %USER% сквиртует в него.",
			"%TARGET% Нежно дрожа и елозя на губах %USER% покрывает его ротик в сквирте.",
			"%TARGET% Сладко охая и ахая, стреляет сладкими соками в ротик %USER%."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы прижимаетесь тазом к личику %USER% обильно оргазмируя в него.",
			"Задрожав, вы отдаете в голову %USER% волну подрагиваний, мгновенно стреляя в ротик.",
			"Нежно дрожа, вы оргазмируете от язычка %USER% в ротик.",
			"Неумолимо подрагивая от ощущений с вашей кисой, вы наконец сквиртуете в язык %USER%.",
			"Поджав свои ножки вместе, вы стреляете сладкими соками на язычок %USER%.",
			"Вы вжимаетесь в %USER% сквиртуя в ротик.",
			"Вы вздрагиваете елозя тазом на лице %USER% активно стреляя сладкими соками в ротик.",
			"Вы прижимаетесь промежностью к %USER% бурно оргазмируя в ротик."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Оргазмирует от вашего язычка, прямо вам в рот.",
			"%TARGET% Судорожно содрагается от ваших движений промеж своих ножек, тут же испуская соки в вас.",
			"%TARGET% Нежно дрожит, прежде чем сквиртить от удовольствия на ваш язычок.",
			"%TARGET% Сжимает свои ножки вместе, прежде чем дрогнуть и обильно оргазмировать в ваш рот.",
			"%TARGET% Вжимается своим тазом в ваше лицо, прежде чем бурно сквиртить.",
			"%TARGET% Неумолимо подрагивая и сгинаясь, стреляет сладкими соками в вас.",
			"%TARGET% Вжимается в ваше лицо, и бурно оргазмирует вам на язычок.",
			"%TARGET% Прижимается к вашему язычку, елозя своей пездочкой на нем, и покрывает ваш язык сладкими соками."
		)
	)
	message = list(
		"Зарывается своим лицом в целку %TARGET%.",
		"Ласкает мокренькую кису %TARGET%.",
		"Влажно проходится языком по целке %TARGET%.",
		"Виртуозно излизывает мокрое влагалище %TARGET%.",
		"Ласкательно-агрессивно лижет кису %TARGET%.",
		"С жадностью закусывает и зализывает пезду %TARGET%.",
		"Наносит тройной язычковый удар в клитор %TARGET%.",
		"Доминантно вылизывает целку %TARGET% с низу вверх.",
		"Неумоли и навязчиво сосет-лижет вагину %TARGET%.",
		"Работает язычком с прелестью %TARGET%.",
		"Развлекается язычком с пизденкой %TARGET%.",
		"Проникает во внутрь кисоньки %TARGET% своим язычком.",
		"Вершит сладкие дела язычком вместе с кисонькой %TARGET%.",
		"Обхватывает ножки %TARGET% раздвигая их, и тут же приступая к отлизу розочки." ,
		"Погружается прямо между ножек %TARGET% начиная лизать."
	)
	user_messages = list(
		"Вы чувствуете теплую влагу киски %TARGET% на своем лице.",
		"Напросившись вы ощущаете тепло смазки из целки %TARGET%.",
		"Ваш язык очень быстро ловит внеочередную порцию сладостей от кисуни %TARGET%.",
		"Вы углубляетесь язычком поглубже в влагалище %TARGET% наслаждаясь мягкими тканями.",
		"Вам довольно тесно меж половых губ %TARGET% поэтому вы проникаете язычком поглубже.",
		"Вы забавляетесь с кисонькой %TARGET% своим языком.",
		"Беспощадными движениями, вы излизываете клитор %TARGET% своим языком.",
		"Возбуждающий влажный запах %TARGET% переполянет вас чувствами.",
		"Вы проникаетесь сладостью пизденки %TARGET% и лишь ускоряетесь в отлизывании."
	)
	target_messages = list(
		"Язык %USER% будоражно ласкает ваши мягкие ткани.",
		"Вы чувствуете как язычок %USER% проталкивается глбуже во-внутрь вас.",
		"Вы ощущаете ласковое дрожание от язычка %USER%.",
		"Неумолимо извиваясь, вы предвкушаете с каждым вылизыванием %USER% о вашу киску.",
		"Вам очень приятно, когда язычок %USER% ласково обволакивает ваш клитор.",
		"Вы волнуетесь, ощущая игру язычка %USER% между ваших половых губ.",
		"Вы ловите на себе горячее дыхание %USER% прямо средь ваших ножек.",
		"От тепла внутри, из за дерзкой игры язычка %USER% в вашей целочке, вы содрагаетесь."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj1.ogg',
		'modular_zzplurt/sound/interactions/bj2.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/bj4.ogg',
		'modular_zzplurt/sound/interactions/bj5.ogg',
		'modular_zzplurt/sound/interactions/bj6.ogg',
		'modular_zzplurt/sound/interactions/bj7.ogg',
		'modular_zzplurt/sound/interactions/bj8.ogg',
		'modular_zzplurt/sound/interactions/bj9.ogg',
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj11.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 6.5
	user_arousal = 4
	target_arousal = 8

/datum/interaction/lewd/oral_vagina/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds

/datum/interaction/lewd/oral_penis
	name = "Отсосать член"
	description = "Давай, сделай соси-соси за 5$."
	interaction_requires = list(INTERACTION_REQUIRE_SELF_MOUTH)
	target_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_TARGET = CLIMAX_TARGET_MOUTH)
	message = list(
		"берет член %TARGET% в рот.",
		"обхватывает губами член %TARGET%.",
		"опускается на колени между ног %TARGET%.",
		"обхватывает ноги %TARGET%, целуя кончик его члена.",
		"причмокивает член %TARGET% и ласкает язычком."
	)
	user_messages = list(
		"Вы чувствуете, как член %TARGET% пульсирует у вас во рту.",
		"Вы работаете язычком с членом %TARGET%.",
		"Вы ласкаете губами член %TARGET%.",
		"Вы берете член %TARGET% глубже в горло."
	)
	target_messages = list(
		"Язык %USER%' извивается вокруг вашего члена.",
		"Вы чувствуете, как горячий рот %USER% обхватывает член.",
		"Тепло язычка и рта %USER% заставляет вас подёргиваться."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/bj1.ogg',
		'modular_zzplurt/sound/interactions/bj2.ogg',
		'modular_zzplurt/sound/interactions/bj3.ogg',
		'modular_zzplurt/sound/interactions/bj4.ogg',
		'modular_zzplurt/sound/interactions/bj5.ogg',
		'modular_zzplurt/sound/interactions/bj6.ogg',
		'modular_zzplurt/sound/interactions/bj7.ogg',
		'modular_zzplurt/sound/interactions/bj8.ogg',
		'modular_zzplurt/sound/interactions/bj9.ogg',
		'modular_zzplurt/sound/interactions/bj10.ogg',
		'modular_zzplurt/sound/interactions/bj11.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 3
	target_arousal = 7

/datum/interaction/lewd/oral_penis/act(mob/living/user, mob/living/target)
	var/default_sounds = sound_possible.Copy()
	if(user.gender == FEMALE)
		sound_possible += list(
			'modular_zzplurt/sound/interactions/girlmouth (1).ogg',
			'modular_zzplurt/sound/interactions/girlmouth (2).ogg'
		)
	else
		sound_possible += list(
			'modular_zzplurt/sound/interactions/guymouth (1).ogg',
			'modular_zzplurt/sound/interactions/guymouth (2).ogg',
			'modular_zzplurt/sound/interactions/guymouth (3).ogg',
			'modular_zzplurt/sound/interactions/guymouth (4).ogg',
			'modular_zzplurt/sound/interactions/guymouth (5).ogg'
		)
	. = ..()
	sound_possible = default_sounds

/datum/interaction/lewd/oral_penis/post_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!ishuman(target))
		return
	if(prob((target.dna.features["sexual_potency"] * 10) + 15))
		user.adjustOxyLoss(3)
		target.adjust_arousal(10)
		target.adjust_pleasure(10, user, interaction = src, position = CLIMAX_POSITION_TARGET)
