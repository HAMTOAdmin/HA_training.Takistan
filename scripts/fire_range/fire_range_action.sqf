_man = _this select 1;
_id = (_this select 3) select 0;
_range = (_this select 3) select 1;

if (_range getVariable "bgr_fire_range_state" == -1) then {
	_range setVariable ["bgr_fire_range_state", _id, true];

	_text = format ["%1: Ждите, задание выполняется...",_range getVariable "bgr_fire_range_name"];
	[-2, {(_this select 0) globalChat (_this select 1)}, [_man,_text]] call CBA_fnc_globalExecute;

	waitUntil {sleep 0.5; _range getVariable "bgr_fire_range_state" == -1};
	_text = format ["%1: Задание выполнено.",_range getVariable "bgr_fire_range_name"];
	[-2, {(_this select 0) globalChat (_this select 1)}, [_man,_text]] call CBA_fnc_globalExecute;
}else{
	_text = format ["%1: Ошибка, Рубеж занят другим заданием!",_range getVariable "bgr_fire_range_name"];
	[-2, {(_this select 0) globalChat (_this select 1)}, [_man,_text]] call CBA_fnc_globalExecute;
};