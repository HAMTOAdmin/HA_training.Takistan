#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//01.09.2016 (����)
//NAPA (������)

// ====================================================================================
//weapon
//����������

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = ['rhsgref_uniform_flecktarn','rhsgref_uniform_woodland','rhsgref_uniform_woodland_olive'];
_FormO = 'rhsgref_uniform_woodland';
_FormL = 'rhsgref_uniform_flecktarn';
_VestKR = 'rhsgref_otv_khaki';
_VestKV = 'rhsgref_otv_khaki';
_VestKO = 'rhsgref_otv_khaki';
_Vestm = 'rhsgref_otv_khaki';
_VestSN = 'rhsgref_otv_khaki';
_VestSS = 'rhsgref_otv_khaki';
_VestH = 'rhsgref_otv_khaki';
_Vest = 'rhsgref_otv_khaki';
_VestC = 'rhsgref_otv_khaki';
_VestL = 'rhsgref_otv_khaki';
_Helm = ['rhs_balaclava','G_Balaclava_oli','G_Balaclava_blk'];
_Cap = 'usm_bdu_cap_portliz';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = ['rhs_zsh7a_mike_green_alt','rhs_zsh7a_mike_green'];
_Rucksack = 'B_Kitbag_rgr';
_RucksackRPG = 'B_Kitbag_rgr';
_RadioDV = 'tf_mr3000_bwmod';

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

<<<<<<< HEAD
_MG = 'rhs_weap_m249_pip_L_para';
_MGmag = 'rhs_200rnd_556x45_M_SAW';
=======
_NightOptic = 'optic_NVS';

_MG = 'rhs_weap_m240G';
_MGmag = 'rhsusf_50Rnd_762x51_m82_blank';
>>>>>>> origin/master
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