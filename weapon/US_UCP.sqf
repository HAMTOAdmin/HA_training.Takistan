#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (дата)
//ЧСО (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhs_uniform_cu_ucp';
_FormO = 'rhs_uniform_cu_ucp';
_FormL = 'rhs_uniform_cu_ucp';
_VestKR = 'rhsusf_iotv_ucp';
_VestKV = 'rhsusf_iotv_ucp_Squadleader';
_VestKO = 'rhsusf_iotv_ucp_Teamleader';
_Vestm = 'rhsusf_iotv_ucp_Medic';
_VestSN = 'rhsusf_iotv_ucp_Rifleman';
_VestSS = 'rhsusf_iotv_ucp_Grenadier';
_VestH = 'rhsusf_iotv_ucp_SAW';
_Vest = 'rhsusf_iotv_ucp;
_VestL = 'rhsusf_iotv_ucp';
_Helm = ['rhsusf_ach_helmet_ucp','rhsusf_ach_helmet_ESS_ucp','rhsusf_ach_helmet_headset_ucp'];
_Cap = 'rhsusf_patrolcap_ucp';
_HelmC = ['rhsusf_cvc_green_ess'];
_HelmL = 'rhsusf_hgu56p';
_Rucksack = 'rhsusf_assault_eagleaiii_ucp';
_RucksackRPG = 'rhsusf_assault_eagleaiii_ucp';
_RadioDV = 'tf_mr3000_multicam';
_Balc = 'G_Balaclava_oli';

_Rifle = 'rhs_weap_m4a1_carryhandle';
_RifleGL = 'rhs_weap_m4a1_carryhandle_m203';
_RifleC = 'rhs_weap_m4a1_carryhandle';
_RifleMag = 'rhs_mag_30Rnd_556x45_M855A1_Stanag';
_RifleMagT = 'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';
_Optic = 'rhsusf_acc_ACOG';
_NightOptic = 'optic_NVS';
_Collim = 'rhsusf_acc_compm4';
_DTK = 'rhsusf_acc_SFMB556';
_RifleSilencer = 'rhsusf_acc_nt4_black';

_Pistol = 'rhsusf_weap_m1911a1';
_PistolMag = 'rhsusf_mag_7x45acp_MHP';
_PistolSilencer = '';

_Rpg = 'rhs_weap_rpg7';
_RpgO = 'rhs_weap_rpg26';
_RpgOgr ='rhs_rpg26_mag';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_OpticG = 'rhs_acc_pgo7v';

_MG = 'rhs_weap_m240B';
_MGmag = 'rhsusf_100Rnd_762x51';
_MGoptic = 'rhsusf_acc_ELCAN';
_AR = '';
_ARmag = '';

_SniperRifle = 'srifle_DMR_06_olive_F';
_SniperOptics = 'rhsusf_acc_ACOG';
_SniperRiflemag = '20Rnd_762x51_Mag';
_SniperSilencer = 'muzzle_snds_B';

_Grenade = 'rhs_mag_rgd5';
_Smokegrenade = 'rhs_mag_rdg2_white';
_SmokegrenadeRed = 'SmokeShellRed';
_SmokegrenadeGreen = 'SmokeShellGreen';
_GLgrenade = 'rhs_mag_M441_HE';
_GLflare = 'rhs_mag_M585_white';
_GLsmoke = 'rhs_mag_m714_White';
_GLsmokeGreen = 'rhs_mag_m715_Green';
_GLsmokeRed = 'rhs_mag_m713_Red';


#include "companyHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr