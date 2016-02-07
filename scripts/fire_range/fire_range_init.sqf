/*
на вход:
- массив c инфой о рубеже (название, объект для хранения переменных, объект для действий, длина, ширина, угол)
- массив с инфой о действиях 
- массив с инфой об ограждении
*/
/*
BMP2_Gue
LAV25
M1A1
M2A2_EP1
M113_TK_EP1
M1126_ICV_M2_EP1
BRDM2_Gue
HMMWV_DES_EP1

0 = [["РУБЕЖ 5",this,p5,500,25,getDir this],
[2,"Pole_F",25,0],
[
["КМБ-1 Мишени",[["TargetP_Inf2_F",50,0,0],["TargetP_Inf2_F",100,0,0],["TargetP_Inf2_F",150,0,0],
	["TargetP_Inf2_F",200,0,0],["TargetP_Inf2_F",250,0,0],["TargetP_Inf2_F",300,0,0],
	["TargetP_Inf2_F",350,0,0],["TargetP_Inf2_F",400,0,0],["TargetP_Inf2_F",450,0,0],["TargetP_Inf2_F",500,0,0]]],
["КМБ-2 Солдаты Ст.",[["B_G_Soldier_F",50,0,0],["B_G_Soldier_F",150,0,0],
	["B_G_Soldier_F",250,0,0],["B_G_Soldier_F",350,0,0],["B_G_Soldier_F",450,0,0]]],
["КМБ-2 Солдаты Дв.",[["B_G_Soldier_F",50,0,2],["B_G_Soldier_F",100,0,2],
	["B_G_Soldier_F",150,0,2],["B_G_Soldier_F",200,0,2]]],
["КМБ-2 Солдаты ГП",[["B_G_Soldier_F",50,0,0],["B_G_Soldier_F",100,0,0],
	["B_G_Soldier_F",150,0,0],["B_G_Soldier_F",200,0,0],["B_G_Soldier_F",250,0,0]]],
["КМБ-2 Техника",[["B_APC_Tracked_01_CRV_F",50,45,0],["B_APC_Wheeled_01_cannon_F",100,-45,0],["B_APC_Tracked_01_rcws_F",150,45,0],
	["B_APC_Tracked_01_CRV_F",200,-45,0],["B_APC_Wheeled_01_cannon_F",250,45,0]]],
["Солдаты Дв.",[["B_G_Soldier_F",50,0,2],["B_G_Soldier_F",100,0,2],["B_G_Soldier_F",150,0,2],
	["B_G_Soldier_F",200,0,2],["B_G_Soldier_F",250,0,2],["B_G_Soldier_F",300,0,2],
	["B_G_Soldier_F",350,0,2],["B_G_Soldier_F",400,0,2]]],
["Техника Ст.",[["B_APC_Tracked_01_CRV_F",100,45,0],["B_APC_Tracked_01_rcws_F",200,-45,0],["B_APC_Wheeled_01_cannon_F",300,45,0],
	["B_APC_Tracked_01_CRV_F",400,-45,0],["B_APC_Wheeled_01_cannon_F",500,45,0],["B_APC_Tracked_01_rcws_F",600,-45,0]]]
]] execVM "scripts\fire_range\fire_range_init.sqf";

0 = [["РУБЕЖ 1",this,p1,500,25,getDir this],
	[2,"Pole_F",25,0],
	[
		["Мишени",[["Target_F",50,0,0],["Target_F",100,0,0],["Target_F",150,0,0],
					["Target_F",200,0,0],["Target_F",250,0,0],["Target_F",300,0,0],
					["Target_F",350,0,0],["Target_F",400,0,0],["Target_F",450,0,0],["Target_F",500,0,0]]],
		["Солдаты",[["B_G_Soldier_F",50,0,2],["B_G_Soldier_F",100,0,2],["B_G_Soldier_F",150,0,2],
					["B_G_Soldier_F",200,0,2],["B_G_Soldier_F",250,0,2],["B_G_Soldier_F",300,0,2],
					["B_G_Soldier_F",350,0,2],["B_G_Soldier_F",400,0,2]]]
	]	
] execVM "scripts\fire_range\fire_range_init.sqf";

0 = [["РУБЕЖ 1",this,p1,500,25,getDir this],
	[2,"RoadCone",25,0],
	[
		["Мишени",[["TargetE",50,0,0],["TargetE",100,0,0],["TargetE",150,0,0],
					["TargetE",200,0,0],["TargetE",250,0,0],["TargetE",300,0,0],
					["TargetE",350,0,0],["TargetE",400,0,0],["TargetE",450,0,0],["TargetE",500,0,0]]],
		["Солдаты",[["USMC_Soldier",50,0,2],["USMC_Soldier",100,0,2],["USMC_Soldier",150,0,2],
					["USMC_Soldier",200,0,2],["USMC_Soldier",250,0,2],["USMC_Soldier",300,0,2],
					["USMC_Soldier",350,0,2],["USMC_Soldier",400,0,2]]],
		["Техника",[["M113_TK_EP1",100,45,0],["LAV25",200,-45,0],["BMP2_Gue",300,45,0],
					["M113_TK_EP1",400,-45,0],["BMP2_Gue",500,45,0],["M2A2_EP1",600,-45,0]]]
	]	
	] execVM "scripts\fire_range\fire_range_init.sqf";
	
0 = [["РУБЕЖ 22",this,p22,500,50,getDir this],
	[1,"RoadCone",25,0],
	[
		["Солдаты",[["USMC_Soldier",50,0,2],["USMC_Soldier",100,0,2],["USMC_Soldier",150,0,2],
					["USMC_Soldier",200,0,2],["USMC_Soldier",250,0,2],["USMC_Soldier",300,0,2],
					["USMC_Soldier",350,0,2],["USMC_Soldier",400,0,2]]],
		["Техника движ.",[["M113_TK_EP1",100,45,1],["M2A2_EP1",200,-45,1],["BMP2_Gue",300,45,1],
					["M113_TK_EP1",400,-45,1],["BMP2_Gue",500,45,1],["M2A2_EP1",600,-45,1]]],
		["Танк 100м",[["M1A1",100,45,1]]],
		["Танк 200м",[["M1A1",200,45,1]]],
		["Танк 300м",[["M1A1",300,45,1]]],
		["Танк 400м",[["M1A1",400,45,1]]],
		["Танк 500м",[["M1A1",500,45,1]]],
		["Танк 600м",[["M1A1",600,45,1]]]
	]
	] execVM "scripts\fire_range\fire_range_init.sqf";
*/
bgr_fire_range_dir = "scripts\fire_range\fire_range_";
bgr_fire_range_server_dir = "HA_mto\scripts\fire_range\fire_range_";

