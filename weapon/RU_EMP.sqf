#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (дата)
//ВС РФ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

_Form = 'rhs_uniform_vdv_emr_des';
_FormO = 'rhs_uniform_vdv_emr_des';
_FormL = 'rhs_uniform_df15';
_VestKR = 'rhs_vest_commander';
_VestKV = 'rhs_6b23_digi_6sh92_radio';
_VestKO = 'rhs_6b23_digi_6sh92_headset_mapcase';
_Vestm = 'rhs_6b23_digi_medic';
_VestSN = 'rhs_6b23_digi_sniper';
_VestSS = 'rhs_6b23_digi_6sh92_vog';
_VestH = 'rhs_6b23_digi_6sh92';
_Vest = 'rhs_6b23_digi_rifleman';
_VestL = 'rhs_6b23_digi_crewofficer';
_VestC = 'rhs_6b23_digi_crewofficer';
_Helm = ['rhs_6b27m_digi','rhs_6b27m_digi_ess','rhs_6b28','rhs_6b28_ess'];
_Cap = 'rhs_fieldcap_digi_des';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'rhs_assault_umbts';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_rhs';
_Balc = 'G_Balaclava_oli';

_FormSNO = 'P_Gorka_green';
_VestSNO = 'PATHuK_smersh_bronik_camo';
_CapSNO = 'H_Booniehat_oli';

_Rifle = 'rhs_weap_ak74m';
_RifleGL = 'rhs_weap_ak74m_gp25';
_RifleC = 'rhs_weap_ak74m_folded';
_RifleMag = 'rhs_30Rnd_545x39_AK';
_RifleMagT = 'rhs_30Rnd_545x39_AK_green';
_Optic = 'rhs_acc_1p29';
_NightOptic = 'rhs_acc_1pn93_1';
_Collim = '';
_DTK = 'rhs_acc_dtk';
_RifleSilencer = 'rhs_acc_dtk4short';

_Pistol = 'rhs_weap_pya';
_PistolMag = 'rhs_mag_9x19_17';
_PistolSilencer = '';

_Rpg = 'rhs_weap_rpg7';
_RpgGrenade = 'rhs_rpg7_PG7VL_mag';
_RpgGrenadeO = 'rhs_rpg7_OG7V_mag';
_RpgO = 'rhs_weap_rpg26';
_RpgOgr = 'rhs_rpg26_mag';
_OpticRPG = 'rhs_acc_pgo7v';

_MG = 'rhs_weap_pkp';
_MGmag = 'rhs_100Rnd_762x54mmR_green';
_MGoptic = 'rhs_acc_1p78';
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


_LightGreen = 'rhs_mag_nspn_green';
_LightRed = 'rhs_mag_nspn_red';


#include "companyHA.sqf"

///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\

if (_ok) then {_arr=[_items,_weapPrim,_weapSecd,_weapHand,_uniforms,_vests,_rucks]};

_arr