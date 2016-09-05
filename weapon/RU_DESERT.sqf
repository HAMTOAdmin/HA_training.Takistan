#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//01.09.2016 (дата)
//ВС РФ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhs_uniform_emr_des_patchless';
_FormO = 'rhs_uniform_emr_des_patchless';
_FormL = 'rhs_uniform_df15_tan';
_VestKR = 'rhs_6b23_digi_crew';
_VestKV = 'rhs_6b23_6sh116';
_VestKO = 'rhs_6b23_6sh116_vog';
_Vestm = 'rhs_6b23_digi_medic';
_VestSN = 'rhs_6b23_6sh116';
_VestSS = 'rhs_6b23_6sh116_vog';
_VestH = 'rhs_6b23_6sh116';
_Vest = 'rhs_6b23_6sh116';
_VestC = 'rhs_6b23_digi_crew';
_VestL = 'rhs_6sh92';
_Helm = ['rhs_6b7_1m_emr','rhs_6b7_1m_emr_ess'];
_Cap = 'rhs_fieldcap_digi2';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = ['rhs_zsh7a_mike_green','rhs_zsh7a_mike_green_alt'];
_Rucksack = 'rhs_assault_umbts';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_rhs';

_Rifle = 'rhs_weap_ak74m';
_RifleGL = 'rhs_weap_ak74m_gp25';
_RifleC = 'rhs_weap_aks74un';
_RifleMag = 'rhs_30Rnd_545x39_7N10_AK';
_RifleMagT = 'rhs_30Rnd_545x39_AK_green';
_RifleOptic = 'rhs_acc_1p29';
_RifleOpticNignt = 'rhs_acc_1pn93_1';
_Collim = '';
_Dtk = 'rhs_acc_dtk';
_DtkC = 'rhs_acc_pgs64_74u';

_Pistol = 'rhs_weap_pya';
_PistolMag = 'rhs_mag_9x19_17';

_Rpg = 'rhs_weap_rpg7';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_RpgO = 'rhs_weap_rpg26';
_OpticRPG = 'rhs_acc_pgo7v';
_OpticRPGnight = 'rhs_acc_1pn93_2';

_MG = 'rhs_weap_pkp';
_MGmag = 'rhs_100Rnd_762x54mmR_green';
_AR = '';
_ARmag = '';
_MGOptic = 'rhs_acc_1p78';

_SniperRifle = 'rhs_weap_svdp';
_SniperOptics = 'rhs_acc_pso1m2';
_SniperRiflemag = 'rhs_10Rnd_762x54mmR_7N1';
_NightOptic='rhs_acc_pso1m2';

_Grenade = 'rhs_mag_rgd5';
_Smokegrenade = 'rhs_mag_rdg2_white';
_SmokegrenadeRed = 'SmokeShellRed';
_SmokegrenadeGreen = 'SmokeShellGreen';
_GLgrenade = 'rhs_VOG25';
_GLflare = 'rhs_VG40OP_white';
_GLsmoke = 'rhs_GRD40_White';
_GLsmokeGreen = 'rhs_GRD40_Green';
_GLsmokeRed = 'rhs_GRD40_Red';


#include "companyHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr