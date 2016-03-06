#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//14.12.2015
//Our Army (ВС РФ) Special Force

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";
_W = 'ACE_Altimeter';
_R = 'tf_fadak';

/*
//Лесной вариант
_Form = 'rhs_uniform_mvd_izlom';
_Vest = 'rhs_6sh92_digi';
_Panama = 'rhs_Booniehat_digi';
_Helm = 'rhs_6b28';
_Rucksack = 'B_Kitbag_rgr';
_RadioDV = 'tf_mr3000_rhs';
*/

//Пустынный вариант
_Form = 'bear_rhs_uniform_desert_flora_sand';
_Vest = 'bear_rhs_6sh92_desert_flora';
_Panama = 'H_AFGANKA';
_Helm = 'bear_rhs_6b27m_sand';
_Rucksack = 'B_Kitbag_cbr';
_RadioDV = 'tf_mr3000_bwmod_tropen';


_Rifle = 'rhs_pzn_weap_aks74n';
_RifleGL = 'rhs_pzn_weap_aks74n_gp25';
_RifleMag = 'rhs_30Rnd_545x39_7N10_AK';
_RifleMagT = 'rhs_30Rnd_545x39_AK_green';
_Optic = 'rhs_acc_1p29';
_NightOptic = 'rhs_acc_1pn93_1';
_Collim = 'rhs_acc_pkas';
_RifleSilencer = 'rhs_acc_dtk4short';
_DTK = 'rhs_acc_pbs1';

_Pistol = 'hgun_Rook40_Fk';
_PistolMag = '16Rnd_9x21_Mag';
_PistolSilencer = 'muzzle_snds_L';

_RpgO = 'rhs_weap_rpg26';

_SniperRifle = 'rhs_weap_svdp_wd';
_SniperOptics = 'rhs_acc_pso1m2';
_SniperRiflemag = 'rhs_10Rnd_762x54mmR_7N1';
_SniperSilencer = 'rhs_acc_tgpv';

_Grenade = 'rhs_mag_rgd5';
_Smokegrenade = 'rhs_mag_rdg2_white';
_SmokegrenadeRed = 'SmokeShellRed';
_SmokegrenadeGreen = 'SmokeShellGreen';
_GLgrenade = 'rhs_VOG25';
_GLflare = 'rhs_VG40OP_white';
_GLsmoke = 'rhs_GRD40_White';
_GLsmokeGreen = 'rhs_GRD40_Green';
_GLsmokeRed = 'rhs_GRD40_Red';

_LightGreen = 'rhs_mag_nspn_green';
_LightRed = 'rhs_mag_nspn_red';


#include "companyHAspn.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr