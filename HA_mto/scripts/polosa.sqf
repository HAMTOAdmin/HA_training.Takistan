_init_obj = _this select 0;
_polosa = _this select 1;
_polosa_start = _this select 2;
_polosa_finish = _this select 3;

_arrPolosa = _polosa select 0;
_stTrigPos = _polosa select 1;
_fnTrigPos = _polosa select 2;

_initDir = getDir _init_obj;
_initPos = getPos _init_obj;

_polosa_start setPos [(_initPos select 0) + (_stTrigPos select 0)*(sin(_initDir)) + (_stTrigPos select 1)*(sin(_initDir - 90)),
				(_initPos select 1) + (_stTrigPos select 0)*(cos(_initDir)) + (_stTrigPos select 1)*(cos(_initDir - 90)),
				0+(_stTrigPos select 2)];
_polosa_start setDir _initDir;
_polosa_finish setPos [(_initPos select 0) + (_fnTrigPos select 0)*(sin(_initDir)) + (_fnTrigPos select 1)*(sin(_initDir - 90)),
				(_initPos select 1) + (_fnTrigPos select 0)*(cos(_initDir)) + (_fnTrigPos select 1)*(cos(_initDir - 90)),
				0+(_fnTrigPos select 2)];
_polosa_finish setDir _initDir;

{
	_class = _x select 0;
	_dir = _x select 1;
	_distX = _x select 2;
	_distY = _x select 3;
	_distZ = _x select 4;
	
	_newPos = [(_initPos select 0) + _distX*(sin(_initDir)) + _distY*(sin(_initDir - 90)),
				(_initPos select 1) + _distX*(cos(_initDir)) + _distY*(cos(_initDir - 90)),
				0+_distZ];
	_polosaObj = _class createVehicle _newPos;
	_polosaObj setPosATL _newPos;
	_polosaObj setDir _dir+_initDir;
	sleep 0.05;
       if (_class=="TargetP_Inf2_F") then {

          _polosaObj addEventHandler
          ["hit",
            {_this spawn
              {
                _p=_this select 0;
                _done=0;
                waitUntil
                {
                  uiSleep 5;
                  if ((_p animationPhase "terc") == 1) then
                  {_p animate["terc",0]; _done = 1;};
                   _done == 1
                };
              };
            }
          ];


        };

} forEach _arrPolosa;