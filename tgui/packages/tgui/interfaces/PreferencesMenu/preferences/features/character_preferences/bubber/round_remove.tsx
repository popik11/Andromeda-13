import { CheckboxInput, FeatureToggle } from '../../base';

export const be_round_removed: FeatureToggle = {
  name: 'Быть удалённым в раунде',
  description:
    'Показывает другим игрокам, что вы не против быть удаленным в раунде.',
  component: CheckboxInput,
};
