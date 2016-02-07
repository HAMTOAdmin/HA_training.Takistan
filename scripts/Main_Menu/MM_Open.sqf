GC_menu_dialog = createDialog "Main_Menu";

// Список пустой техники
MM_VehTypes1 = call compile preprocessFileLineNumbers("menu_lists\EMPTY.sqf");
{ lbAdd [3101, (_x select 0)];
} foreach MM_VehTypes1;
lbSetCurSel [3101, 0];

// Список боеприпасов для артилерии
MM_ArtyTypes = call compile preprocessFileLineNumbers("menu_lists\ARTY.sqf");
{ lbAdd [3102, (_x select 0)];
} foreach MM_ArtyTypes;
lbSetCurSel [3102, 0];

// Список групп ботов
MM_AiInfTypesWood = call compile preprocessFileLineNumbers("menu_lists\AIGROUPS.sqf");
{ lbAdd [3201, (_x select 0)];
} foreach MM_AiInfTypesWood;
lbSetCurSel [3201, 0];

// Список техники с ботами
MM_AiArmorTypes1 = call compile preprocessFileLineNumbers("menu_lists\AIVEHICLES.sqf");
{ lbAdd [3202, (_x select 0)];
} foreach MM_AiArmorTypes1;
lbSetCurSel [3202, 0];

//формирование списка игроков для телепорта
MM_Team = [];
if (player getVariable "bgr_tren_dolznost" == 1) then {
	// this setVariable["bgr_tren_dolznost",1];
	//если организатор, то все игроки
	MM_Team = playableUnits;
	if !(isMultiplayer) then {MM_Team = switchableUnits;};
}else{
	//иначе только своя группа
	MM_Team = units group player;
};
for [{_x = 0},{_x < count MM_Team},{_x=_x+1}] do
{
	_SelTeamMem = name (MM_Team select _x);
	_string = format ["%1",_SelTeamMem];
	lbAdd [3001, _string];
};
lbSetCurSel [3001, 0];

//формирование списка групп для телепорта
MM_Teams_List = [];
if (player getVariable "bgr_tren_dolznost" == 1) then {
	// this setVariable["bgr_tren_dolznost",1];	
	//если организатор, то все группы
	{
		if ( count units _x > 0) then {
			MM_Teams_List = MM_Teams_List + [_x];
		};
	} foreach allGroups; 
	//MM_Teams_List = allGroups; 
	//if !(isMultiplayer) then {MM_Teams_List = switchableUnits;};
}else{
	//иначе только своя группа
	MM_Teams_List = [group player];
};
for [{_x = 0},{_x < count MM_Teams_List},{_x=_x+1}] do
{
	_SelTeamLead = name leader (MM_Teams_List select _x);
	_string = format ["%1-%2, ком %3",side(MM_Teams_List select _x),(MM_Teams_List select _x),_SelTeamLead];
	lbAdd [3002, _string];
};
lbSetCurSel [3002, 0];