#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (дата)
//ЧСО (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'LOP_U_CDF_Fatigue_01';
_FormO = 'LOP_U_CDF_Fatigue_01';
_FormL = 'LOP_U_CDF_Fatigue_01';
_VestKR = 'rhs_vest_commander';
_VestKV = 'LOP_V_6B23_6Sh92_OLV';
_VestKO = 'LOP_V_6B23_6Sh92_OLV';
_Vestm = 'LOP_V_6B23_Medic_OLV';
_VestSN = 'LOP_V_6B23_6Sh92_OLV';
_VestSS = 'LOP_V_6B23_6Sh92_OLV';
_VestH = 'LOP_V_6B23_6Sh92_OLV';
_Vest = 'LOP_V_6B23_Rifleman_OLV';
_VestL = 'LOP_V_6B23_CrewOfficer_OLV';
_Helm = 'LOP_H_6B27M_CDF';
_Cap = 'LOP_H_Fieldcap_CDF';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'rhs_sidor';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000';
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