_name = (_this select 0) select 0;
_range = (_this select 0) select 1;
_panel = (_this select 0) select 2;
_rangeL = (_this select 0) select 3;
_rangeW = (_this select 0) select 4;
_rangeDir = (_this select 0) select 5;
_fense = _this select 1;
_actions = _this select 2;

if (isServer) then {
	0 = [_fense, getPos _range, _rangeDir, _rangeL, _rangeW] execVM bgr_fire_range_server_dir+"fence.sqf";
	
	if (isNil {_range getVariable "bgr_fire_range_name"}) then {
		_range setVariable ["bgr_fire_range_name", _name, true];
		_range setVariable ["bgr_fire_range_state", -1, true];
		_range setVariable ["bgr_fire_range_targets", [], true];
		_range setVariable ["bgr_fire_range_history", _name+"<br/>", true];
		//[-2, {hint _this}, "isNil isNil isNil"] call CBA_fnc_globalExecute;
	};
};

_action_id = 1;
{
	_name = _x select 0;
	_targets = _x select 1;
	0 = _panel addaction [_name, bgr_fire_range_dir+"action.sqf", [_action_id,_range], 10, false, true, "", ""];
	if (isServer) then {
		0 = [_action_id,[_range,_rangeW,_rangeDir],_targets] execVM bgr_fire_range_server_dir+"spawn.sqf";
	};
	_action_id = _action_id + 1;
} forEach _actions;
0 = _panel addaction ["Очистить", bgr_fire_range_dir+"clean.sqf", [_range], 10, false, true, "", ""];
0 = _panel addaction ["Скопировать историю попаданий", bgr_fire_range_dir+"history.sqf", [_range,1], 10, false, true, "", ""];
0 = _panel addaction ["Удалить историю попаданий", bgr_fire_range_dir+"history.sqf", [_range,0], 10, false, true, "", ""];