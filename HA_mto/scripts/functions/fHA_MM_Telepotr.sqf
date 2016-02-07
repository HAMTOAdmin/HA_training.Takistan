closeDialog 0;
openMap [true, false];
hint "ТЕЛЕПОРТ\n\nУкажите точку на карте\n\nДля отмены просто закройте карту";

//номер в списке
MM_NumSelTeamMem = _this select 0;
//список юнитов для телепорта
MM_Team = _this select 1;

//[east,"base"] sidechat format ["%1 %2",MM_Team,MM_NumSelTeamMem];

if (MM_NumSelTeamMem < 0) then
{	
	onmapSingleClick
	{
		player setPos _pos;
		openMap [false, false];
		true;
	};
} else {
	onmapSingleClick
	{
		_unit = MM_Team select MM_NumSelTeamMem;
		_unit setPos _pos;
		openMap [false, false];
		true;
	};	
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};