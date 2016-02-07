_sec = 0;
_min = 0;
_razd = ":";
while {beg == 1} do {
sleep 1;
_sec = _sec + 1;
if (_sec == 60) then {
  _min = _min + 1;
  _sec = 0;
  };
};
if (_sec < 10) then {_razd = ":0";};
[EAST,"base"] SideChat format["Ваше время: %1%2%3 ",_min,_razd,_sec];
hint format["Ваше время: %1%2%3 ",_min,_razd,_sec];