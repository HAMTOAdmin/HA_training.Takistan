_key = _this select 1;		//нажатая кнопка
_shift = _this select 2;	//нажат ли Shift (true/false)
_ctrl = _this select 3;		//Ctrl
_alt = _this select 4;		//Alt

if (_key!=1 and _key!=211) ExitWith {};

switch (_key) do
{
	case 211:
	{
		_HCSelGroops = hcSelected player;

		for [{_i = 0},{_i < count _HCSelGroops},{_i=_i+1}] do
		{
			_vehicle = any;
			_HCSelGroop = _HCSelGroops select _i;
			_HCSelGroopUnits = units _HCSelGroop;

			for [{_j = 0},{_j < count _HCSelGroopUnits},{_j=_j+1}] do
			{
				_HCSelGroopUnit = _HCSelGroopUnits select _j;
				_vehicle = vehicle _HCSelGroopUnit;

				deleteVehicle _vehicle;
				deleteVehicle _HCSelGroopUnit;
			};
		};
	};

	case 1:
	{
		hint "Действие отменено";
	};
};

(findDisplay 46) displayRemoveEventHandler ["KeyDown",EX_HCGrDel];

sleep 2;
hint "";