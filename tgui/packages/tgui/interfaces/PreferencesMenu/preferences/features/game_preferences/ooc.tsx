import { Feature, FeatureColorInput } from '../base';

export const ooccolor: Feature<string> = {
  name: 'Цвет OOC',
  category: 'ЧАТ',
  description: 'Цвет ваших OOC-сообщений.',
  component: FeatureColorInput,
};
