/*
Created by Vadim Shchemelinin aka badger 
2010 St.Petersburg

Script for OWP_parad by www.Our-Army.su
*/
if (!isServer) exitWith {};
private ["_man","_name", "_type", "_isplayer"];
_man = _this select 0;
_name = _this select 1;
_type = _this select 2;
_isplayer = isPlayer _man;

if (!isNil {_man getVariable "ha_pogon_controller"}) exitWith {};

_man setVariable ["ha_pogon_controller", 1, false];

diag_log format["INFO. pogon controller started... for %1",_man];
sleep 1;
/*_man setVehicleInit format ["this sideChat '%1';","ura!"];
processInitCommands;
clearVehicleInit _man;*/

while {alive _man} do {
	waituntil {(!isNil {_man getVariable "ha_name"})||((_name != "bgr_bot")&&(_name != (name _man)))||((_isplayer || isPlayer _man) && !(_isplayer && isPlayer _man))};
	_tstr = format ["INFO. pogon_contr_BODY: %1 %2?%3 %4%5",(_man getVariable 'ha_name'),_name,(name _man),_isplayer,(isPlayer _man)];
	diag_log _tstr;
	/*_man setVehicleInit format ["this sideChat '%1';",_tstr];
	processInitCommands;
	clearVehicleInit _man;*/
	
	if (!isNil {_man getVariable "ha_name"}) exitWith {
		_name = "[HA]" + (_man getVariable "ha_name");
		//run on all!!!
		//0 = [_man,_name,_type] execVM "bgr_set_pogon.sqf";
		//run on all!!!
		_man setVehicleInit format ["0 = [this,'%1',%2] spawn fbgrOWP_set_pogon;",_name,_type];
		processInitCommands;
		clearVehicleInit _man;
	};
	_isplayer = isPlayer _man;
	if (_isplayer) then {
		_name = name _man;	
	}else{
		_name = "bgr_bot";
	};
	//run on all!!!
	//0 = [_man,_name,_type] execVM "bgr_set_pogon.sqf";
	//run on all!!!
	if (alive _man) then {
		_man setVehicleInit format ["0 = [this,'%1',%2] spawn fbgrOWP_set_pogon;",_name,_type];
		processInitCommands;
		clearVehicleInit _man;
	};
	sleep 3;
};

_man setVariable ["ha_pogon_controller", nil, false];