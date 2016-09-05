#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//04.09.2016 (дата)
//СВ СССР (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhsgref_uniform_ttsko_forest';
_FormO = 'rhsgref_uniform_ttsko_forest';
_FormL = 'rhsgref_uniform_ttsko_urban';
_VestKR = '6B3_RHS';
_VestKV = '6B3_RHS';
_VestKO = '6B3_RHS_GP';
_Vestm = '6B3_RHS_MED';
_VestSN = '6B3_RHS_SVD';
_VestSS = '6B3_RHS_GP';
_VestH = '6B3_RHS_RF';
_Vest = '6B3_RHS_RF';
_VestC = '6B3_RHS';
_VestL = 'rhs_6sh92';
_Helm = ['rhsgref_ssh68_ttsko_forest','rhs_ssh68'];
_Cap = 'rhsgref_fieldcap_ttsko_forest';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = ['rhs_zsh7a_mike','rhs_zsh7a_mike_alt'];
_Rucksack = 'rhs_sidor';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_rhs';

_Rifle = 'rhs_weap_ak74m_fullplum';
_RifleGL = 'rhs_weap_ak74m_fullplum_gp25';
_RifleC = 'rhs_weap_aks74u';
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