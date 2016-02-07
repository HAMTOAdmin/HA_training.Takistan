/*
Created by Vadim Shchemelinin aka badger 
2011 St.Petersburg

Script for www.Our-Army.su
*/
/*
Переключение слайдов на экране
Добавляем в инит панели управления:
0 = [this,0,0,[0,this,[["Спешенное МСО","pics\MSO\03.jpg"],["БП МСВ вар1","pics\MSO\04.jpg"],["БП МСВ","pics\MSO\05.jpg"],["Командование МСВ","pics\MSO\06.jpg"]]]] execVM "scripts\video_proektor.sqf";// и наслаждаемся
*/

_panel = _this select 0;
_Called = _this select 1;
_type = (_this select 3) select 0;
_ekran = (_this select 3) select 1;
_mass = (_this select 3) select 2;

switch (_type) do
{
	case 0:
	{
		sleep 1;
		{ 
			_panel addaction [format["Слайд: %1",(_x select 0)],"scripts\video_proektor.sqf",[1,_ekran,(_x select 1)],10,false,true,"","true"];
		} foreach _mass;
		_ekran setobjecttexture [0,(_mass select 0) select 1];
		[-1, {(_this select 0) setobjecttexture [0,(_this select 1)]}, [_ekran,((_mass select 0) select 1)]] call CBA_fnc_globalExecute;
	};

	case 1:
	{
		_ekran setobjecttexture [0,_mass];
		[-1, {(_this select 0) setobjecttexture [0,(_this select 1)]}, [_ekran,_mass]] call CBA_fnc_globalExecute;
	};
};