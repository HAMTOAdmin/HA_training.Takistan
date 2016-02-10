#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//хх.хх.20хх (дата)
//ХХХ ХХХ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = ['LOP_U_NAPA_Fatigue_01','LOP_U_NAPA_Fatigue_02','LOP_U_NAPA_Fatigue_03'];
_FormO = 'LOP_U_NAPA_Fatigue_04';
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
_Cap = 'LOP_H_Cowboy_hat';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'B_Kitbag_rgr';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_rhs';
_Balc = 'G_Balaclava_oli';

_Rifle = 'rhs_weap_m16a4';
_RifleGL = 'rhs_weap_m16a4_carryhandle_M203';
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
_OpticRPG = 'rhs_acc_pgo7v';


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


_LightGreen = 'Chemlight_green';
_LightRed = 'Chemlight_red';

#include "companyHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr