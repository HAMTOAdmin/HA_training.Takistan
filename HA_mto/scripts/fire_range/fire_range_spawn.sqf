//[_action_id,[_range,_rangeW,_rangeDir],_targets]
_id = _this select 0;
_range = (_this select 1) select 0;
_rangeW = (_this select 1) select 1;
_rangeDir = (_this select 1) select 2;
_targets = _this select 2;

_initPos = getPos _range;
_target = 0;

while {true} do {
	waitUntil {sleep 0.5; _range getVariable "bgr_fire_range_state" == _id};
	
	//clean
	{
		//hint "del";
		deleteVehicle _x;
	} forEach (_range getVariable "bgr_fire_range_targets");
	_new_targets = [];
	sleep 1;
	
	//Targets
	_sideNumber = -1;
	{
		
		_targetClass = _x select 0;
		_targetDist = _x select 1;
		_targetDir = _x select 2;
		_moveType = _x select 3;
		_sideStep = (_rangeW-5)/2*_sideNumber;
		_newPos = [(_initPos select 0) + _targetDist*(sin(_rangeDir)) + _sideStep*(sin(_rangeDir + 90)),
					(_initPos select 1) + _targetDist*(cos(_rangeDir)) + _sideStep*(cos(_rangeDir + 90)),
					_initPos select 2];
		_newMovePos = [(_initPos select 0) + _targetDist*(sin(_rangeDir)) + (-1)*_sideStep*(sin(_rangeDir + 90)),
					(_initPos select 1) + _targetDist*(cos(_rangeDir)) + (-1)*_sideStep*(cos(_rangeDir + 90)),
					_initPos select 2];						
		_newDir = _rangeDir + 180 + _targetDir;
		_isMan = false;
		if (_targetClass isKindOf "Man") then {
			_isMan = true;
			_group = creategroup west;
			_target = _group createUnit [_targetClass, _newPos, [], 0, "FORM"];
			_target setcombatmode "BLUE";
			_target setbehaviour "CARELESS";
			_target disableai "TARGET";
			_target disableai "AUTOTARGET";
			_target disableai "FSM";
			_target disableai "MOVE";
			_target allowfleeing 0;
			
		}else{		
			_target = _targetClass createVehicle _newPos;
			_target lock true;
		};
		_target setDir _newDir;
		_new_targets = _new_targets + [_target];
		
		if ((_moveType == 2)&&(_isMan)) then {
			_target setDir _rangeDir+(_sideNumber*(-90));
			0 = [_target,_newPos,_newMovePos] spawn {
				_target = _this select 0;
				//while {true} do {
				while {(canmove _target)&&(alive _target)} do {
					_oldDist2 = _target distance (_this select 2);
					_target playMove "amovpercmrunsraswrfldf";
					sleep 2;
					_newDist2 = _target distance (_this select 2);
					_newDist1 = _target distance (_this select 1);
					if (((_newDist2 < 7)and(_newDist2 < _oldDist2))or((_newDist1 < 7)and(_newDist2 > _oldDist2))) then
					{
						_target setDir (getDir _target + 180);
					};
					//hintC format["%1, %2 - %3",_newDist1,_newDist2,_oldDist2];// "move move move";
				};
			};
		};
		if (_moveType == 1) then {
			if (_isMan) then {
				_target enableAI "MOVE";
			}else{
				_randomgroup = creategroup west;
				_randomcrew = _randomgroup createUnit ["USMC_Soldier_Crew", _newPos, [], 0, "FORM"];
				[_randomcrew] join grpNull;
				deletegroup _randomgroup;
				_randomcrew setcombatmode "BLUE";
				_randomcrew allowfleeing 0;
				_randomcrew moveindriver _target;
				_new_targets = _new_targets + [_randomcrew];
				_target setcombatmode "BLUE";
				_target disableai "FSM";
				_target allowfleeing 0;			
			};
			
			0 = [_target,_newPos,_newMovePos] spawn {
				_target = _this select 0;
				//while {true} do {
				while {(canmove _target)&&(alive _target)} do {
					if (_target distance (_this select 2) < 10) then
					{
						_target domove (_this select 1);
					};
					sleep 1;
					if (_target distance (_this select 1) < 10) then
					{
						_target domove (_this select 2);
					};
					//hint "move move move";
					sleep 1;
				};
			};
		};
		//_target setGroupid [format["%1m, %2",_targetDist,_targetClass]];
		_target setVariable ["bgr_fire_range_target_name", format["%1 %2 %3m",(_range getVariable "bgr_fire_range_name"), _targetClass, _targetDist], true];
		_target setVariable ["bgr_fire_range", _range, true];
		
		0 = _target addEventHandler ["Hit",{
			_range = (_this select 0) getVariable "bgr_fire_range";
			_text = _range getVariable "bgr_fire_range_history";
			_dtime = format["%1:%2",date select 3, date select 4];
			_text = _text + format["<br/>%1: %2 поразил %3 - %4",_dtime,name (_this select 1),(_this select 0) getVariable "bgr_fire_range_target_name",(_this select 2)];
			_range setVariable ["bgr_fire_range_history", _text, true];
			_this select 2;} ];
		
		0 = _target addEventHandler ["Killed",{
			_range = (_this select 0) getVariable "bgr_fire_range";
			_text = _range getVariable "bgr_fire_range_history";
			_dtime = format["%1:%2",date select 3, date select 4];
			_text = _text + format["<br/>%1: %2 уничтожил %3 <br/>",_dtime,name (_this select 1),(_this select 0) getVariable "bgr_fire_range_target_name"];
			_range setVariable ["bgr_fire_range_history", _text, true];
			0 = (_this select 0) spawn {
				sleep 1;
				deleteVehicle _this;
			};
		_this select 2;} ];
		
		_sideNumber = _sideNumber * -1;
		
	} forEach _targets;
	
	_range setVariable ["bgr_fire_range_targets", _new_targets, true];
	sleep 1;
	_range setVariable ["bgr_fire_range_state", -1, true];
};