// THIS IS A SKYRAT UI FILE
import {
  CheckboxInput,
  Feature,
  FeatureChoiced,
  FeatureChoicedServerData,
  FeatureColorInput,
  FeatureNumberInput,
  FeatureShortTextInput,
  FeatureTextInput,
  FeatureToggle,
  FeatureTriBoolInput,
  FeatureTriColorInput,
  FeatureValueProps,
} from '../../base';
import { FeatureDropdownInput } from '../../dropdowns';

export const feature_leg_type: FeatureChoiced = {
  name: 'Тип ног',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_mcolor2: Feature<string> = {
  name: 'Мутантный цвет 2',
  component: FeatureColorInput,
};
export const feature_mcolor3: Feature<string> = {
  name: 'Мутантный цвет 3',
  component: FeatureColorInput,
};

export const flavor_text: Feature<string> = {
  name: 'Описание аромата',
  description:
    'Появляется при осмотре персонажа (но только если его можно опознать - попробуйте надеть противогаз).',
  component: FeatureTextInput,
};

export const silicon_flavor_text: Feature<string> = {
  name: 'Описание аромата синта',
  description: 'Появляется, только если вы играете за борга/ИИ',
  component: FeatureTextInput,
};

export const ooc_notes: Feature<string> = {
  name: 'OOC заметки',
  component: FeatureTextInput,
};

export const custom_species: Feature<string> = {
  name: 'Пользовательское название вида(расы)',
  description:
    'Появляется при осмотре. Если оставить это поле пустым, вы будете использовать название вида(расы) по умолчанию (например, человек, ящерица).',
  component: FeatureShortTextInput,
};

export const custom_species_lore: Feature<string> = {
  name: 'Пользовательская история вида(расы)',
  description: 'Не отображается, если нет пользовательских видов.',
  component: FeatureTextInput,
};

export const custom_taste: Feature<string> = {
  name: 'Вкус персонажа',
  description: 'Как ваш персонаж чувствует вкус, если его кто-то облизывает.',
  component: FeatureShortTextInput,
};

export const custom_smell: Feature<string> = {
  name: 'Запах персонажа',
  description: 'Как будет пахнуть ваш персонаж, если кто-то его понюхает.',
  component: FeatureShortTextInput,
};

export const general_record: Feature<string> = {
  name: 'Записи - Общие',
  description:
    'Просмотр возможен при любом доступе к записям. \
    Для общего просмотра - такие вещи, как занятость, квалификация и т.д.',
  component: FeatureTextInput,
};

export const security_record: Feature<string> = {
  name: 'Записи - Безопасность',
  description:
    'Просмотр доступен при наличии доступа. \
  Для судимостей, истории арестов и тому подобных вещей.',
  component: FeatureTextInput,
};

export const medical_record: Feature<string> = {
  name: 'Записи - Медицинская',
  description:
    'Просмотр доступен при наличии медицинского доступа. \
  Для таких вещей, как история болезни, рецепты, приказы DNR и т.д.',
  component: FeatureTextInput,
};

export const exploitable_info: Feature<string> = {
  name: 'Записи - Антагам',
  description:
    'Может быть IC или OOC. Доступно для просмотра некоторым антагонистам/OPFOR пользователям, а также призракам. Обычно содержит \
  такие вещи, как слабые и сильные стороны, важную предысторию, триггерные слова и т.д. А ТАКЖЕ может содержать такие вещи,\
  как предпочтения антагониста, например, хотите ли вы, чтобы с вами враждовали, кто, с чем и т.д.',
  component: FeatureTextInput,
};

export const background_info: Feature<string> = {
  name: 'Записи - Биография',
  description:
    'Доступно только вам и призракам. Вы можете разместить здесь все, что захотите - это может быть ценно как способ сориентироваться в том, что представляет собой ваш персонаж.',
  component: FeatureTextInput,
};

export const pda_ringer: Feature<string> = {
  name: 'Сообщение о звонке КПК',
  description:
    'Хотите, чтобы ваш КПК говорил не только «бип»? Принимаются первые 20 символов.',
  component: FeatureShortTextInput,
};

export const allow_mismatched_parts_toggle: FeatureToggle = {
  name: 'Допускать несовпадение деталей',
  description: 'Позволяет собирать части любого вида(расы).',
  component: CheckboxInput,
};

export const allow_mismatched_hair_color_toggle: FeatureToggle = {
  name: 'Разрешите несочетаемый цвет волос',
  description:
    'Позволяет видам, которые обычно имеют фиксированный цвет волос, иметь разные цвета волос. Это включает в себя такие способы, как окрашивание волос, изменение формы и т. д. В настоящее время применимо только к слизеринцам.',
  component: CheckboxInput,
};

export const allow_genitals_toggle: FeatureToggle = {
  name: 'Использовать гениталии',
  description:
    'Включается, если вы хотите, чтобы у вашего персонажа были гениталии.',
  component: CheckboxInput,
};

export const allow_emissives_toggle: FeatureToggle = {
  name: 'Свечение эмиссеров',
  description: 'Детали светятся в темноте.',
  component: CheckboxInput,
};

export const eye_emissives: FeatureToggle = {
  name: 'Эмиссары глаз',
  description: 'Детали светятся в темноте.',
  component: CheckboxInput,
};

export const mutant_colors_color: Feature<string[]> = {
  name: 'Мутантный цвет',
  component: FeatureTriColorInput,
};

export const body_markings_toggle: FeatureToggle = {
  name: 'Символы на теле',
  component: CheckboxInput,
};

export const feature_body_markings: Feature<string> = {
  name: 'Выбор символов тела',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const body_markings_color: Feature<string[]> = {
  name: 'Цвета символов тела',
  component: FeatureTriColorInput,
};

export const body_markings_emissive: Feature<boolean[]> = {
  name: 'Эмиссары символов тела',
  component: FeatureTriBoolInput,
};

export const tail_toggle: FeatureToggle = {
  name: 'Хвост',
  component: CheckboxInput,
};

export const feature_tail: Feature<string> = {
  name: 'Выбор хвоста',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const tail_color: Feature<string[]> = {
  name: 'Цвета хвоста',
  component: FeatureTriColorInput,
};

export const tail_emissive: Feature<boolean[]> = {
  name: 'Эмиссары хвоста',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const snout_toggle: FeatureToggle = {
  name: 'Морда',
  component: CheckboxInput,
};

export const feature_snout: Feature<string> = {
  name: 'Выбор морды',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const snout_color: Feature<string[]> = {
  name: 'Цвета морды',
  component: FeatureTriColorInput,
};

export const snout_emissive: Feature<boolean[]> = {
  name: 'Эмиссары морды',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const horns_toggle: FeatureToggle = {
  name: 'Рога',
  component: CheckboxInput,
};

export const feature_horns: Feature<string> = {
  name: 'Выбор рогов',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const horns_color: Feature<string[]> = {
  name: 'Цвет рогов',
  component: FeatureTriColorInput,
};

export const horns_emissive: Feature<boolean[]> = {
  name: 'Эмиссары рогов',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const ears_toggle: FeatureToggle = {
  name: 'Уши',
  component: CheckboxInput,
};

export const feature_ears: Feature<string> = {
  name: 'Выбор ушей',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const ears_color: Feature<string[]> = {
  name: 'Цвета ушей',
  component: FeatureTriColorInput,
};

export const ears_emissive: Feature<boolean[]> = {
  name: 'Эмиссары ушей',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const wings_toggle: FeatureToggle = {
  name: 'Крылья',
  component: CheckboxInput,
};

export const feature_wings: Feature<string> = {
  name: 'Выбор крыльев',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const wings_color: Feature<string[]> = {
  name: 'Цвета крыльев',
  component: FeatureTriColorInput,
};

export const wings_emissive: Feature<boolean[]> = {
  name: 'Эмиссары крыльев',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const frills_toggle: FeatureToggle = {
  name: 'Капюшон',
  component: CheckboxInput,
};

export const feature_frills: Feature<string> = {
  name: 'Выбор капюшона',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const frills_color: Feature<string[]> = {
  name: 'Цвета капюшона',
  component: FeatureTriColorInput,
};

export const frills_emissive: Feature<boolean[]> = {
  name: 'Эмиссары капюшона',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const spines_toggle: FeatureToggle = {
  name: 'Корешки',
  component: CheckboxInput,
};

export const feature_spines: Feature<string> = {
  name: 'Выбор корешков',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const spines_color: Feature<string[]> = {
  name: 'Цвета корешков',
  component: FeatureTriColorInput,
};

export const spines_emissive: Feature<boolean[]> = {
  name: 'Эмиссары корешков',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const digitigrade_legs: FeatureChoiced = {
  name: 'Ноги',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const caps_toggle: FeatureToggle = {
  name: 'Шапка',
  component: CheckboxInput,
};

export const feature_caps: Feature<string> = {
  name: 'Выбор шапки',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const caps_color: Feature<string[]> = {
  name: 'Цвета шапки',
  component: FeatureTriColorInput,
};

export const caps_emissive: Feature<boolean[]> = {
  name: 'Эмиссары шапки',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const moth_antennae_toggle: FeatureToggle = {
  name: 'Антенна мотылька',
  component: CheckboxInput,
};

export const feature_moth_antennae: Feature<string> = {
  name: 'Выбор антенны мотылька',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const moth_antennae_color: Feature<string[]> = {
  name: 'Цвет антенны мотылька',
  component: FeatureTriColorInput,
};

export const moth_antennae_emissive: Feature<boolean[]> = {
  name: 'Эмиссары антенны мотылька',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const moth_markings_toggle: FeatureToggle = {
  name: 'Символы мотыльков',
  component: CheckboxInput,
};

export const feature_moth_markings: Feature<string> = {
  name: 'Выбор символы мотыльков',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const moth_markings_color: Feature<string[]> = {
  name: 'Цвет символы мотыльков',
  component: FeatureTriColorInput,
};

export const moth_markings_emissive: Feature<boolean[]> = {
  name: 'Эмиссары символы мотыльков',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const fluff_toggle: FeatureToggle = {
  name: 'Пух',
  component: CheckboxInput,
};

export const feature_fluff: Feature<string> = {
  name: 'Выбор пуха',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const fluff_color: Feature<string[]> = {
  name: 'Цвета пуха',
  component: FeatureTriColorInput,
};

export const fluff_emissive: Feature<boolean[]> = {
  name: 'Эмиссары пуха',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const head_acc_toggle: FeatureToggle = {
  name: 'Головные аксессуары',
  component: CheckboxInput,
};

export const feature_head_acc: Feature<string> = {
  name: 'Выбор головных аксессуаров',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const head_acc_color: Feature<string[]> = {
  name: 'Цвет головных аксессуаров',
  component: FeatureTriColorInput,
};

export const head_acc_emissive: Feature<boolean[]> = {
  name: 'Эмиссары головных аксессуаров',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const feature_ipc_screen: Feature<string> = {
  name: 'Выбор экрана IPC',
  description: 'Can be changed in-round.',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const ipc_screen_color: Feature<string> = {
  name: 'Цвет экрана IPC',
  component: FeatureColorInput,
};

export const ipc_screen_emissive: Feature<boolean> = {
  name: 'Эмиссары экрана IPC',
  description: 'Детали светятся в темноте.',
  component: CheckboxInput,
};

export const ipc_antenna_toggle: FeatureToggle = {
  name: 'Антенна синта',
  component: CheckboxInput,
};

export const feature_ipc_antenna: Feature<string> = {
  name: 'Выбор антенны синта',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const ipc_antenna_color: Feature<string[]> = {
  name: 'Цвета антенны синта',
  component: FeatureTriColorInput,
};

export const ipc_antenna_emissive: Feature<boolean[]> = {
  name: 'Эмиссары антенны синта',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const feature_ipc_chassis: Feature<string> = {
  name: 'Выбор корпуса синта',
  description: 'Работает только с синтами.',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const ipc_chassis_color: Feature<string> = {
  name: 'Цвета корпуса синта',
  description:
    'Работает только для синтов и корпусов, поддерживающих раскраску в серые тона.',
  component: FeatureColorInput,
};

export const feature_ipc_head: Feature<string> = {
  name: 'Выбор головы синта',
  description: 'Работает только с синтами.',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const ipc_head_color: Feature<string> = {
  name: 'Цвет головы синта',
  component: FeatureColorInput,
};

export const feature_hair_opacity_toggle: Feature<boolean> = {
  name: 'Изменение прозрачности волос',
  component: CheckboxInput,
};

export const feature_hair_opacity: Feature<number> = {
  name: 'Прозрачность волос',
  component: FeatureNumberInput,
};

export const neck_acc_toggle: FeatureToggle = {
  name: 'Neck Accessories',
  component: CheckboxInput,
};

export const feature_neck_acc: Feature<string> = {
  name: 'Выбор аксессуаров шеи',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const neck_acc_color: Feature<string[]> = {
  name: 'Цвета аксессуаров шеи',
  component: FeatureTriColorInput,
};

export const neck_acc_emissive: Feature<boolean[]> = {
  name: 'Эмиссары аксессуаров шеи',
  component: FeatureTriBoolInput,
};

export const skrell_hair_toggle: FeatureToggle = {
  name: 'Волосы Скрелла',
  component: CheckboxInput,
};

export const feature_skrell_hair: Feature<string> = {
  name: 'Выбор волос Скрелла',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const skrell_hair_color: Feature<string[]> = {
  name: 'Цвета волос Скрелла',
  component: FeatureTriColorInput,
};

export const skrell_hair_emissive: Feature<boolean[]> = {
  name: 'Эмиссары волос Скрелла',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const taur_toggle: FeatureToggle = {
  name: 'Таур',
  component: CheckboxInput,
};

export const feature_taur: Feature<string> = {
  name: 'Выбор Таура',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const taur_color: Feature<string[]> = {
  name: 'Цвет Таура',
  component: FeatureTriColorInput,
};

export const taur_emissive: Feature<boolean[]> = {
  name: 'Эмиссары Таура',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const naga_sole: FeatureToggle = {
  name: 'Таур (Нага) отключает закаленные подошвы',
  description:
    'При использовании змеевидного тела таура определяет, есть ли у вас иммунитет к калтропам и некоторым другим эффектам босоногости.',
  component: CheckboxInput,
};

export const xenodorsal_toggle: FeatureToggle = {
  name: 'Ксенодорсальный',
  component: CheckboxInput,
};

export const feature_xenodorsal: Feature<string> = {
  name: 'Выбор ксенодорсала',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const xenodorsal_color: Feature<string[]> = {
  name: 'Цвет ксенодорсала',
  component: FeatureTriColorInput,
};

export const xenodorsal_emissive: Feature<boolean[]> = {
  name: 'Эмиссары ксенодорсала',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const xenohead_toggle: FeatureToggle = {
  name: 'Глава ксено',
  component: CheckboxInput,
};

export const feature_xenohead: Feature<string> = {
  name: 'Выбор головы ксено',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const xenohead_color: Feature<string[]> = {
  name: 'Цвет головы ксено',
  component: FeatureTriColorInput,
};

export const xenohead_emissive: Feature<boolean[]> = {
  name: 'Эмиссары головы ксено',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const undershirt_color: Feature<string> = {
  name: 'Цвет рубашки',
  component: FeatureColorInput,
};

export const socks_color: Feature<string> = {
  name: 'Цвет носков',
  component: FeatureColorInput,
};

export const heterochromia_toggle: FeatureToggle = {
  name: 'Гетерохромия',
  component: CheckboxInput,
};

export const feature_heterochromia: Feature<string> = {
  name: 'Выбор гетерохромии',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const heterochromia_color: Feature<string[]> = {
  name: 'Цвета гетерохромии',
  component: FeatureTriColorInput,
};

export const heterochromia_emissive: Feature<boolean[]> = {
  name: 'Эмиссары гетерохромии',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const vox_bodycolor: Feature<string> = {
  name: 'Цвет тела Вокса',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const pod_hair_color: Feature<string[]> = {
  name: 'Цвет цветочных волос',
  component: FeatureTriColorInput,
};

export const pod_hair_emissive: Feature<boolean> = {
  name: 'Эмиссоры цветочных волос',
  description: 'Детали светятся в темноте.',
  component: CheckboxInput,
};

export const mandibles_toggle: FeatureToggle = {
  name: 'Жвалы',
  component: CheckboxInput,
};

export const feature_mandibles: Feature<string> = {
  name: 'Выбор жвал',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const mandibles_color: Feature<string[]> = {
  name: 'Цвет жвал',
  component: FeatureTriColorInput,
};

export const spinneret_toggle: FeatureToggle = {
  name: 'Спиннерет',
  component: CheckboxInput,
};

export const feature_spinneret: Feature<string> = {
  name: 'Выбор спиннерета',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const spinneret_color: Feature<string[]> = {
  name: 'Цвет спиннерета',
  component: FeatureTriColorInput,
};

export const arachnid_legs_toggle: FeatureToggle = {
  name: 'Ноги арахнида',
  component: CheckboxInput,
};

export const feature_arachnid_legs: Feature<string> = {
  name: 'Выбор ног арахнида',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const arachnid_legs_color: Feature<string[]> = {
  name: 'Цвет ног арахнида',
  component: FeatureTriColorInput,
};
