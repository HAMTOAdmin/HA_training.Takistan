/*
addaction ["Случайный боец","scripts\ident.sqf",[ident_pos]];
*/ 
_man = _this select 1;
_pos = (_this select 3) select 0;

_soldiers = ["rhs_msv_emr_rifleman","rhs_msv_officer_armored","rhs_vdv_mflora_marksman","rhs_pilot","rhs_g_Soldier_F","rhs_g_Soldier_SL_F","rhs_g_Soldier_M_F","rhs_g_Soldier_lite_F","rhsusf_usmc_marpat_wd_rifleman","rhsusf_army_ocp_rifleman_101st","rhsusf_army_ucp_rifleman_82nd","rhsusf_usmc_marpat_d_squadleader"];
_sel_id = floor(random count _soldiers);
_s = (_soldiers select _sel_id) createVehicle position _pos;
sleep 30;
hint (_soldiers select _sel_id);
sleep 10;
deleteVehicle _s;