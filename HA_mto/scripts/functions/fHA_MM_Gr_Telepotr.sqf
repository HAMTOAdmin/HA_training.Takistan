closeDialog 0;
openMap [true, false];
hint "ТЕЛЕПОРТ ГРУППЫ\n\nУкажите точку на карте\n\nДля отмены просто закройте карту";

MM_Team = _this select 0;

onmapSingleClick
{
	{_x setPos _pos} forEach MM_Team;
	openMap [false, false];
	true;
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};