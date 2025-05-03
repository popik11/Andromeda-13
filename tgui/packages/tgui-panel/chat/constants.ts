/**
 * @file
 * @copyright 2020 Aleksej Komarov
 * @license MIT
 */

export const MAX_VISIBLE_MESSAGES = 2500;
export const MAX_PERSISTED_MESSAGES = 1000;
export const MESSAGE_SAVE_INTERVAL = 10000;
export const MESSAGE_PRUNE_INTERVAL = 60000;
export const COMBINE_MAX_MESSAGES = 5;
export const COMBINE_MAX_TIME_WINDOW = 5000;
export const IMAGE_RETRY_DELAY = 250;
export const IMAGE_RETRY_LIMIT = 10;
export const IMAGE_RETRY_MESSAGE_AGE = 60000;

// Default message type
export const MESSAGE_TYPE_UNKNOWN = 'unknown';

// Internal message type
export const MESSAGE_TYPE_INTERNAL = 'internal';

// Must match the set of defines in code/__DEFINES/chat.dm
export const MESSAGE_TYPE_SYSTEM = 'system';
export const MESSAGE_TYPE_LOCALCHAT = 'localchat';
export const MESSAGE_TYPE_RADIO = 'radio';
export const MESSAGE_TYPE_ENTERTAINMENT = 'entertainment';
export const MESSAGE_TYPE_INFO = 'info';
export const MESSAGE_TYPE_WARNING = 'warning';
export const MESSAGE_TYPE_DEADCHAT = 'deadchat';
export const MESSAGE_TYPE_OOC = 'ooc';
export const MESSAGE_TYPE_ADMINPM = 'adminpm';
export const MESSAGE_TYPE_COMBAT = 'combat';
export const MESSAGE_TYPE_ADMINCHAT = 'adminchat';
export const MESSAGE_TYPE_MODCHAT = 'modchat';
export const MESSAGE_TYPE_PRAYER = 'prayer';
export const MESSAGE_TYPE_EVENTCHAT = 'eventchat';
export const MESSAGE_TYPE_ADMINLOG = 'adminlog';
export const MESSAGE_TYPE_ATTACKLOG = 'attacklog';
export const MESSAGE_TYPE_DEBUG = 'debug';
// BUBBER EDIT ADDITION BEGIN
export const MESSAGE_TYPE_MENTOR = 'mentor';
export const MESSAGE_TYPE_LOOC = 'looc';
export const MESSAGE_TYPE_REMOTE_LOOC = 'rlooc';
export const MESSAGE_TYPE_SUBTLE = 'subtle';
// BUBBER EDIT ADDITION END

// Metadata for each message type
export const MESSAGE_TYPES = [
  // Always-on types
  {
    type: MESSAGE_TYPE_SYSTEM,
    name: 'Системные сообщения',
    description: 'Сообщения от вашего клиента, всегда включены',
    selector: '.boldannounce',
    important: true,
  },
  // Basic types
  {
    type: MESSAGE_TYPE_LOCALCHAT,
    name: 'IC',
    description: 'Локальные сообщения персонажа (say, emote и т.д.)',
    selector: '.say, .emote',
  },
  {
    type: MESSAGE_TYPE_RADIO,
    name: 'Радио',
    description: 'Все отделы радиосвязи',
    selector:
      '.alert, .minorannounce, .syndradio, .centcomradio, .aiprivradio, .comradio, .secradio, .gangradio, .engradio, .medradio, .sciradio, .suppradio, .servradio, .radio, .deptradio, .binarysay, .resonate, .abductor, .alien, .changeling',
  },
  {
    type: MESSAGE_TYPE_ENTERTAINMENT,
    name: 'Развлечения',
    description: 'Развлекательные и информационные передачи',
    selector: '.enteradio, .newscaster',
  },
  {
    type: MESSAGE_TYPE_INFO,
    name: 'Инфо',
    description: 'Несрочные сообщения от игры и предметов',
    selector:
      '.notice:not(.pm), .adminnotice, .info, .sinister, .cult, .infoplain, .announce, .hear, .smallnotice, .holoparasite, .boldnotice',
  },
  {
    type: MESSAGE_TYPE_WARNING,
    name: 'Предупреждения',
    description: 'Срочные сообщения от игры и предметы',
    selector:
      '.warning:not(.pm), .critical, .userdanger, .italics, .alertsyndie, .warningplain',
  },
  {
    type: MESSAGE_TYPE_DEADCHAT,
    name: 'Мертвый чат',
    description: 'Весь мертвый чат',
    selector: '.deadsay, .ghostalert',
  },
  {
    type: MESSAGE_TYPE_OOC,
    name: 'OOC',
    description: 'Голубая стена глобальных OOC-сообщений',
    selector: '.ooc, .adminooc, .adminobserverooc, .oocplain',
  },
  // BUBBER EDIT ADDITION BEGIN
  {
    type: MESSAGE_TYPE_LOOC,
    name: 'LOOC',
    description: 'Местные сообщения OOC.',
    selector: '.looc',
  },
  {
    type: MESSAGE_TYPE_SUBTLE,
    name: 'Действия',
    description: 'Тонкие и более тонкие действия.',
    selector: '.subtle, .subtler',
  },
  {
    type: MESSAGE_TYPE_MENTOR,
    name: 'Ментор логи',
    description: 'Ментор ЛС и другие наставнические вещи.',
    selector: '.mentor, .mentornotice',
  },
  // BUBBER EDIT ADDITION END
  {
    type: MESSAGE_TYPE_ADMINPM,
    name: 'Аддмин ЛС',
    description: 'Сообщения для/от администраторов (ахелп)',
    selector: '.pm, .adminhelp',
  },
  {
    type: MESSAGE_TYPE_COMBAT,
    name: 'Боевые логи',
    description: 'Урист Мактрейтор пырнул вас ножом!',
    selector: '.danger',
  },
  {
    type: MESSAGE_TYPE_UNKNOWN,
    name: 'Неотсортированное',
    description: 'Все, что мы не смогли отсортировать, всегда включено',
  },
  // Admin stuff
  {
    type: MESSAGE_TYPE_ADMINCHAT,
    name: 'Админ чат',
    description: 'ASAY сообщения',
    selector: '.admin_channel, .adminsay',
    admin: true,
  },
  {
    type: MESSAGE_TYPE_MODCHAT,
    name: 'Мод-чат',
    description: 'MSAY сообщения',
    selector: '.mod_channel',
    admin: true,
  },
  {
    type: MESSAGE_TYPE_PRAYER,
    name: 'Молитвы',
    description: 'Молитвы игроков',
    admin: true,
  },
  {
    type: MESSAGE_TYPE_ADMINLOG,
    name: 'Админ логи',
    description: 'АДМИН ЛОГИ: Урист МакАдмин прыгнул в координаты X, Y, Z',
    selector: '.log_message',
    admin: true,
  },
  {
    type: MESSAGE_TYPE_ATTACKLOG,
    name: 'Нападение логи',
    description: 'Урист МакТрейтор застрелил Джона Доу.',
    admin: true,
  },
  {
    type: MESSAGE_TYPE_DEBUG,
    name: 'Дебаг логи',
    description: 'DEBUG: Подсистема SSPlanets Recover().',
    admin: true,
  },
  // BUBBER EDIT ADDITION BEGIN
  {
    type: MESSAGE_TYPE_REMOTE_LOOC,
    name: 'Удаленный LOOC',
    description:
      'Да, админы могут прочитать ваш LOOC независимо от того, где вы находитесь.',
    selector: '.rlooc',
    admin: true,
  },
  // BUBBER EDIT ADDITION END
];
