closeDialog 0;
openMap [true, false];
hint 'ВНИМАНИЕ!\nРежим артилении\n\nОтключается по выходу из карты';

//номер в списке
MM_ArtyType = _this select 0;
// Список боеприпасов для артилерии [название, тип, высота]
// MM_ArtyTypes = [	["82мм ОФ", 	"Sh_82_HE",	500], ... ];
MM_ArtyTypes = _this select 1;

onmapSingleClick
{
	hint 'ВНИМАНИЕ!\nРежим артилении\n\nОтключается по выходу из карты';
	_BoomTypeSel = (MM_ArtyTypes select MM_ArtyType) select 1;
	_boom = _BoomTypeSel createVehicle [(_pos select 0),(_pos select 1),((_pos select 2)+((MM_ArtyTypes select MM_ArtyType) select 2))];
	true;
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};