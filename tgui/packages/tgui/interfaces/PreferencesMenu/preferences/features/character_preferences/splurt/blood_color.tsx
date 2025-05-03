import {
  CheckboxInput,
  Feature,
  FeatureColorInput,
  FeatureToggle,
} from '../../base';

export const custom_blood_color: FeatureToggle = {
  name: 'Возможность настройки цвета крови',
  component: CheckboxInput,
};

export const blood_color: Feature<string> = {
  name: 'Пользовательский цвет крови',
  component: FeatureColorInput,
};
