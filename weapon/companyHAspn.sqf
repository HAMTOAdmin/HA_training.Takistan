//THIS IS NOT ARE AMMUNITION TEMPLATE!!!
//USE IT ONLY AS STRUCTURE!!!
//VARS DEFINING IS NESESSARY!!!
//03.02.2015
//Our Army (ВС РФ) Special Force
//Для ныряния (не забываем сменить Rucksack на Rucksack2) 
//_GlasDiv,
//_FormDiv,
//_VestDiv,

// ====================================================================================
//base soldier
//базовое снаряжение
_items = [_M,_C,_W,_R];
_weapPrim = [_Rifle,[_Collim,_DTK]];
_weapSecd = ['',[]];
_weapHand = ['',[]];
_uniforms = [_Form,[]];
_vests = [_Vest,[]];
_rucks = ['',[]];
// ====================================================================================
//soldiers types
//типы бойцов
switch _this do {
	//Recon Squad leader
	//Командир развед отделения
	case "KO" : {
		_items = _items+[_Panama,_Rangefinder,_G];
		_weapPrim = [_RifleGL,[_Collim,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_RifleMag, 1],
				[_Earplugs, 1],
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Grenade, 2],
				[_Smokegrenade, 2],
				_Nvg
			]];
		_rucks = 
			[_RadioDV,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_GLgrenade, 10],
				[_RifleMag, 4],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_CableTie, 2],
				[_Shovel, 1]
			]];
	};


	//Recon Sniper
	//Разведчик снайпер
	case "SN" : {
		_items = _items+[_Panama,_Rangefinder];
		_weapPrim = [_SniperRifle,[_SniperOptics]];
		_uniforms set [1, (_uniforms select 1)+[
				[_SniperRiflemag, 1],
				[_Earplugs, 1],
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
			]];
		_vests = 
			[_Vest,[
				[_Grenade, 3],
				[_Smokegrenade, 3],
				[_SniperRiflemag, 4]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_SniperRiflemag, 4],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_TripwireMine, 2],
				[_CableTie, 2],
				_NightOptic,
				_Nvg,
				[_Shovel, 1]
			]];
	};
	
	
	//Recon Medic
	//Разведчик санинструктор
	case "M" : {
		_items = _items+[_Panama];
		_weapPrim = [_Rifle,[_Collim,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_RifleMag, 1],
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
		]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 3],
				[_Smokegrenade, 3],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_RifleMag, 4],
				[_Bandage, 10],
				[_BandageElastic, 15],
				[_PackingBandage, 15],
				[_Quikclot, 10],
				[_Atropine, 12],
				[_Morphine, 8],
				[_Epinephrine, 8],
				[_Tourniquet, 5],
				[_SalineBag500, 6],
				[_PersonalAidKit, 1],
				[_SurgicalKit, 1],
				_Nvg,
				[_Shovel, 1]
			]];
	};
	
	
	//Recon Team leader
	//Старший разведчик
	case "SS" : {
		_items = _items+[_Panama,_Binocular,_G];
		_weapSecd = [_RPGO,[]];
		_weapPrim = [_RifleGL,[_optic,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_RifleMag, 1],
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
				]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 3],
				[_Smokegrenade, 3],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_GLgrenade, 10],
				[_RifleMag, 4],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_CableTie, 2],
				_NightOptic,
				_Nvg,
				[_Shovel, 1]
			]];
	};

	
	//Recon
	//Разведчик
	case "S" : {
		_items = _items+[_Panama];
		_weapPrim = [_Rifle,[_Collim,_DTK]];
		_weapSecd = [_RPGO,[]];
		_uniforms set [1, (_uniforms select 1)+[
				[_RifleMag, 1],
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 3],
				[_Smokegrenade, 3],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_RifleMag, 4],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_CableTie, 2],
				_Nvg,
				[_Shovel, 1]
			]];
	};
	
	
	//Recon
	//Разведчик Сапер
	case "SA" : {
		_items = _items+[_Panama];
		_weapPrim = [_Rifle,[_Collim,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_RifleMag, 1],
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 3],
				[_Smokegrenade, 3],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleSilencer, 1],
				[_Helm, 1],
				[_RifleMag, 4],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_Explosive, 3],
				[_CableTie, 2],
				[_Remote, 1],
                [_Wirecutter, 1],
				_Nvg,
				[_Shovel, 1]
			]];
	};	
	
///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

	default {_ok = false};
};