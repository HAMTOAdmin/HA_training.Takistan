#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (����)
//��� (������)

// ====================================================================================
//weapon
//����������

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhs_uniform_cu_ocp';
_FormO = 'rhs_uniform_cu_ocp';
_FormL = 'rhs_uniform_cu_ocp';
_VestKR = 'rhsusf_iotv_ocp';
_VestKV = 'rhsusf_iotv_ocp_Squadleader';
_VestKO = 'rhsusf_iotv_ocp_Squadleader';
_Vestm = 'rhsusf_iotv_ocp_Medic';
_VestSN = 'rhsusf_iotv_ocp_Rifleman';
_VestSS = 'rhsusf_iotv_ocp_Teamleader';
_VestH = 'rhsusf_iotv_ocp_SAW';
_Vest = 'rhsusf_iotv_ocp_Rifleman';
_VestC = 'rhsusf_spc_crewman';
_VestL = 'rhsusf_iotv_ocp';
_Helm = ['rhsusf_opscore_mc_cover','rhsusf_opscore_mc_cover_pelt','rhsusf_opscore_rg_cover','rhsusf_opscore_rg_cover_pelt'];
_Cap = 'rhsusf_mich_bare';
_HelmC = ['rhsusf_cvc_green_helmet','rhsusf_cvc_green_ess'];
_HelmL = 'rhsusf_hgu56p';
_Rucksack = 'rhsusf_assault_eagleaiii_ocp';
_RucksackRPG = 'rhsusf_assault_eagleaiii_ocp';
_RadioDV = 'tf_mr3000_multicam';
_Balc = 'G_Balaclava_oli';

_Rifle = 'rhs_weap_m4a1_carryhandle';
_RifleGL = 'rhs_weap_m4a1_carryhandle_m203S';
_RifleC = 'rhs_weap_m4a1_carryhandle';
_RifleMag = 'rhs_mag_30Rnd_556x45_M855A1_Stanag';
_RifleMagT = 'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';
_Optic = 'rhsusf_acc_ACOG';
_NightOptic = 'RH_anpvs4';
_Collim = 'rhsusf_acc_compm4';
_DTK = 'rhsusf_acc_SFMB556';
_RifleSilencer = 'rhsusf_acc_nt4_black';

_Pistol = 'rhsusf_weap_m1911a1';
_PistolMag = 'rhsusf_mag_7x45acp_MHP';
_PistolSilencer = '';

_Rpg = 'rhs_weap_rpg7';
_RpgO = 'rhs_weap_M136_hedp';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_OpticG = 'rhs_acc_pgo7v';
_OpticRPG = 'rhs_acc_pgo7v';


_MG = 'rhs_weap_m249_pip_L_para';
_MGmag = 'rhs_200rnd_556x45_M_SAW';
_MGoptic = 'rhsusf_acc_ELCAN';
_AR = '';
_ARmag = '';

_SniperRifle = 'rhs_weap_sr25';
_SniperOptics = 'rhsusf_acc_ACOG';
_SniperRiflemag = 'rhsusf_20Rnd_762x51_m118_special_Mag';
_SniperSilencer = 'rhsusf_acc_SR25S';

_Grenade = 'rhs_mag_m67';
_Smokegrenade = 'rhs_mag_an_m8hc';
_SmokegrenadeRed = 'rhs_mag_m18_red';
_SmokegrenadeGreen = 'rhs_mag_m18_green';
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