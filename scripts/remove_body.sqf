_object = _this select 0;
for "_i" from 0 to 1 step 0 do {
	{
		if (!alive _x) then {
			deleteVehicle _x;
		};
		sleep 1;
	} forEach nearestObjects [_object, ["man"], 100];
	sleep 10;
};