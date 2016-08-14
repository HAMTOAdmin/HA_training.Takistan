//THIS IS NOT ARE AMMUNITION TEMPLATE!!!
//USE IT ONLY AS STRUCTURE!!!
//VARS DEFINING IS NESESSARY!!!

// ====================================================================================
//base soldier
//базовое снаряжение
_items = [_M,_C,_W,_R];
_weapPrim = [_SniperRifle,[]];
_weapSecd = ['',[]];
_weapHand = ['',[]];
_uniforms = [_FormSNO,[
		        [_Bandage, 4],
			[_BandageElastic, 4],
			[_Maptools,1],
			[_PackingBandage, 4],
			[_Quikclot, 4],
			[_Morphine, 2],
			[_Epinephrine, 2],
			[_Tourniquet, 1],
			_Earplugs, _Flashlight]
];

_vests = [_VestSNO,[]];
_rucks = [_RucksackSNO,[]];
// ====================================================================================
//soldiers types
//типы бойцов
switch _this do {
	//Sniper Leader
	//Командир СнО
	case "SNOK" : {
		_items = _items+[_CapSNO,_GogglesSNO,_PDUSNO];
		_weapPrim set [1,[_SniperOptics,_SniperSilencer,_SniperBipod]];
		_weapHand = [_Pistol,[_PistolSilencer]];
		_uniforms set [1, (_uniforms select 1)+[]];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Apm, 2]
				
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5],
				[_LightGreen,1],
				[_PistolMag, 2],
				_Nvg

			]];
	};
	//Sniper
	//Снайпер СнО
	//Sniper Leader
	//Командир СнО
	case "SNO" : {
		_items = _items+[_CapSNO,_GogglesSNO,_Binocular];
		_weapPrim set [1,[_SniperOptics,_SniperSilencer,_SniperBipod]];
		_weapHand = [_Pistol,[_PistolSilencer]];
		_uniforms set [1, (_uniforms select 1)+[];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Apm, 2]
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5],
				[_LightGreen,1],
				[_PistolMag, 2],
				_Nvg
			]];
	};


	//Sniper Leader Ghillie desert
	//Командир СнО Гилли пустыня DLC
	case "SNOGDK" : {
		_items = _items+[_GogglesSNO,_PDUSNO];
		_weapPrim set [1,[_SniperOptics,_SniperSilencer,_SniperBipod]];
		_weapHand = [_Pistol,[_PistolSilencer]];
		_uniforms = [_FormSNOGhillie, (_uniforms select 1)+[];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Apm, 2]
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5],
				[_LightGreen,1],
				[_PistolMag, 2],
				_Nvg

			]];
	};
	//Sniper Ghillie desert
	//Снайпер СнО Гилли пустыня DLC
	case "SNOGD" : {
		_items = _items+[_GogglesSNO,_Binocular];
		_weapPrim set [1,[_SniperOptics,_SniperSilencer,_SniperBipod]];
		_weapHand = [_Pistol,[_PistolSilencer]];
		_uniforms = [_FormSNOGhillie, (_uniforms select 1)+[];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Apm, 2]
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5],
				[_LightGreen,1],
				[_PistolMag, 2],
				_Nvg
			]];
	};

	
///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

	default {_ok = false};
};