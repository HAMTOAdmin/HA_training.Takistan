//0 = [this,0,0,0] execVM "polosa_init.sqf";

bgr_polosa_timer_script = "scripts\timer.sqf";
bgr_polosa_server_dir = "HA_mto\scripts\polosa.sqf";

beg = 0;
_arr = [_this select 0, [], _this select 2, _this select 3];

if (_this select 1 == 10) then { //old
	_mas = [
	
		["Land_Obstacle_Saddle_F",90,-2,0,0],
		["Land_Obstacle_RunAround_F",0,13,0,0],
		["Land_Obstacle_Bridge_F",0,25,0,0],
		["Land_Obstacle_Ramp_F",180,34,0,0],
		["Land_Obstacle_Crawl_F",0,45,0,0],
		["ShootingPos_F",0,50,0,0],
		["Land_Shoot_House_Panels_Window_F",0,52,0,-0.3],
		["Land_Shoot_House_Panels_Window_F",180,52.05,0,-0.7],
		["Land_Obstacle_Climb_F",0,50,13,0],
		["Land_Obstacle_Bridge_F",90,50,18,0],
		["Land_Shoot_House_Panels_Window_F",270,50,32,-0.55],
		["Land_Shoot_House_Panels_Window_F",90,50,32,-0.1],
		["Land_Shoot_House_Tunnel_Crouch_F",0,35,30,0],
		["Land_Obstacle_Cross_F",0,30,30,0],
		["Land_Obstacle_RunAround_F",0,-2,30,0],
		["Land_Obstacle_Saddle_F",90,-12,30,0],
		
		["TapeSign_F",90,0,2,0],["TapeSign_F",-90,0,-2,0],
		["TapeSign_F",90,5,2,0],["TapeSign_F",-90,5,-2,0],
		["TapeSign_F",90,10,2,0],["TapeSign_F",-90,10,-2,0],
		["TapeSign_F",90,20,2,0],["TapeSign_F",-90,20,-2,0],
		["TapeSign_F",90,25,2,0],["TapeSign_F",-90,25,-2,0],
		["TapeSign_F",90,30,2,0],["TapeSign_F",-90,30,-2,0],
		["TapeSign_F",90,35,2,0],["TapeSign_F",-90,35,-2,0],
		["TapeSign_F",90,40,2,0],["TapeSign_F",-90,40,-2,0],
		["TapeSign_F",90,50,-2,0],
		["TapeSign_F",180,52,5,0],["TapeSign_F",0,48,5,0],
		["TapeSign_F",180,52,10,0],["TapeSign_F",0,48,10,0],
		["TapeSign_F",180,52,15,0],["TapeSign_F",0,48,15,0],
		["TapeSign_F",180,52,20,0],["TapeSign_F",0,48,20,0],
		["TapeSign_F",180,52,25,0],["TapeSign_F",0,48,25,0],
		["TapeSign_F",180,52,30,0],
		["TapeSign_F",90,45,32,0],["TapeSign_F",-90,45,28,0],
		["TapeSign_F",90,40,32,0],["TapeSign_F",-90,40,28,0],
		["TapeSign_F",90,35,32,0],["TapeSign_F",-90,35,28,0],
		["TapeSign_F",90,30,32,0],["TapeSign_F",-90,30,28,0],
		["TapeSign_F",90,25,32,0],["TapeSign_F",-90,25,28,0],
		["TapeSign_F",90,20,32,0],["TapeSign_F",-90,20,28,0],
		["TapeSign_F",90,15,32,0],["TapeSign_F",-90,15,28,0],
		["TapeSign_F",90,10,32,0],["TapeSign_F",-90,10,28,0],
		["TapeSign_F",90,5,32,0],["TapeSign_F",-90,5,28,0],
		["TapeSign_F",90,0,32,0],["TapeSign_F",-90,0,28,0],
		["TapeSign_F",90,-5,32,0],["TapeSign_F",-90,-5,28,0],
		["TapeSign_F",90,-10,32,0],["TapeSign_F",-90,-10,28,0],
		
		["Land_HBarrier_3_F",0,185,0,0.1],["Land_HBarrier_3_F",0,185,8,0.1],["Land_HBarrier_3_F",0,185,-8,0.1],
		["Land_HBarrier_1_F",90,50,130,-0.5],["Land_HBarrier_3_F",90,50,140,0.1],["Land_HBarrier_3_F",90,42,140,0.1],["Land_HBarrier_3_F",90,58,140,0.1],
		
		["TargetP_Inf2_F",0,180,0,0],["TargetP_Inf2_F",0,180,8,0],["TargetP_Inf2_F",0,180,-8,0],
		["TargetP_Inf2_F",270,50,135,0],["TargetP_Inf2_F",270,42,135,0],["TargetP_Inf2_F",270,58,135,0]
	
	];
	_arr set [1,[_mas,[0,0,0],[-10,30,0]]];
};
//FirePlace_burning_F

