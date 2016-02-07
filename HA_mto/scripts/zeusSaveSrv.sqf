// СКРИПТ ФОРМИРОВАНИЯ КОДА ЗЕВСА НА СЕРВЕРЕ


// группы
_groups =[];

_leaderlist = []; // лидеры
_vehlist = []; // транспорт
_objlist = []; // объекты
_targetlist =[]; //все объекты присоединенные к куратору
_unit=[]; // массив свойств юнита
_units=[]; // массив юнитов
_fr="";



_leader = objNull;
_side = "";
_group = "";
_type = "";
_pos = [];
_dir = [];
_vectup = [];
_damage = 0;
_fuel = 1;
_formation = "";
_behaviour = "";
_combatmode = "";
_speedmode = "";
_captive = false;
_stance = "";
_assigveh = objNull;
_assigrole = [];
_assigveh_index = 0;
_skill=0;
_rank="";

_objvar = "";
_objid = 0;
_vehvar = "";
_vehid = 0;
_grpvar = "";
_grpid = 0;
_unitvar = "";
_unitid = 0;



_puid = _this select 0;  // получаем id пользователя


_player = objNull;


if ((count playableUnits)>0) then
{

 {

  if (getPlayerUID _x == _puid) exitWith {
	   _player = _x;
  };
 } forEach playableUnits; 

}
else
{
 {

  if (getPlayerUID _x == _puid) exitWith {
	   _player = _x;
  };
 } forEach switchableUnits; 

};


_cr = getAssignedCuratorLogic _player;



// все кураторы
//_crs=allCurators;

// берем куратор с индексом _zeusIndex
//_cr=_crs select _zeusIndex;

// все объекты присоединенные к куратору
_targetlist = curatorEditableObjects _cr;

_sobjs="";



//Классификация по типам
{
	
	//Определяем лидеров.
	if (_x in allUnits) then {
		if ((leader group _x) == _x) then {_leaderlist set [count _leaderlist, [_x, group _x]]};
	
	} else {

		//Активные статичные объекты и строения (не удаленные)
		//Перед транспортом чтобы избежать неправильной классификации некоторых статических объектов как транспорт
		if (_x in (allMissionObjects "Static")) then {
				_objlist set [count _objlist, _x];
	
		} else {
			//Активный транспорт и статические орудия
			if (_x in vehicles) then {
				_vehlist set [count _vehlist, _x];
			};
		};
	};
	
} foreach _targetlist;



////////////////////////////////////////// ОБЪЕКТЫ /////////////////////////////////////////////////

{
	_type = typeof _x;
        _pos = getPosWorld _x;
        //_pos = getPos _x;
	_dir = getdir _x;
	_vectup = vectorUp _x;
	_damage = damage _x;

        _objvar=format["B%1",_objid];

        if (_sobjs!="") then {_fr=",%1";}
        else {_fr="%1";};
        _sobjs=_sobjs+format [_fr, [_objvar, _type, _pos, _dir, _vectup, _damage]];

       	_objid = _objid + 1;

} foreach _objlist;




////////////////////////////////////////// ТРАНСПОРТ /////////////////////////////////////////////////

{
	_type = typeof _x;
	_pos = getPosWorld _x;
        //_pos = getPos _x;
	_dir = getdir _x;
	_vectup = vectorUp _x;
	_damage = damage _x;
	_fuel = fuel _x;
        _lock = locked _x;
	
        if (_sobjs!="") then {_fr=",%1";}
        else {_fr="%1";};

        _vehvar=format["V%1",_vehid];

        _sobjs=_sobjs+format [_fr, [_vehvar, _type, _pos, _dir, _fuel, _vectup, _damage, _lock]];
	_vehid = _vehid + 1;

} foreach _vehlist;




///////////////////////////////////////// ЮНИТЫ /////////////////////////////////////////////////////

{
	_leader = _x select 0;
	_group = _x select 1;
	_side = side _leader;


        _units=[];

	//Добавляем юниты в отделение
	{
		//Только те униты которые присоединены к данному куратору и не плеер
		if ((_x in _targetlist) and !(isPlayer _x)) then {

                        _unit=[];

			_type = typeof _x;
			_pos = getPosWorld _x;
                        //_pos = getPos _x;
			_dir = getdir _x;
			_stance = unitPos _x;
			_damage = damage _x;
			_formation = formation (group _x);
			_combatmode = combatMode (group _x);
			_behaviour = behaviour _x;
			_speedmode = speedMode (group _x);
			_captive = captive _x;
			_skill= skill _x;
                        _rank= rank _x;
			
			_unitvar = format["U%1",_unitid];
		
                        _isLeader=isFormationLeader _x;

			//Проверка привязан ли бот к транспорту
                        _assigveh_index=-1;
                        _assigrole=[];

			_assigveh = assignedVehicle _x;
			_assigrole = assignedVehicleRole _x;
		
			if ((count _assigrole) > 0) then {
			
				//Определяем транспорт
				_assigveh_index = _vehlist find _assigveh;
			
			};
			
                        _unit=[_unitvar,_type,_pos,_dir,_stance,_damage,_formation,_combatmode,_behaviour,_speedmode,_captive,_skill,_rank,_isLeader,_assigveh_index,_assigrole];
                        _units set [count _units, _unit];
        		_unitid = _unitid + 1;
		};
		
	} foreach (units (group _leader));

        if ((count _units) > 0) then
        {

    	  //Создаем группу

          _grpvar=format["G%1",_grpid];
	
          if (_sobjs!="") then {_fr=",%1";}
          else {_fr="%1";};

          _sobjs=_sobjs+format [_fr, [_grpvar, format["%1",_side], _units]];
	
	  _grpid = _grpid + 1;
	};

} foreach _leaderlist;

_sobjs;

