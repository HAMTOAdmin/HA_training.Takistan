closeDialog 0;
openMap [true, false];
hint "Создание БМП противника\n Укажите точку на карте\n\nВНИМАНИЕ!\nДля непрерывного создания\nзажми Shift\n\nПеред созданием крайней машины отпусти Shift";

//номер в списке
MM_AiArmorType = _this select 0;
// Список техники с ботами [название, класс, сторона, [водитель, стрелок, командир], поведение]
// MM_AiArmorTypes = [ ["HMMWV M2",	"HMMWV_M2",	west,	["USMC_Soldier","USMC_Soldier"],	"AWARE"], ... ];
MM_AiArmorTypes = _this select 1;

onmapSingleClick
{
	_Agrp = creategroup ((MM_AiArmorTypes select MM_AiArmorType) select 2);
	_Aunt = ((MM_AiArmorTypes select MM_AiArmorType) select 1) createvehicle _pos;
	_Dunt = _Agrp createUnit [(((MM_AiArmorTypes select MM_AiArmorType) select 3) select 0), _pos, [], 10, "none"];
	_Dunt moveindriver _Aunt;
	if (count ((MM_AiArmorTypes select MM_AiArmorType) select 3) > 1) then {
		_Gunt = _Agrp createUnit [(((MM_AiArmorTypes select MM_AiArmorType) select 3) select 1), _pos, [], 10, "none"];
		_Gunt moveingunner _Aunt;
		if (count ((MM_AiArmorTypes select MM_AiArmorType) select 3) > 2) then {
			_Cunt = _Agrp createUnit [(((MM_AiArmorTypes select MM_AiArmorType) select 3) select 2), _pos, [], 10, "none"];
			_Cunt moveincommander _Aunt;
		};
	};
	_Agrp setcombatmode "YELLOW";
	_Agrp setbehaviour ((MM_AiArmorTypes select MM_AiArmorType) select 4);
	
	player hcsetgroup [_Agrp,""];
	
	if (_shift) then {}
	else {openMap [false, false];};
};

waitUntil {!visibleMap};
hint "";
onMapSingleClick {};
