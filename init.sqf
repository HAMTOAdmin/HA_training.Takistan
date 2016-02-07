//Подключаем инициализацию дополнительных переменных
#include "scripts\bgr_vars.sqf"
//Получаем значения параметров из дескрипшена
#include "scripts\processParamsArray.sqf";

//Отключаем автоподнимание мишеней
nopop = true;

//Выключаем сохранения
enableSaving [false, false];

// Disable BIS Conversations
player setVariable ["BIS_noCoreConversations", true];

//брифинг
_briefscr = execVM "briefings\init.sqf";

//боты за которых играют не двигаются
{_x disableAI "ANIM";} foreach bgr_PlayableUnits;

//Подключаем скрипт импорта/экспорта Zeus
#include "scripts\ZeusSaver\zsinit.sqf";

//Подключение к серверу
0 = [] execVM "scripts\compile.sqf";

//Определение действий доступных для игрока
_actions = execVM "scripts\onPlayerStart.sqf";

//0 = [] execVM "scripts\id.sqf";