/*
Created by Vadim Shchemelinin aka badger 
2010 St.Petersburg

Script for OWP_parad by www.Our-Army.su
*/
if (!isServer) exitWith {};
/*		
0 - radavoi
1 - efr
2 - ml serz
3 - serz
4 - st serz

5 - starshina
6 - ml prapor
7 - prapor
8 - st prapor

9 - ml leit
10 - leit
11 - st leit
12 - kapitan

13 - major
14 - podpolk
15 - polk

***********************************************************************
				!!!!!!!! NACHALO BAZI DANNIH !!!!!!!!!
***********************************************************************
*/

_nagradarray = [
[
     "[HA]Korvet",
	 "vvs",
	 15,
	 [	"Mzzsp"],
	 [	"OL","OOR","OOR","OTKZ","OZP",
		"OTS3","Mztd","Mztd","Mztd","Mzto",
		"Mzto","Mvt","Mvvs","Mzbs3","M10LNA"
	 ],
	 [	"","Mzovvs2","Mzovvs1",
		"","OZSRVVS3","OZSRVVS2",
		"","VVS","ZG"
	 ]
], 
[
     "[HA]Dimon",
	 "vvs",
	 10,
	 [	""],
	 [	"Mzbs3","M10LNA","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","ZgtoO",
		"","","",
		"","",""
	 ]
], 
[
     "[HA]Diar",
	 "vvs",
	 2,
	 [	""],
	 [	"Mzbz","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","Zgto2","VVS",
		"","","",
		"","",""
	 ]
],
[
     "[HA]PKozik",
	 "msv",
	 14,
	 [	"Mzzsp"],
	 [	"OL","OTKZ","OZP","Mvvs","Mztd",
		"Mztd","Mzto","Mzbs1","M10LNA","",
		"","","","",""
	 ],
	 [	"","","SnO",
		"","","",
		"","",""
	 ]
], 
[
     "[HA]Volk",
	 "msv",
	 12,
	 [	""],
	 [	"Mztd","Mztd","Mzto","Mzto","Mzto",
		"Mvvs","Mzbs1","Mzbs2","Mzbs3","M10LNA",
		"","","","",""
	 ],
	 [	"Mzovvs2","Mzovvs1","OZSRVVS3",
		"","","ZG",
		"","",""
	 ]
], 
[
     "[HA]Красноармеец",
	 "btv",
	 15,
	 [	"Mzzsp"],
	 [	"OL","OTKZ","OTS3","Mzo","Mzo",
		"Mztd","Mzto","Mvt","M10LNA","",
		"","","","",""
	 ],
	 [	"","","Mzovvs2",
		"","ZgtoO","ZG",
		"","",""
	 ]
], 
[
     "[HA]PARTYzan",
	 "msv",
	 8,
	 [	""],
	 [	"OTKZ","OZP","OTS3","","",
		"Mztd","Mzto","","","",
		"","","","",""
	 ],
	 [	"","","OZSRVVS3",
		"","","",
		"","",""
	 ]
],
[
     "[HA]varga",
	 "msv",
	 10,
	 [	""],
	 [	"Mzovogg","Mzbz","Mzo","","",
		"Mzbs3","M10LNA","","","",
		"","","","",""
	 ],
	 [	"Mzovvs2","Mzovvs1","ZG",
		"","OAN","",
		"","",""
	 ]
], 
[
     "[HA]skyman",
	 "msv",
	 3,
	 [	""],
	 [	"Mzo","Mzbs3","M10LNA","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","",
		"","","",
		"","",""
	 ]
],
[
     "[HA]Squirrel",
	 "btv",
	 7,
	 [	""],
	 [	"OKZ","Mzto","Mzto","Mzbs1","",
		"","","","","",
		"","","","",""
	 ],
	 [	"Mzovvs2","OZSRVVS3","ZG",
		"","","",
		"","",""
	 ]
],
[
     "[HA]Korniliy",
	 "msv",
	 3,
	 [	""],
	 [	"Mzo","Mzbs3","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Zgto3",
		"","","",
		"","",""
	 ]
],
[
     "[HA]DeNiS",
	 "msv",
	 0,
	 [	""],
	 [	"","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Zgto2",
		"","","",
		"","",""
	 ]
],
[
     "[HA]TeMaK",
	 "mp",
	 0,
	 [	""],
	 [	"","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","",
		"","","",
		"","",""
	 ]
],
[
     "[HA]KENT",
	 "vdv",
	 0,
	 [	""],
	 [	"Mzbz","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Zgto2",
		"","","",
		"","",""
	 ]
],
[
     "[HA]Luminatus",
	 "msv",
	 0,
	 [	""],
	 [	"","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Zgto3",
		"","","",
		"","",""
	 ]
],
[
     "[~HA~]zayza",
	 "msv",
	 "K",
	 [	""],
	 [	"","","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Zgto3",
		"","","",
		"","",""
	 ]
],
[
     "[HA]boris",
	 "btv",
	 8,
	 [	""],
	 [	"Mzo","M10LNA","","","",
		"","","","","",
		"","","","",""
	 ],
	 [	"","","Mzovvs2",
		"","","Zgto2",
		"","",""
	 ]
],
[
     "[HA]ISKANDER",
	 "btv",
	 8,
	 [	""],
	 [	"Mzbs3","Mzbz","Mzbs2","M10LNA","",
		"","","","","",
		"","","","",""
	 ],
	 [	"Mzovvs1","Mzovvs2","ZG",
		"","OZSRVVS3","",
		"","",""
	 ]
], 
[
     "[HA]ddt",
	 "mp",
	 14,
	 [	""],
	 [	"OKZ","OSL1","OSL2","OSL3","Mzbz",
		"Mzbz","Mn","Mzo","Mvvs","",
		"Mzbs3","M10LNA","","",""
	 ],
	 [	"OKZV","OU2","ON2",
		"ZG","Mzovvs2","Mzovvs1",
		"","",""
	 ]
] 
];

