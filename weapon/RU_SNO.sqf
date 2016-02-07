#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (дата)
//ВС РФ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";
/*
_FormSNO = 'P_Gorka_green';
_VestSNO = 'PATHuK_smersh_bronik_camo';
_RucksackSNO = 'P_Ghillie_Suit';
_CapSNO = 'H_Booniehat_oli';
_GogglesSNO = 'P_Balaclava_Ghillie';
*/

_FormSNO = 'rhs_uniform_gorka_r_y';
_FormSNOGhillie = 'U_I_FullGhillie_ard';
	
_VestSNO = 'AFGHAN_V_6B23_Sniper_TAN';

_RucksackSNO = 'rhs_sidor';
_CapSNO = 'rhs_Booniehat_marpatd';
_GogglesSNO = 'G_Bandanna_tan';

_PDUSNO = 'rhs_pdu4';

_Pistol = 'rhs_weap_pya';
_PistolMag = 'rhs_mag_9x19_17';
_PistolSilencer = 'RH_pmsd';

_SniperRifle = 'srifle_DMR_05_tan_f';
_SniperOptics = 'optic_KHS_old';
_SniperRiflemag = '10Rnd_93x64_DMR_05_Mag';
_SniperSilencer = 'muzzle_snds_93mmg_tan';
_SniperBipod = 'bipod_02_F_tan';
_NightOptic = 'rhs_acc_1pn93_1';

_Grenade = 'rhs_mag_rgd5';
_Smokegrenade = 'rhs_mag_rdg2_white';
_SmokegrenadeRed = 'SmokeShellRed';
_SmokegrenadeGreen = 'SmokeShellGreen';

_LightGreen = 'rhs_mag_nspn_green';
_LightRed = 'rhs_mag_nspn_red';

#include "SNOHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr