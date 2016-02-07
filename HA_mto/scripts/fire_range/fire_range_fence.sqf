//[[2,"RoadCone",10,0],getPos this,90,500,25]
_fenceType = (_this select 0) select 0; //no - -1, l - 0, r - 1, both - 2
_fenceClass = (_this select 0) select 1;
_fenceStep = (_this select 0) select 2;
_fenceDir = (_this select 0) select 3;
_initPos = _this select 1;
_rangeDir = _this select 2;
_rangeL = _this select 3;
_rangeW = _this select 4;

//Fence
if (_fenceType >= 0) then {
	_sideStepR = _rangeW/2;
	_sideStepL = (-1)*_sideStepR;
	_newDir = _rangeDir + 180 + _fenceDir;
	for [{_i=_fenceStep}, {_i<_rangeL}, {_i=_i+_fenceStep}] do {
		_newPosR = [(_initPos select 0) + _i*(sin(_rangeDir)) + _sideStepR*(sin(_rangeDir + 90)),
					(_initPos select 1) + _i*(cos(_rangeDir)) + _sideStepR*(cos(_rangeDir + 90)),
					_initPos select 2];
		_newPosL = [(_initPos select 0) + _i*(sin(_rangeDir)) + _sideStepL*(sin(_rangeDir + 90)),
					(_initPos select 1) + _i*(cos(_rangeDir)) + _sideStepL*(cos(_rangeDir + 90)),
					_initPos select 2];
		if ((_fenceType==1)||(_fenceType==2)) then {
			_fence = _fenceClass createVehicle _newPosR;
			_fence setDir _newDir; 
		};
		if ((_fenceType==0)||(_fenceType==2)) then {
			_fence = _fenceClass createVehicle _newPosL;
			_fence setDir _newDir; 
		};
	}
};