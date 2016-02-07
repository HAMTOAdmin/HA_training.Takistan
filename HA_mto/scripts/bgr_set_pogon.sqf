/*
Created by Vadim Shchemelinin aka badger 
2010 St.Petersburg

Script for OWP_parad by www.Our-Army.su
*/
private ["_man","_name", "_type", "_l", "_n", "_ppp", "_rank"];
_man = _this select 0;
_name = _this select 1;
_type = _this select 2;

diag_log format["INFO. set_pogon started for %1 | %2",_man,_name];

{
	_man setObjectTexture [_x,'#(argb,8,8,3)color(0,0,0,0)'];
} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25];

if (_name == "bgr_bot") exitWith {
	_rank =
	switch (rank _man) do
	{
		case "PRIVATE": {0};
		case "CORPORAL": {1};
		case "SERGEANT": {3};
		case "LIEUTENANT": {9};
		case "CAPTAIN": {12};
		case "MAJOR": {13};
		case "COLONEL": {14};
		default {0};
	};
	_ppp =
	switch (getText (configFile >> "CfgVehicles" >> typeOf _man >> "ha_pak_ppp")) do
	{
		case "vvs": {"VVS"};
		case "vdv": {"VVS"};		
		case "btv": {"BTV"};
		case "mp": {"MP"};
		default {"MSV"};
	};
	if (_type == 1) then {
		_ppp = "povs\"+_ppp;
	};
	_man setObjectTexture [0, format ["\OWP_parad\P\%1\%2.paa",_ppp,_rank]];
};
_n = ha_pak_bgr_parad_namearray find _name;
if (_n == -1) exitwith {_man setObjectTexture [0, "\OWP_parad\P\MSV\K.paa"];};

_l = [];
switch (_type) do {
	case 1: {
		_l = ha_pak_bgr_parad_pov_nagradarray select _n;
	};
	default {
		_l = ha_pak_bgr_parad_par_nagradarray select _n;
	};
};

{
	_man setObjectTexture [(_x select 0), (_x select 1)];
} foreach _l;