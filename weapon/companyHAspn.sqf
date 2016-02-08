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
		_weapSecd = [_RPGO];
		_weapPrim = [_RifleGL,[_Collim,_DTK]];
		_weapHand = [_Pistol,[_PistolSilencer,_PistolIR]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_Maptools, 1],
				[_PistolMag, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Balc,
				_DefKit,
				_Exploder,
				_Flashlight
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_RadioDV,[
				[_GLgrenade, 8],
				[_RifleMag, 5],
				[_PistolMag, 2],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_Flashgrenade, 2],
				[_RpgOgr, 1],
				[_LightGreen, 1],
				_Nvg
			]];
	};



	//Recon Sniper
	//Разведчик снайпер
	case "SN" : {
		_items = _items+[_Panama,_Rangefinder];
		_weapPrim = [_SniperRifle,[_SniperOptics]];
		_weapHand = [_Pistol,[_PistolSilencer,_PistolIR]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_Maptools, 1],
				[_PistolMag, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Balc,
				_DefKit,
				_Exploder,
				_Flashlight
			]];
		_vests = 
			[_Vest,[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_SniperRiflemag, 3]
			]];
		_rucks = 
			[_Rucksack,[
				[_SniperRiflemag, 4],
				[_PistolMag, 2],
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_Flashgrenade, 2],
				[_Apm, 2],
				[_LightGreen, 1],
				_NightOptic,
				_Nvg
			]];
	};
	//Recon Medic
	//Разведчик санинструктор
	case "M" : {
		_items = _items+[_Panama];
		_weapPrim = [_Rifle,[_Collim,_DTK]];
		_weapHand = [_Pistol,[_PistolSilencer,_PistolIR]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_PistolMag, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Balc,
				_DefKit,
				_Exploder,
				_Flashlight
		]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_RifleMag, 5],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_Smokegrenade, 2],
				[_Flashgrenade, 2],
				[_Bandage, 10],
				[_BandageElastic, 15],
				[_PackingBandage, 15],
				[_Quikclot, 10],
				[_Atropine, 12],
				[_Morphine, 8],
				[_Epinephrine, 8],
				[_Tourniquet, 5],
				[_SalineBag500, 6],
				[_PersonalAidKit,1],
				[_SurgicalKit,1],
				[_PistolMag, 2],
				[_LightGreen, 1],
				_Nvg
			]];
	};
	
	//Recon Team leader
	//Старший разведчик
	case "SS" : {
		_items = _items+[_Panama,_Binocular,_G];
		_weapSecd = [_RPGO,[]];
		_weapPrim = [_Rifle,[_optic,_DTK]];
		_weapHand = [_Pistol,[_PistolSilencer,_PistolIR]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_PistolMag, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Balc,
				_DefKit,
				_Exploder,
				_Flashlight
				]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_GLgrenade, 8],
				[_RifleMag, 6],
				[_PistolMag, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_Flashgrenade, 2],
				[_RpgOgr, 1],
				[_Claymore, 2],
				[_LightGreen, 1],
				_NightOptic,
				_Nvg
			]];
	};

	//Recon
	//Разведчик
	case "S" : {
		_items = _items+[_Panama];
		_weapPrim = [_Rifle,[_Collim,_DTK]];
		_weapSecd = [_RPGO,[]];
		_weapHand = [_Pistol,[_PistolSilencer,_PistolIR]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI,1],
				[_PistolMag, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Balc,
				_DefKit,
				_Exploder,
				_Flashlight
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_RifleMag,2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleMag, 7],
				[_RifleMagT, 2],
				[_PistolMag, 2],
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_SmokegrenadeGreen, 1],
				[_SmokegrenadeRed, 1],
				[_Flashgrenade, 2],
				[_RpgOgr, 1],
				[_Claymore, 2],
				[_LightGreen,1],
				_Nvg
			]];
	};
	
///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

	default {_ok = false};
};