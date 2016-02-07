/*
Created by Vadim Shchemelinin aka badger 
2012 St.Petersburg

Additional variables
*/

// bgr_playUnits 
// list of all playable units
bgr_PlayableUnits =
switch (isMultiplayer) do {
	case true: {playableUnits};
	case false: {switchableUnits};
};

// bgr_units_E, bgr_units_W, bgr_units_G, bgr_units_C
// list of all east, west, resistance, civ units
bgr_units_E = [];
bgr_units_W = [];
bgr_units_G = [];
bgr_units_C = [];
{
	switch (side _x) do {
		case east: {bgr_units_E set [count bgr_units_E,_x];};
		case west: {bgr_units_W set [count bgr_units_W,_x];};
		case resistance: {bgr_units_G set [count bgr_units_G,_x];};
		case civilian: {bgr_units_C set [count bgr_units_C,_x];};
	};
} forEach allUnits;

// bgr_playable_E, bgr_playable_W, bgr_playable_G, bgr_playable_C
// list of all playable east, west, resistance, civ units
bgr_playable_E = [];
bgr_playable_W = [];
bgr_playable_G = [];
bgr_playable_C = [];
// bgr_plays_E, bgr_plays_W, bgr_plays_G, bgr_plays_C
// list of all players on east, west, resistance, civ sides
bgr_plays_E = [];
bgr_plays_W = [];
bgr_plays_G = [];
bgr_plays_C = [];
{
	switch (side _x) do {
		case east: {bgr_playable_E set [count bgr_playable_E,_x]; 
					if (isPlayer _x) then {bgr_plays_E set [count bgr_plays_E,_x];};};
		case west: {bgr_playable_W set [count bgr_playable_W,_x]; 
					if (isPlayer _x) then {bgr_plays_W set [count bgr_plays_W,_x];};};
		case resistance: {bgr_playable_G set [count bgr_playable_G,_x]; 
					if (isPlayer _x) then {bgr_plays_G set [count bgr_plays_G,_x];};};
		case civilian: {bgr_playable_C set [count bgr_playable_C,_x]; 
					if (isPlayer _x) then {bgr_plays_C set [count bgr_plays_C,_x];};};
	};
} forEach bgr_PlayableUnits;

// f_bgrUpdateVars
// func for updating additional vars
f_bgrUpdateVars = compile preprocessFileLineNumbers "scripts\bgr_vars.sqf";