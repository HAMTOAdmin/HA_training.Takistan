//подготовка списка вооружения

_unitfaction = toLower (faction player);
_playerSide = side player;
grpText = "";
{
	if (side _x == _playerSide) then {
		_show = false;
		_units = units _x;
		_tmp = format [localize "STR_HA_brif_groupsLeader",_x, name (leader _x)];
		{
			if ((alive _x) && ((isMultiplayer)&&(_x in playableUnits)||((!isMultiplayer)&&(_x in switchableUnits))) && (side _x == _playerSide)) then {
				_tmp = _tmp + "<br/>- " + (name _x);
				{
					_weapon = (configFile >> "cfgWeapons" >> _x);
					if (getNumber(_weapon >> "type") in [1,2,4,5]) then {
						_tmp = _tmp + "  -  " + getText(_weapon >> "displayName");
					};
				} forEach weapons _x;
				_show = true;
			};
		} forEach _units;
		if _show then {
			grpText = grpText + _tmp + "<br/><br/><br/>";
		};
	};
} forEach allGroups;

_sit = player createDiaryRecord ["diary", ["Позывные и вооружение",grpText]];