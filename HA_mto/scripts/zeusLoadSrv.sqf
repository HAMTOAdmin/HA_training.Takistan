
// СКРИПТ ЗАГРУЗКИ КОДА ЗЕВСА НА СЕРВЕР


_groups =[]; // массив групп

_leaderlist = []; // массив лидеров
_vehlist = []; // массив транспорта
_objlist = []; // массив объектов
_unit=[];  // массив свойств юнита
_units=[]; // массив юнитов

_tag="";


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
_skill=0;
_rank="";
_stance = "";
_assigveh = objNull;
_assigrole = [];
_assigveh_index = 0;


// служебные переменные
_objvar = "";
_objid = 0;
_vehvar = "";
_vehid = 0;
_grpvar = "";
_grpid = 0;
_unitvar = "";
_unitid = 0;





_zeusCode = _this select 0; // код ЗЕВСА

_puid = _this select 1;  // получаем id пользователя



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



_er=1; // код ошибки  0 -ок, 1-не прошло, 2-присутствует ;


// проверка чтобы лишний код не записали с ;
if ((_zeusCode find ";") ==-1) then
{

  _objs = [];

  // получаем все теги (в квадаратных скобках) из кода
  _objs = call (compile ("["+_zeusCode+"]"));

  _newObjs = [];


  curatorModule = getAssignedCuratorLogic _player; // выбираем куратор 


  
  for "_i" from 0 to ((count _objs) - 1) do
  {
    _obj = _objs select _i;

    _tag=_obj select 0 select [0,1];

    // объект
    if (_tag=="B") then
    {
      _objid=parseNumber (_obj select 0 select [1]);

      _type = _obj select 1;
      _pos = _obj select 2;
      _dir =  _obj select 3;
      _vectup = _obj select 4;
      _damage = _obj select 5;
      _objvar=createvehicle [_type, _pos, [], 0, 'CAN_COLLIDE'];
      _objvar setPosWorld _pos;
      if ((_vectup select 2) < 0.99) then {_objvar setVectorUp _vectup};
      _objvar setdir _dir;
      if (_damage > 0.01) then {_objvar setDamage _damage;};
      if (_fuel < 0.99) then {_objvar setFuel _fuel;};
      _objlist set [count _objlist, _objvar];
      curatorModule addCuratorEditableObjects [[_objvar],true];

    };

    // транспорт
    if (_tag=="V") then
    {

      _vehid=parseNumber (_obj select 0 select [1]);

      _type = _obj select 1;

      _pos = _obj select 2;
      _dir = _obj select 3;
      _fuel = _obj select 4;
      _vectup = _obj select 5;
      _damage = _obj select 6;
      _lock = _obj select 7;

      _vehvar=createvehicle [_type, _pos, [], 0, 'CAN_COLLIDE'];
      _vehvar setPosWorld _pos;
      if ((_vectup select 2) < 0.99) then {_vehvar setVectorUp _vectup};
      _vehvar setdir _dir;
      if (_damage > 0.01) then {_vehvar setDamage _damage;};
      if (_fuel < 0.99) then {_vehvar setFuel _fuel;};
      if (_lock > 0) then {_vehvar lock _lock};
      _vehlist set [count _vehlist, _vehvar];
      curatorModule addCuratorEditableObjects [[_vehvar],true];
    };


    // группа
    if (_tag=="G") then
    {
      _grpid=_obj select 0 select [1];
      _side=_obj select 1;

      switch (_side) do {
        case "WEST": {_side=west}; 
        case "EAST": {_side=east}; 
        case "GUER": {_side=independent}; 
        case "CIV": {_side=civilian}; 
        case "LOGIC": {_side=sideLogic}; 
        case "ENEMY": {_side=sideEnemy}; 
        case "FRIENDLY": {_side=sideFriendly}; 
        default {_side=sideUnknown}; 
      };

      _grpvar = createGroup ([_side] call CBA_fnc_createCenter);
      _units=_obj select 2;


      {
        _gtag=_x select 0 select [0,1];
        // юнит
        if (_gtag=="U") then
        {
          _unitid=parseNumber (_x select 0 select [1]);
          _type = _x select 1;
          _pos = _x select 2;
          _dir = _x select 3;
          _stance = _x select 4;
          _damage = _x select 5;
          _formation =_x select 6;
          _combatmode =_x select 7;
          _behaviour =_x select 8;
          _speedmode =_x select 9;
          _captive = _x select 10;
          _skill = _x select 11;
          _rank = _x select 12;
          _isLeader = _x select 13;
          _assigveh_index = _x select 14;
          _assigrole = _x select 15;

         
          _unitvar = _grpvar createunit[_type ,_pos, [], 0, 'FORM'];
          _unitvar setskill _skill;
          _unitvar setUnitRank _rank;
          _unitvar setPosWorld _pos;

          // Опрделение как лидера
          if (_isLeader) then {
                  _grpvar  selectLeader _unitvar;
                  if ((toLower _formation) != "wedge") then {_grpvar setFormation _formation};
                  if ((toLower _behaviour) != "aware") then {_grpvar setBehaviour _behaviour};
                  if ((toLower _combatmode) != "yellow") then {_grpvar setCombatMode _combatmode};
                  if ((toLower _speedmode) != "normal") then {_grpvar setSpeedMode _speedmode};
          };
          _unitvar setFormDir _dir;
          if ((toLower _stance) != "auto") then {_unitvar setUnitPos _stance};
          if (_damage > 0.01) then {_unitvar setDamage _damage};
          if (_captive) then {_unitvar setCaptive true};


          if (((count _assigrole) > 0) and (_assigveh_index >= 0)) then {

            _assigveh = _vehlist select _assigveh_index;

            //Сажаем юнита в технику по его роли
            switch (toLower (_assigrole select 0)) do {
                    case 'driver': {_unitvar moveInDriver _assigveh};
                    case 'turret': {_unitvar moveInTurret [_assigveh,_assigrole select 1];};
                    default{_unitvar moveInCargo _assigveh};
            };

          };                                                                                                                                                                
          curatorModule addCuratorEditableObjects [[_unitvar],true];
        };

      } foreach _units;


    };  // if (_tag=="G") then

  }; //for
  hint "Создание завершено!";
  sleep 2;

  _er=0;
}
else 
{
  _er=2; // найден ";" возможно попытка взлома
};


_er;

