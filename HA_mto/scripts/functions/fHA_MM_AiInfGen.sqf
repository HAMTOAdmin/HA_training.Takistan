closeDialog 0;
openMap [true, false];
hint "Создание пехоты противника\n Укажите точку на карте\n\nВНИМАНИЕ!\nДля непрерывного создания\nзажми Shift\n\nПеред созданием крайней группы отпусти Shift";

//номер в списке
MM_AiInfType = _this select 0;
// Список групп ботов[название, сторона, [боец1, боец2,...], скилл, поведение, тип WP на данной позиции]
// MM_AiInfTypes = [ ["Сн.пара USMC", 	west,	["USMC_SoldierS_Sniper","USMC_SoldierS_Spotter"], 0.7, "STEALTH", "SAD"], ... ];
MM_AiInfTypes = _this select 1;
bgr_group = 0;

onmapSingleClick
{
	bgr_group = creategroup ((MM_AiInfTypes select MM_AiInfType) select 1);
	{
		_unt1 = bgr_group createUnit [_x, _pos, [], 10, "none"];
		_unt1 setSkill ((MM_AiInfTypes select MM_AiInfType) select 3);
	} foreach ((MM_AiInfTypes select MM_AiInfType) select 2);
	
	bgr_group setcombatmode "RED";
	bgr_group setbehaviour ((MM_AiInfTypes select MM_AiInfType) select 4);

	0 = bgr_group addWaypoint [_pos, 0];
	[bgr_group, 1] setWaypointType ((MM_AiInfTypes select MM_AiInfType) select 5);
	
	player hcsetgroup [bgr_group,""];
	
	if (_shift) then {}
	else {openMap [false, false];};
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};

bgr_group