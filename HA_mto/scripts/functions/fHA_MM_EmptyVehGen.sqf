closeDialog 0;
openMap [true, false];
hint "Создание техники\nУкажите точку на карте";

//номер в списке
MM_VehType = _this select 0;
// Список пустой техники [название, класс]
// MM_VehTypes = [	["УАЗ", 	"UAZ_RU"], ... ];
MM_VehTypes = _this select 1;
bgr_unit = 0;

onMapSingleClick
{
	_VenTypeSel = (MM_VehTypes select MM_VehType) select 1;
	bgr_unit = _VenTypeSel createvehicle _pos;
	//if (MM_VehType == 5) then {_ammo = [_Unit,0] execVM "scripts\ammobox.sqf";};
	openMap [false, false];
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};

bgr_unit