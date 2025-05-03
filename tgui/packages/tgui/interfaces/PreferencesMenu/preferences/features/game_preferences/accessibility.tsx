import { CheckboxInput, FeatureToggle } from '../base';

export const darkened_flash: FeatureToggle = {
  name: 'Включение затемненных вспышек',
  category: 'ДОСТУПНОСТЬ',
  description: `
    При переключении на мигающий экран будет отображаться темный экран, а не
    яркий.
  `,
  component: CheckboxInput,
};

export const screen_shake_darken: FeatureToggle = {
  name: 'Уменьшить дрожание экрана',
  category: 'ДОСТУПНОСТЬ',
  description: `
      Если этот параметр включен, то при сотрясении экрана экран темнеет.
    `,
  component: CheckboxInput,
};
