/*
Created by Vadim Shchemelinin aka badger 
2011 St.Petersburg

Script for www.Our-Army.su
*/
/*
Компилирует все скрипты находящиеся на сервере с названиями содержащимися в _this,
в функции с названием файла в скрипте. 
После чего отправляет их клиентам через пабликВар.
*/
if !(isServer) exitWith {};
//_server_dir="server\functions";
_server_dir="HA_mto\scripts\functions";

_flist = _this;
diag_log "INFO. bgr_compile STARTED";
waituntil {(!isNil {CBA_fnc_publicVariable})};
diag_log "INFO. bgr_compile CBA - OK";

{	
	_code = compile ( preprocessFileLineNumbers format ["%1\%2.sqf",_server_dir,_x]	);
	//call compile format["%1 = _code; publicVariable '%1';",_x];
	_ok = [_x, _code] call CBA_fnc_publicVariable;
	diag_log format["INFO. %1 peredano - %2",_x,_ok];
	
} forEach _flist;
_ok = ["HA_server_compile", 1] call CBA_fnc_publicVariable;
diag_log format["INFO. bgr_compile FINISHED - %1",_ok];