#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.050.2016 (дата)
//USMC (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhs_uniform_FROG01_d';
_FormO = 'rhs_uniform_FROG01_d';
_FormL = 'rhs_uniform_FROG01_d';
_VestKR = 'rhsusf_spc';
_VestKV = 'rhsusf_spc_squadleader';
_VestKO = 'rhsusf_spc_squadleader';
_Vestm = 'rhsusf_spc_mg';
_VestSN = 'rhsusf_spc_marksman';
_VestSS = 'rhsusf_spc_teamleader';
_VestH = 'rhsusf_spc_mg';
_Vest = 'rhsusf_spc_rifleman';
_VestC = 'rhsusf_spc_crewman';
_VestL = 'rhsusf_spc';
_Helm = ['rhsusf_lwh_helmet_marpatd','rhsusf_lwh_helmet_marpatd_ess','rhsusf_lwh_helmet_marpatd_headset'];
_Cap = 'rhsusf_mich_bare_tan';
_HelmC = ['rhsusf_cvc_helmet','rhsusf_cvc_ess'];
_HelmL = 'rhsusf_hgu56p';
_Rucksack = 'rhsusf_assault_eagleaiii_coy';
_RucksackRPG = 'rhsusf_assault_eagleaiii_coy';
_RadioDV = 'tf_mr3000_multicam';

_Rifle = 'rhs_weap_m16a4_carryhandle';
_RifleGL = 'rhs_weap_m16a4_carryhandle_M203';
_RifleC = 'rhs_weap_m4a1_carryhandle';
_RifleMag = 'rhs_mag_30Rnd_556x45_M855A1_Stanag';
_RifleMagT = 'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';
_RifleOptic = 'rhsusf_acc_ACOG';
_RifleOpticNignt = 'rhsusf_acc_ACOG_anpvs27';
_Collim = 'rhsusf_acc_compm4';
_DTK = '';
_DtkC = '';

_Pistol = 'rhsusf_weap_m1911a1';
_PistolMag = 'rhsusf_mag_7x45acp_MHP';

_Rpg = 'rhs_weap_rpg7';
_RpgO = 'rhs_weap_M136_hedp';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_OpticRPG = 'rhs_acc_pgo7v';
_OpticRPGnight = 'rhs_acc_1pn93_2';

_MG = 'rhs_weap_m249_pip_L_para';
_MGmag = 'rhs_200rnd_556x45_M_SAW';
_AR = '';
_ARmag = '';
_MGoptic = 'rhsusf_acc_ELCAN';

_SniperRifle = 'rhs_weap_sr25';
_SniperOptics = 'rhsusf_acc_ACOG';
_SniperRiflemag = 'rhsusf_20Rnd_762x51_m118_special_Mag';

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