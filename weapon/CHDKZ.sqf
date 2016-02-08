#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//хх.хх.20хх (дата)
//ХХХ ХХХ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = ['LOP_U_ChDKZ_Fatigue_01','LOP_U_ChDKZ_Fatigue_02','LOP_U_ChDKZ_Fatigue_03','LOP_U_ChDKZ_Fatigue_04'];
_FormO = 'LOP_U_ChDKZ_Fatigue_Commander';
_FormL = 'U_I_HeliPilotCoveralls';
_VestKR = 'rhs_vest_commander';
_VestKV = 'rhs_vest_commander';
_VestKO = 'rhs_6sh46';
_Vestm = 'rhs_6sh46';
_VestSN = 'rhs_6sh46';
_VestSS = 'rhs_6sh46';
_VestH = 'rhs_6sh46';
_Vest = 'rhs_6sh46';
_VestL = 'rhs_6sh46';
_Helm = 'G_Balaclava_oli';
_Cap = 'LOP_H_ChDKZ_Beret';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'B_Kitbag_rgr';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_rhs';
_Balc = 'G_Balaclava_oli';

_Rifle = 'rhs_weap_akm';
_RifleGL = 'rhs_weap_akm_gp25';
_RifleC = 'rhs_weap_akms';
_RifleMag = 'rhs_30Rnd_762x39mm';
_RifleMagT = 'rhs_30Rnd_762x39mm';
_Optic = '';
_NightOptic = '';
_Collim = '';
_DTK = '';
_RifleSilencer = 'rhs_acc_pbs1';

_Pistol = 'rhs_weap_makarov_pmm';
_PistolMag = 'rhs_mag_9x18_12_57N181S';
_PistolSilencer = '';

_Rpg = 'rhs_weap_rpg7';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_RpgO = 'rhs_weap_rpg26';
_RpgOgr = 'rhs_rpg26_mag';
_OpticRPG = 'rhs_acc_pgo7v';

_MG = 'rhs_weap_pkm';
_MGmag = 'rhs_100Rnd_762x54mmR_green';
_MGoptic = '';
_AR = '';
_ARmag = '';

_SniperRifle = 'rhs_weap_svdp';
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

_LightGreen = 'Chemlight_green';

#include "companyHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr