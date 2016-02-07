//by badger
_script_name = "scripts\bgr_HALOinit.sqf";

_stand = _this select 0;
_man = _this select 1;
_mas = _this select 3;
_type = _mas select 0;
_planePos = _mas select 1;
_planeObj = _mas select 2;
_high = _mas select 3;

//0 = [this,0,0,[0,desant_tr,desant_tr_v,0]] execVM "scripts\bgr_HALOinit.sqf";

switch (_type) do
{
	case 0: //init
	{
		_planePos setPos [(getPos _planePos select 0), getPos _planePos select 1, _high];
		_stand addaction ["Тренажёр на 2м",_script_name,[1,_planePos,_planeObj,2]];
		_stand addaction ["Тренажёр на 100м",_script_name,[1,_planePos,_planeObj,100]];
		_stand addaction ["Тренажёр на 500м",_script_name,[1,_planePos,_planeObj,500]];
		_stand addaction ["Тренажёр на 800м",_script_name,[1,_planePos,_planeObj,800]];
		_stand addaction ["Тренажёр на 1000м",_script_name,[1,_planePos,_planeObj,1000]];
		_stand addaction ["Тренажёр на 1500м",_script_name,[1,_planePos,_planeObj,1500]];
		_stand addaction ["Тренажёр на 5000м",_script_name,[1,_planePos,_planeObj,5000]];
		_stand addaction ["На исходную для прыжка",_script_name,[2,_planePos,_planeObj,_high]];
		
	};
	case 1: //move plane
	{
		_planePos setPos [(getPos _planePos select 0), getPos _planePos select 1, _high];
		hint format ["%1",_high];
	};
	case 2: //to plane and eject
	{
		if !(typeOf (unitBackpack _man) == "B_Parachute") then {
			_man addBackpack "B_Parachute";
		};
		_man moveInCargo _planeObj;
		/*
		if !(_man hasWeapon "ACE_ParachutePack") then {
			_man addweapon "ACE_ParachutePack";
		};
		_man setPos [(getPos _plane select 0), (getPos _plane select 1), (getPos _plane select 2)+1]; 
		_flag = true;
		while {_flag} do {
			if !(alive _man) then {
				_flag = false;
			};
			if ((getPosASL _man select 2)-(getPosASL _plane select 2) < -0.5) then {
				_scr = _man execVM "x\ace\addons\sys_eject\jumpout_cord.sqf"; 
				_flag = false;
			};
			sleep 0.5;
		};
		*/
	};
};