/*		
***********************************************************************
				!!!!!!!! KONEC BAZI DANNIH !!!!!!!!!
***********************************************************************
*/

//inicializacia i peredacha funkcii
fbgrOWP_pogon_controller = compile (
	preprocessFileLineNumbers format [
		"\OWP_parad_mto\scripts\%1.sqf",
		"bgr_pogon_controller"
	]
);
fbgrOWP_set_pogon = compile (
	preprocessFileLineNumbers format [
		"\OWP_parad_mto\scripts\%1.sqf",
		"bgr_set_pogon"
	]
);
publicvariable "fbgrOWP_pogon_controller";
publicvariable "fbgrOWP_set_pogon";

//massiv pozivnih
_ha_pak_bgr_parad_namearrayT = [];
{
_ha_pak_bgr_parad_namearrayT set [count _ha_pak_bgr_parad_namearrayT,(_x select 0)];

} foreach _nagradarray;

ha_pak_bgr_parad_namearray = _ha_pak_bgr_parad_namearrayT;
publicvariable "ha_pak_bgr_parad_namearray";

//massiv nagrad dla paradnoi
_nagradarray spawn
{
	private ["_par_nagradarrayT", "_ppp", "_nagrad","_nagradT","_ind"];
	_par_nagradarrayT = [];
	{
		_ppp =
		switch (_x select 1) do
		{
		  case "vdv": {"vvs"};
		  case "sno": {"msv"};
		  default {_x select 1};
		};
		_nagrad = [[0,format ["\OWP_parad\P\%1\%2.paa",_ppp,(_x select 2)]]];
		_nagradT = (_x select 3) + (_x select 4) + (_x select 5);
		_ind = 1;
		{
			if (_x != "") then {
				_nagrad set [count _nagrad,[_ind,format ["\OWP_parad\M\%1.paa",_x]]];
			};
			_ind = _ind + 1;		
		} foreach _nagradT;

		_par_nagradarrayT set [count _par_nagradarrayT,(_nagrad)];

	} foreach _this;
	ha_pak_bgr_parad_par_nagradarray = _par_nagradarrayT;
	publicvariable "ha_pak_bgr_parad_par_nagradarray";
	//hint "ogo";
};
//massiv nagrad dla povsednevnoi
_nagradarray spawn
{
	private ["_pov_nagradarrayT", "_ppp", "_nagrad","_nagradT","_ind","_ind2","_ind2arr"];
	_pov_nagradarrayT = [];
	{
		_ppp =
		switch (_x select 1) do
		{
		  case "vdv": {"vvs"};
		  case "sno": {"msv"};
		  default {_x select 1};
		};
		_nagrad = [[0,format ["\OWP_parad\P\povs\%1\%2.paa",_ppp,(_x select 2)]]];
		//zveadi geroev
		_nagradT = (_x select 3);
		_ind = 1;
		{
			if (_x != "") then {
				_nagrad set [count _nagrad,[_ind,format ["\OWP_parad\M\%1.paa",_x]]];
			};
			_ind = _ind + 1;		
		} foreach _nagradT;
		//ordena c provoi storoni grudi
		_ind2arr = [22,21,25,24,23];	//nomera selectionov na modeli povsednevnoi formi, otvedonnie pod znachki
		_ind2 = 0;
		_ngr_bez_lent = ["BTV","msv","MSV","SnO","VVS","VDV","ZG","Zgto3","Zgto2","Zgto1","ZgtoO"];
		_nagradT = (_x select 5);
		{
			if (_x != "") then {
				_y = _x;
				if (({_x==_y} count _ngr_bez_lent) == 0) then {
					_nagrad set [count _nagrad,[_ind,format ["\OWP_parad\M\povs\%1.paa",_x]]];
					_ind = _ind + 1;
				}else{
					_nagrad set [count _nagrad,[(_ind2arr select _ind2),format ["\OWP_parad\M\%1.paa",_x]]];
					_ind2 = _ind2 + 1;
				}
			};		
		} foreach _nagradT;
		//medali c levoi storoni grudi
		_nagradT = (_x select 4);
		{
			if (_x != "") then {
				_nagrad set [count _nagrad,[_ind,format ["\OWP_parad\M\povs\%1.paa",_x]]];
				_ind = _ind + 1;
			};		
		} foreach _nagradT;

		_pov_nagradarrayT set [count _pov_nagradarrayT,(_nagrad)];

	} foreach _this;
	ha_pak_bgr_parad_pov_nagradarray = _pov_nagradarrayT;
	publicvariable "ha_pak_bgr_parad_pov_nagradarray";
};