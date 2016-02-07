

if (isServer) then {
	/*_fList = [
		"test"
	];*/
	_fList = [
		"fHA_MM_Telepotr", 
		"fHA_MM_Gr_Telepotr",
		"test"
	];
	//0 = _fList execVM "server\bgr_server_compile.sqf";
	0 = _fList execVM "HA_mto\scripts\bgr_server_compile.sqf";
};