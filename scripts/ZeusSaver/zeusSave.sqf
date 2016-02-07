
 // ======= Управление сохранением на стороне клиента ========

  zsCode = "";
  ctrlSetText [8, ""]; // очистка формы 

  // на клиенте мультиплеера
  if (isMultiplayer and !isServer) then {
    zSavePacket = [player];
    publicVariableServer "zSavePacket"; 
  }
  else {
    // в случае однопользовательского режима или когда клиент является сервером запускаем на машине клиента
    _pid=getPlayerUID player;
    //[_pid] spawn zeusSaveSrv; // для отладки
    zsCode = [_pid] call zeusSaveSrv; // получение кода зевса
    ctrlSetText [8, zsCode]; // отображение кода в форме
    if (zsCode=="") then
    {
      hint format ["Объекты Zeus не найдены!"];
    }
    else
    {
      copyToClipboard zsCode; // дополнительное сохранение в буфер обмена в сингл-плеере
      hint format ["Объекты Zeus сохранены в буфер обмена."];
    }
  };
