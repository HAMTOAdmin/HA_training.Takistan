#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.05.2016 (����)
//CHDKZ (������)

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
_Cap = 'H_Cap_usblack';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'B_Kitbag_rgr';
_RucksackRPG = 'B_Kitbag_rgr';
_RadioDV = 'tf_mr3000_bwmod';

_Rifle = 'rhs_weap_m4a1_carryhandle';
_RifleGL = 'rhs_weap_m4a1_carryhandle_m203';
_RifleC = 'rhs_weap_m4a1_carryhandle';
_RifleMag = 'rhs_mag_30Rnd_556x45_M855A1_Stanag';
_RifleMagT = 'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';
_RifleOptic = 'rhsusf_acc_ACOG';
_RifleOpticNignt = 'rhsusf_acc_ACOG_anpvs271';
_Collim = '';
_Dtk = '';
_DtkC = '';

_Pistol = 'rhsusf_weap_m1911a1';
_PistolMag = 'rhsusf_mag_7x45acp_MHP';

_Rpg = 'rhs_weap_rpg7';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_RpgO = 'rhs_weap_m72a7';
_OpticRPG = 'rhs_acc_pgo7v';
_OpticRPGnight = 'rhs_acc_1pn93_2';

_MG = 'rhs_weap_pkp';
_MGmag = 'rhs_100Rnd_762x54mmR_green';
_AR = '';
_ARmag = '';
_MGOptic = 'rhs_acc_1p78';

_SniperRifle = 'rhs_weap_m76';
_SniperOptics = 'rhs_acc_pso1m2';
_SniperRiflemag = 'rhsgref_10Rnd_792x57_m76';

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