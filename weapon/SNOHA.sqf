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
_uniforms = [_FormSNO,[]];
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
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI,1],
				[_Maptools,1],
				[_LightGreen,1],
				[_SniperRiflemag, 1],
				[_bandage, 5],
				[_Morphine, 3],
				_Flashlight
			]];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Grenade, 2],
				[_Apm, 2],
				_Nvg
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5]
			]];
	};
	//Sniper
	//Снайпер СнО
	//Sniper Leader
	//Командир СнО
	case "SNO" : {
		_items = _items+[_CapSNO,_GogglesSNO,_Binocular];
		_weapPrim set [1,[_SniperOptics,_SniperSilencer,_SniperBipod]];
		_uniforms set [1, (_uniforms select 1)+[
				[_BERUSHI,1],
				[_Maptools,1],
				[_LightGreen,1],
				[_SniperRiflemag, 1],
				[_bandage, 5],
				[_Morphine, 3],
				_Flashlight
			]];
		_vests set 
			[1,[
				[_Smokegrenade, 2],
				[_Grenade, 2],
				[_Grenade, 2],
				[_Apm, 2],
				_Nvg
			]];
		_rucks set 
			[1,[
				[_SniperRiflemag, 5]
			]];
	};
	
///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

	default {_ok = false};
};