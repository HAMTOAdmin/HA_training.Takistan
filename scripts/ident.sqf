/*
addaction ["Случайный боец","scripts\ident.sqf",[ident_pos]];
*/ 
_man = _this select 1;
_pos = (_this select 3) select 0;

_soldiers = ["rhs_vdv_officer","rhs_vdv_marksman","rhs_vdv_recon_rifleman","rhs_vdv_recon_efreitor","rhs_vdv_des_grenadier","rhs_vdv_des_machinegunner","rhs_pilot_combat_heli","rhs_mvd_izlom_rifleman_LAT","rhs_mvd_izlom_grenadier_rpg","rhs_msv_crew_commander","rhs_msv_medic","rhsusf_army_ucp_rifleman_m4","rhsusf_army_ucp_sniper","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_driver","rhsusf_airforce_jetpilot","rhsusf_usmc_marpat_wd_smaw","rhsusf_usmc_marpat_wd_autorifleman_m249","rhsusf_usmc_marpat_d_rifleman","rhsusf_usmc_marpat_d_riflemanat","rhs_g_Soldier_SL_F","rhs_g_Soldier_GL_F","rhs_g_Soldier_lite_F","rhs_g_Soldier_TL_F"];
_sel_id = floor(random count _soldiers);
_s = (_soldiers select _sel_id) createVehicle position _pos;
sleep 30;
hint (_soldiers select _sel_id);
sleep 10;
deleteVehicle _s;