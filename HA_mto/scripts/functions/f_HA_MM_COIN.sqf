_man = _this select 0;
_pos = _this select 1;
_area = _this select 2;
_arr = _this select 3;
_coin_interface_scr = "ca\modules\coin\data\scripts\coin_interface.sqf";
if (count _this > 4) then {
	_coin_interface_scr = _this select 4;
};

if ((isNil {_man getVariable "bgr_COIN"})) then {
	_center = createCenter sideLogic;
	_group = createGroup _center;
	_bgr_COIN = _group createUnit ["ConstructionManager", [0, 0, 0], [], 0, "NONE"];
	_man setVariable ["bgr_COIN",_bgr_COIN,true];
	sleep 0.5;
};
_COIN = _man getVariable "bgr_COIN";

_COIN setvariable ["BIS_COIN_rules",[_man]];
_COIN setvariable ["BIS_COIN_actionCondition","false"];
_COIN setvariable ["BIS_COIN_areasize",_area];

_categories = [];
_items = [];
{
	if !((_x select 0) in _categories) then {
		_categories = _categories + [(_x select 0)];
	};
	_items = _items + [[(_x select 2),(_x select 0),0,(_x select 1)]];
} foreach _arr;

_COIN setvariable ["BIS_COIN_categories",_categories];
_COIN setvariable ["BIS_COIN_items",_items];

if (count _pos == 0) then {
	openMap [true, false];
	bgr_COIN_getPosFromMapClick = [];
	onmapSingleClick
	{
		bgr_COIN_getPosFromMapClick = _pos;
		openMap [false, false];
		true;
	};
	waitUntil {!visibleMap};
	onMapSingleClick {};
	_pos = bgr_COIN_getPosFromMapClick;
};

_COIN setPos _pos;

0 = [_COIN,_man,0,_COIN] execVM _coin_interface_scr;