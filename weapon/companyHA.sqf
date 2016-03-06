//THIS IS NOT ARE AMMUNITION TEMPLATE!!!
//USE IT ONLY AS STRUCTURE!!!
//VARS DEFINING IS NESESSARY!!!

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
	//Company Commander
	//ком роты / зам ком роты
	case "KR" : {
		_items = _items+[_Cap,_Binocular,_G];
		_weapHand = [_Pistol,[]];
		_uniforms = [_FormO, (_uniforms select 1)+[
				"G_Aviator",
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 2],
				[_Tourniquet, 2],
				_Flashlight,
				[_RifleMag, 1]
			]];
		_vests = 
			[_VestKR,(_vests select 1)+[
				[_PistolMag, 1],
				[_RifleMag, 1]
			]];
	};
	//Platoon Commander
	//ком взвода / зам ком взвода
	case "KV" : {
		_items = _items+[_Helm,_Binocular,_G];
		_weapHand = [_Pistol,[]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
			]];	
		_vests = 
			[_VestKV,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Grenade, 2],
				[_Smokegrenade, 2],
				_Nvg
			]];
		_rucks = 
			[_RadioDV,[
				[_RifleMag, 4],
				[_PistolMag, 2],
				[_LightGreen, 1]
			]];
	};
	//Platoon Sniper
	//снайпер
	case "SN" : {
		_items = _items+[_Helm,_Binocular];
		_weapPrim = [_SniperRifle,[_SniperOptics]];
		_weapHand = [_Pistol,[]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_SniperRiflemag, 1]
			]];
		_vests = 
			[_VestSN,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_SniperRiflemag, 4],
				_Nvg
			]];
		_rucks = 
			[_Rucksack,[
				[_SniperRiflemag, 4],
				[_PistolMag, 2],
				[_TripwireMine, 2],
				[_LightGreen, 1],
				_NightOptic,
				[_Shovel, 1]
			]];
	};
	//Platoon Sniper
	//Снайпер СНО
 	case "SNO" : {
		_items = _items+[_Helm,_Binocular];
		_weapPrim = [_SniperRifle,[_SniperOptics]];
		_weapHand = [_Pistol,[]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_SniperRiflemag, 1]
			]];
		_vests = 
			[_VestSN,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_SniperRiflemag, 1],
				[_Grenade, 2],
				_Nvg
			]];
		_rucks = 
			[_Rucksack,[
				[_SniperRiflemag, 6],
				[_PistolMag, 2],
				[_Apm, 2],
				[_LightGreen, 1],
				_NightOptic,
				[_Shovel, 1]
			]];
	};
	//RTO
	//радист
	case "R" : {
		_items = _items+[_Helm,_Binocular,_G];
		_uniforms set [1, (_uniforms select 1)+[
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
		]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_RifleMag, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2],
				_Nvg
			]];
		_rucks = 
			[_RadioDV,[
				[_RifleMag, 3],
				[_RifleMagT, 2],
				[_LightGreen, 1],
				[_Shovel, 1]
			]];
	};
	//Medic
	//санитар
	case "M" : {
		_items = _items+[_Helm];
		_uniforms set [1, (_uniforms select 1)+[
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_RifleMag, 1]
		]];
		_vests = 
			[_Vestm,(_vests select 1)+[
				[_RifleMag, 4],
				[_Grenade, 2],
				[_Smokegrenade, 3],
				[_LightGreen, 1],
				_Nvg
			]];
		_rucks = 
			[_Rucksack,[
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
				[_RifleMagT, 1],
				[_Shovel, 1]
			]];
	};
	//Squad leader
	//ком отделения
	case "KO" : {
		_items = _items+[_Helm,_Binocular,_G];
		_weapPrim = [_RifleGL,[_Collim,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Maptools, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
			]];
		_vests = 
			[_VestKO,(_vests select 1)+[
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_RifleMag, 2],
				[_RifleMagT, 2]
			]];
		_rucks = 
			[_RadioDV,[
				[_GLgrenade, 10],
				[_RifleMag, 4],
				[_LightGreen, 1],
				[_Nvg, 2],
				[_Shovel, 1]
			]];
	};
	//Mashine Gunner
	//Пулеметчик 
	case "P" : {
		_items = _items+[_Helm];
		_weapPrim = [_MG];
		_uniforms set [1, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_Shovel, 1]
			]];
		_vests = 
			[_VestH,[
				[_MGmag, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_MGmag, 3],
				[_Grenade, 2]
			]];
	};
	//MG ass.
	//Помощник пулеметчика
	case "PP" : {
		_items = _items+[_Helm,_Binocular];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_RifleMag, 1]
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleMag, 4],
				[_LightGreen,1],
				[_MGmag, 1],
				_Nvg,
				[_Shovel, 1]
			]];
	};
	//AR Gunner
	//Автоматчик 
	case "A" : {
		_items = _items+[_Helm];
		_weapPrim = [_MG];
		_uniforms set [1, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_Shovel, 1]
			]];
		_vests = 
			[_VestH,[
				[_MGmag, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_MGmag, 2],
				[_Grenade, 2]
			]];
	};
	//AR ass.
	//Помощник автоматчика
	case "PA" : {
		_items = _items+[_Helm,_Binocular];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI, 1],
				[_Bandage, 6],
				[_BandageElastic, 3],
				[_PackingBandage, 3],
				[_Quikclot, 3],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_RifleMag, 1]
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleMag, 4],
				[_LightGreen,1],
				[_MGmag, 1],
				_Nvg,
				[_Shovel, 1]
			]];
	};
	//старший стрелок
	case "SS" : {
		_items = _items+[_Helm,_Binocular,_G];
		_weapSecd = [_RPGO,[]];
		_weapPrim = [_RifleGL,[_optic,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
				]];
		_vests = 
			[_VestSS,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2]
			
			]];
		_rucks = 
			[_Rucksack,[
				[_GLgrenade, 10],
				[_RifleMag, 4],
				[_LightGreen, 1],
				_NightOptic,
				_Nvg,
				[_Shovel, 1]
			]];
	};
	//AT Soldier
	//гранатомётчик
	case "G" : {
		_items = _items+[_Helm];
		_uniforms set [1, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_LightGreen, 1],
				[_RifleMag, 1]
			]];
		_weapSecd = [_RPG,[_OpticRPG]];
		_vests = [_VestH,[
		        [_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2],
				_Nvg
			]];
		_rucks = 
			[_RucksackRPG,[
				[_RpgGrenade, 2],
				[_RpgGrenadeO, 1],
				[_RifleMag, 2],
				[_Shovel, 1]
			]];
	};
	//AT Soldier Assist.
	//помошник гранатомётчик
	case "PG" : {
		_items = _items+[_Helm];
		_uniforms set [1, (_uniforms select 1)+[
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_RifleMag, 1]
			]];
		_vests = 
			[_VestH,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2],
				_Nvg
			]];
		_rucks = 
			[_RucksackRPG,[
				[_RifleMag, 4],
				[_RpgGrenade, 1],
				[_RpgGrenadeO, 1],
				[_LightGreen, 1],
				[_Shovel, 1]
			]];
	};
	//Rifleman
	//стрелок
	case "S" : {
		_items = _items+[_Helm];
		_weapSecd = [_RPGO,[]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				[_RifleMag, 1]
			]];
		_vests = 
			[_Vest,(_vests select 1)+[
				[_RifleMag, 2],
				[_RifleMagT, 2],
				[_Smokegrenade, 2],
				[_Grenade, 2]
			]];
		_rucks = 
			[_Rucksack,[
				[_RifleMag, 4],
				[_Grenade, 2],
				[_Smokegrenade, 2],
				[_LightGreen, 1],
				_Nvg,
				[_Shovel, 1]
			]];
	};
	//Crewman
	//Танкист
	case "T" : {
		_items = _items+[_HelmC];
		_weapPrim = [_RifleC,[_Collim,_DTK]];
		_uniforms set [1, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
			]];
		_vests = 
			[_VestC,(_vests select 1)+[
			    [_RifleMag, 2],
				[_Smokegrenade, 2],
				[_LightGreen, 1],
				_Nvg
			]];
	};	
	//Heli Pilot
	//Вертолётчик
	case "V" : {
		_items = _items+[_HelmL,_G];
		_weapPrim = [_RifleC,[]];
		_weapHand = [_Pistol,[]];
		_uniforms = [_FormL, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
			]];
		_vests = [_VestL,(_vests select 1)+[
				[_RifleMag, 1],
				[_PistolMag, 2],
				[_Smokegrenade, 1],
				_Nvg
			]];

	};
	//Jet Pilot
	//Лётчик
	case "L" : {
		_items = _items+[_HelmL,_G];
		_weapPrim = [_RifleC,[]];
		_weapHand = [_Pistol,[]];
		_uniforms = [_FormL, (_uniforms select 1)+[
				[_Earplugs, 1],
				[_Bandage, 4],
				[_BandageElastic, 4],
				[_PackingBandage, 4],
				[_Quikclot, 4],
				[_Morphine, 3],
				[_Epinephrine, 1],
				[_Tourniquet, 1],
				_Flashlight,
				[_RifleMag, 1]
			]];
		_vests = [_VestL,(_vests select 1)+[
				[_RifleMag, 1],
				[_PistolMag, 2],
				[_Smokegrenade, 1],
				_Nvg
			]];

	};	
///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

	default {_ok = false};
};