#include "DEFAULT.sqf"
_arr=[]; _ok = true;
//17.08.2015 (дата)
//ВС РФ (войска)

// ====================================================================================
//weapon
//вооружение

//change NVG to FlashLight
//_Nvg="acc_flashlight";

//_Form = 'rhs_uniform_vdv_emr_des';
//_FormO = 'rhs_uniform_vdv_emr_des';
_Form = 'TMK_uniform_ODKB';
_FormO = 'TMK_uniform_ODKB';

_FormL = 'bear_rhs_uniform_m88_sand';
_VestKR = 'rhs_6b23_digi';
_VestKV = 'bear_rhs_6b23_desert_flora_6sh92_radio';
_VestKO = 'bear_rhs_6b23_desert_flora_6sh92_headset_mapcase';
_Vestm = 'bear_rhs_6b23_desert_flora_medic';
_VestSN = 'bear_rhs_6b23_desert_flora_sniper';
_VestSS = 'bear_rhs_6b23_desert_flora_6sh92_vog';
_VestH = 'bear_rhs_6b23_desert_flora_6sh92';
_Vest = 'bear_rhs_6b23_desert_flora_rifleman';
_VestC = 'bear_rhs_6b23_desert_flora_crewofficer';
_VestL = 'rhs_6sh92';
_Helm = ['bear_rhs_6b27m_desert_flora','bear_rhs_6b27m_desert_flora_ess'];
_Cap = 'rhs_fieldcap_digi_des';
_HelmC = ['rhs_tsh4','rhs_tsh4_ess'];
_HelmL = 'rhs_zsh7a_mike';
_Rucksack = 'bear_rhsusf_assault_eagleaiii_earth';
_RucksackRPG = 'rhs_rpg_empty';
_RadioDV = 'tf_mr3000_bwmod_tropen';
_Balc = 'rhs_balaclava';

_Rifle = 'rhs_weap_ak74m';
_RifleGL = 'rhs_weap_ak74m_gp25';
_RifleC = 'rhs_pzn_weap_aks74';
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