//sleep 0.01;

TitleText["Идёт синхронизация...", "BLACK FADED",999999];
player switchMove "AmovPercMstpSlowWrflDnon]";  //lower players weapon

waituntil {(!isNil {HA_server_compile})};
waituntil {(!isNil {CBA_fnc_addPlayerAction})};
sleep 1;
TitleText[" ", "BLACK IN",2];
["www.Our-Army.su", "Тренировочный полигон"] spawn BIS_fnc_infoText;



if (player getVariable["bgr_tren_dolznost",0] > 0) then {


  _statement = {
    [] execVM "scripts\Main_Menu\MM_Open.sqf";
  };

  _action = ["HA_Tren","Инструктор","",{hint '';},{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["HA_Menu","Меню","",_statement,{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;

};



if (player getVariable["bgr_tren_dolznost",0] == 1) then {

  _spectator = {
      [] execVM "spectator.sqf";
  };

  _zeus_imex = {
      _zpath = clientFolder+"\ZeusSaver_Open.sqf";
      [] execVM _zpath;
  };

  _action = ["HA_Spectator","Наблюдение","",_spectator,{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["HA_Zeus_Import","Zeus(импорт/экспорт)","",_zeus_imex,{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;
	
};

player switchMove "AmovPercMstpSlowWrflDnon";  //lower players weapon
