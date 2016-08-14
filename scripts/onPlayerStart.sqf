//sleep 0.01;

TitleText["Идёт синхронизация...", "BLACK FADED",999999];
player switchMove "AmovPercMstpSlowWrflDnon]";  //lower players weapon

waituntil {(!isNil {HA_server_compile})};
waituntil {(!isNil {CBA_fnc_addPlayerAction})};
sleep 1;
TitleText[" ", "BLACK IN",2];
["www.Our-Army.su", "Тренировочный полигон"] spawn BIS_fnc_infoText;


/*
if (leader player == player) then {
	if (player getVariable["bgr_tren_dolznost",0] == 0) then {
		player setVariable["bgr_tren_dolznost",2];
	};
};
*/

//if (player in [zeus4,zeus5,zeus6,zeus7,zeus8,zeus9,zeus10]) then {
/*if (player==zeus8) {
	if (player getVariable["bgr_tren_dolznost",0] == 0) {
		player setVariable["bgr_tren_dolznost",2];
	};

};
*/


if (player getVariable["bgr_tren_dolznost",0] > 0) then {

	//_acm = _groupLogic createUnit ["AmbientCombatManager",position player,[],0,"NONE"];
	//_acm synchronizeObjectsAdd [player];

/*	
	if (isNil {player getVariable "bgr_HighCommand"}) then {
		_groupLogic = createGroup sideLogic;
		_hc = _groupLogic createUnit ["HighCommand",position player,[],0,"NONE"];
		_hcs = _groupLogic createUnit ["HighCommandSubordinate",position player,[],0,"NONE"];
		
		_hc synchronizeObjectsAdd [player,_hcs];
		_hcs synchronizeObjectsAdd [_hc];
		player setVariable ["bgr_HighCommand", 1, true];		
	};
*/

// 0 = [["Меню", "scripts\Main_Menu\MM_Open.sqf"]] call CBA_fnc_addPlayerAction;


_statement = {
    [] execVM "scripts\Main_Menu\MM_Open.sqf";
};

_action = ["HA_Tren","Тренировка","",{hint '';},{true}] call ace_interact_menu_fnc_createAction;
[ace_player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["HA_Menu","Меню","",_statement,{true}] call ace_interact_menu_fnc_createAction;
[ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;


};



if (player getVariable["bgr_tren_dolznost",0] == 1) then {
  //0 = [["Спектатор(выход на F10)", "scripts\ace_spect.sqf"]] call CBA_fnc_addPlayerAction;
  //0 = [["<t color='#00ff00'>Наблюдение</t>", "spectator.sqf"]] call CBA_fnc_addPlayerAction;
  //0 = [["Zeus(импорт/экспорт)", clientFolder+"\ZeusSaver_Open.sqf"]] call CBA_fnc_addPlayerAction;

  _spectator = {
      [] execVM "spectator.sqf";
  };

  _zeus_imex = {
      _zpath = clientFolder+"\ZeusSaver_Open.sqf";
      [] execVM _zpath;
      //hint format["-%1-",_zpath];
  };

  _action = ["HA_Spectator","Наблюдение","",_spectator,{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;

  _action = ["HA_Zeus_Import","Zeus(импорт/экспорт)","",_zeus_imex,{true}] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions","HA_Tren"], _action] call ace_interact_menu_fnc_addActionToObject;
	
};


player switchMove "AmovPercMstpSlowWrflDnon";  //lower players weapon
