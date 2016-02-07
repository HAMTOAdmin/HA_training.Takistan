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

_Form = 'bear_rhs_uniform_m88_sand';
_Vest = 'bear_rhs_6b23_sand_6sh92';
_Bandanna = 'H_Bandanna_sand';
_Helm = 'rhs_6b27m_ml';
_Rucksack = 'B_Kitbag_cbr';
_RadioDV = 'tf_mr3000_bwmod_tropen';
_Balc = 'G_Balaclava_oli';
_Scarf ='G_Bandanna_tan';


_Rifle = 'rhs_weap_ak74m_desert';
_RifleGL = 'rhs_weap_ak74m_gp25';
_RifleMag = 'rhs_30Rnd_545x39_7U1_AK';
_RifleMagT = 'rhs_30Rnd_545x39_AK_green';
_Optic = 'rhs_acc_pso1m21';
_NightOptic = 'rhs_acc_1pn93_1';
_Collim = 'rhs_acc_ekp1b';
_PSO = 'rhs_acc_pso1m2';
_DTK = 'rhs_acc_dtk4short';

_Pistol = 'RH_mak';
_PistolMag = 'RH_8Rnd_9x18_Mak';
_PistolSilencer = 'RH_pmsd';
_PistolIR = 'RH_pmIR';

_RpgO = 'rhs_weap_rpg26';
_RpgOgr = 'rhs_rpg26_mag';

_SniperRifle = 'rhs_weap_svdp_wd';
_SniperOptics = 'rhs_acc_pso1m2';
_SniperRiflemag = 'rhs_10Rnd_762x54mmR_7N1';

_Grenade = 'rhs_mag_rgd5';
_Smokegrenade = 'rhs_mag_rdg2_white';
_SmokegrenadeRed = 'SmokeShellRed';
_SmokegrenadeGreen = 'SmokeShellGreen';
_Flashgrenade = 'rhs_mag_fakels';
_Claymore = 'DemoCharge_Remote_Mag';
_Apm = 'APERSTripMine_Wire_Mag';

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