if (_this select 1 == 0) then {
	_mas = [
	
		["Land_Obstacle_Saddle_F",90,-2,0,0],
		["Land_Obstacle_RunAround_F",0,10,0,0],
		["Land_Obstacle_Bridge_F",0,25,0,0],
		["Land_Obstacle_Pass_F",180,40,0,0],
		["Land_Obstacle_Crawl_F",0,55,0,0],
		["ShootingPos_F",0,70,0,0],
		["Land_Shoot_House_Panels_Window_F",0,72,0,-0.3],
		["Land_Shoot_House_Panels_Window_F",180,72.05,0,-0.7],
		["Land_Obstacle_Climb_F",0,70,13,0],
		["Land_Obstacle_Bridge_F",90,70,18,0],
		["ShootingPos_F",270,70,30,0],
		["Land_Shoot_House_Wall_Stand_F",270,70,32,0],
		["Land_Shoot_House_Wall_Crouch_F",270,68,32,-0.3],
		["Land_Shoot_House_Wall_Prone_F",0,68.7,31,0],
		["Land_Shoot_House_Tunnel_Crouch_F",0,55,30,0],
		["Land_Obstacle_Cross_F",0,50,30,0],
		["Land_Obstacle_RunAround_F",0,5,30,0],
		["Land_Obstacle_Saddle_F",90,-2,30,0],
		
		["TapeSign_F",90,0,2,0],["TapeSign_F",-90,0,-2,0],
		["TapeSign_F",90,5,2,0],["TapeSign_F",-90,5,-2,0],
		["TapeSign_F",90,10,2,0],["TapeSign_F",-90,10,-2,0],
		["TapeSign_F",90,15,2,0],["TapeSign_F",-90,15,-2,0],
		["TapeSign_F",90,20,2,0],["TapeSign_F",-90,20,-2,0],
		["TapeSign_F",90,25,2,0],["TapeSign_F",-90,25,-2,0],
		["TapeSign_F",90,30,2,0],["TapeSign_F",-90,30,-2,0],
		["TapeSign_F",90,35,2,0],["TapeSign_F",-90,35,-2,0],
		["TapeSign_F",90,40,2,0],["TapeSign_F",-90,40,-2,0],
		["TapeSign_F",90,45,2,0],["TapeSign_F",-90,45,-2,0],
		["TapeSign_F",90,50,2,0],["TapeSign_F",-90,50,-2,0],
		["TapeSign_F",90,55,2,0],["TapeSign_F",-90,55,-2,0],
		["TapeSign_F",90,60,2,0],["TapeSign_F",-90,60,-2,0],
		["TapeSign_F",90,65,2,0],["TapeSign_F",-90,65,-2,0],
		["TapeSign_F",90,70,-2,0],
		["TapeSign_F",180,72,5,0],["TapeSign_F",0,68,5,0],
		["TapeSign_F",180,72,10,0],["TapeSign_F",0,68,10,0],
		["TapeSign_F",180,72,15,0],["TapeSign_F",0,68,15,0],
		["TapeSign_F",180,72,20,0],["TapeSign_F",0,68,20,0],
		["TapeSign_F",180,72,25,0],["TapeSign_F",0,68,25,0],
		["TapeSign_F",180,72,30,0],
		["TapeSign_F",90,65,32,0],["TapeSign_F",-90,65,28,0],
		["TapeSign_F",90,60,32,0],["TapeSign_F",-90,60,28,0],
		["TapeSign_F",90,55,32,0],["TapeSign_F",-90,55,28,0],
		["TapeSign_F",90,50,32,0],["TapeSign_F",-90,50,28,0],
		["TapeSign_F",90,45,32,0],["TapeSign_F",-90,45,28,0],
		["TapeSign_F",90,40,32,0],["TapeSign_F",-90,40,28,0],
		["TapeSign_F",90,35,32,0],["TapeSign_F",-90,35,28,0],
		["TapeSign_F",90,30,32,0],["TapeSign_F",-90,30,28,0],
		["TapeSign_F",90,25,32,0],["TapeSign_F",-90,25,28,0],
		["TapeSign_F",90,20,32,0],["TapeSign_F",-90,20,28,0],
		["TapeSign_F",90,15,32,0],["TapeSign_F",-90,15,28,0],
		["TapeSign_F",90,10,32,0],["TapeSign_F",-90,10,28,0],
		["TapeSign_F",90,0,32,0],["TapeSign_F",-90,0,28,0],
		["TapeSign_F",90,5,32,0],["TapeSign_F",-90,5,28,0],
		
		["Land_HBarrier_3_F",0,205,0,0.1],["Land_HBarrier_3_F",0,205,8,0.1],["Land_HBarrier_3_F",0,205,-8,0.1],
		["Land_HBarrier_1_F",90,70,130,-0.5],["Land_HBarrier_3_F",90,70,140,0.1],["Land_HBarrier_3_F",90,62,140,0.1],["Land_HBarrier_3_F",90,78,140,0.1],
		
		["TargetP_Inf2_F",0,200,0,0],["TargetP_Inf2_F",0,200,8,0],["TargetP_Inf2_F",0,200,-8,0],
		["TargetP_Inf2_F",270,70,135,0],["TargetP_Inf2_F",270,62,135,0],["TargetP_Inf2_F",270,78,135,0]
	
	];
	_arr set [1,[_mas,[0,0,0],[0,30,0]]];
};


if (isServer) then {
	0 = _arr execVM bgr_polosa_server_dir;
};