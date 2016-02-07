_man = _this select 1;
_range = (_this select 3) select 0;


if (_range getVariable "bgr_fire_range_state" == -1) then {
	_range setVariable ["bgr_fire_range_state", 0, true];
	{
		deleteVehicle _x;
	} forEach (_range getVariable "bgr_fire_range_targets");

	_range setVariable ["bgr_fire_range_targets", [], true];
	sleep 1;
	_text = format ["%1: Рубеж очищен...",_range getVariable "bgr_fire_range_name"];
	[-2, {(_this select 0) globalChat (_this select 1)}, [_man,_text]] call CBA_fnc_globalExecute;
	_range setVariable ["bgr_fire_range_state", -1, true];
}else{
	_text = format ["%1: Ошибка, Рубеж занят другим заданием!",_range getVariable "bgr_fire_range_name"];
	[-2, {(_this select 0) globalChat (_this select 1)}, [_man,_text]] call CBA_fnc_globalExecute;
};