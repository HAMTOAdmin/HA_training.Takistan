
// =============== Скрипт инициализации ==================


serverFolder="HA_mto\scripts"; // каталог с серверными скриптами
clientFolder="scripts\ZeusSaver"; // каталог с клиентскими скриптами


// код для зевса
zsCode="";

  // Для мултиплеера на стороне сервера
  if (isMultiplayer and (isDedicated or isServer)) then {
        // Создаем обработчик события на изменение переменной zSavePacket (сохранение объектов из зевса) вещаемой на сервер
  	"zSavePacket" addPublicVariableEventHandler {
  		_pcid = owner (_this select 1 select 0); // получение clientID пользователя запрашивающего сервер
  		_pid=getPlayerUID (_this select 1 select 0);
                zSavePacket =[_pid] call compile preprocessFile (serverFolder+"\zeusSaveSrv.sqf"); // получение кода объектов от скрипта на сервере
  		_pcid publicVariableClient "zSavePacket";  // отправление пакета с кодом обратно клиенту
  	};
        // Создаем обработчик события на изменение переменной zLoadPacket (загрузка объектов в зевс) вещаемой на сервер
  	"zLoadPacket" addPublicVariableEventHandler {
  		_pcid = owner (_this select 1 select 0); // получение clientID пользователя запрашивающего сервер
  		_zcode = _this select 1 select 1; // получение кода для загрузки на сервер
                _pid=getPlayerUID (_this select 1 select 0);
                zLoadPacket = [_zcode,_pid] call compile preprocessFile (serverFolder+"\zeusLoadSrv.sqf"); // загрузка кода на сервер и получение кода возврата
  		_pcid publicVariableClient "zLoadPacket"; // отправление пакета с кодом возврата обратно клиенту
  	};

  };


  // Для мултиплеера на стороне клиентов
  if (isMultiplayer and !isDedicated and !isServer) then {
                // Создаем обработчик события на изменение переменной zSavePacket (сохранение объектов из зевса) вещаемой на клиент
                "zSavePacket" addPublicVariableEventHandler {
  		  _zcode = _this select 1; // получение кода зевса от сервера
                  if (_zcode=="") then {hint "Объекты Zeus не найдены!";} 
                  else {zsCode=_zcode; ctrlSetText [8, zsCode];}; // загрузка кода в форму

  	};
                // Создаем обработчик события на изменение переменной zLoadPacket (загрузка объектов в зевс) вещаемой на клиент
  		"zLoadPacket" addPublicVariableEventHandler {
  		  _er = _this select 1;
                  if (_er!=0) then {hint "Ошибка загрузки кода в ZEUS!";}  // если код ошибки не нулевой
                  else {ctrlSetText [8, ""]; hint "Объекты загружены в Zeus.";}; // очистка формы

  	};
  };	


// Для однопользовательского режима или хост-режима компилируем скрипты загрузки-выгрузки на стороне клиента в глобальные переменные
if (!isMultiplayer or (isMultiplayer and isServer and !isDedicated)) then {

  zeusSaveSrv = compile preprocessFile (serverFolder+"\zeusSaveSrv.sqf");  
  zeusLoadSrv = compile preprocessFile (serverFolder+"\zeusLoadSrv.sqf");

};

// Компилируем вспомогательные клиентские скрипты 
zs_Save = compile preprocessFile (clientFolder+"\zeusSave.sqf");
zs_Load = compile preprocessFile (clientFolder+"\zeusLoad.sqf");
