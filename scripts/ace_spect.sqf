[true] call ace_spectator_fnc_setSpectator;

waituntil {!(IsNull (findDisplay 12249))};
_keyDown = (findDisplay 12249) displayAddEventHandler ["KeyDown", "if ((_this select 1 == 0x44) || (_this select 1 == 0x01) || (_this select 1 == 0x15)) then {[false] call ace_spectator_fnc_setSpectator}"];