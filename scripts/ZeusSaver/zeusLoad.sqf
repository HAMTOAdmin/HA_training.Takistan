
//======= Управление загрузкой на стороне клиента ========

  zsCode = ctrlText 8; // получение кода зевса из формы

  // на клиенте мультиплеера
  if (isMultiplayer and !isServer) then {
    zLoadPacket = [player, zsCode]; // формируем пакет для отправки на сервер
    publicVariableServer "zLoadPacket"; // отправка пакета на сервер
  }
  else {
    _er=0;
    // в случае однопользовательского режима или когда клиент является сервером запускаем на машине клиента
    _pid=getPlayerUID player;
    er = [zsCode,_pid] call zeusLoadSrv; // загрузка кода зевса и получение кода ошибки
    //[zsCode,_pid] spawn zeusLoadSrv; // отладка на клиенте чтобы хинты показывались и sleep-ы
    
    if (_er==0) then
    {
      ctrlSetText [8, ""];
      hint "Объекты загружены в Zeus.";
    }
    else
    {
      hint format ["Ошибка загрузки."];
    };
    

  };
