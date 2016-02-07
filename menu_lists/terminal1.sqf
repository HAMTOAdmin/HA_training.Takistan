_terminal = _this select 0;
_terminal setvariable ["BIS_COIN_name","Заказ авиатехники"];
_terminal setvariable ["BIS_COIN_rules",[east]];
_terminal setvariable ["BIS_COIN_areasize",[150,5]]; //radius, high
_terminal setvariable ["BIS_COIN_categories",["Вертолеты СССР/РФ","Вертолеты НАТО","Самолеты СССР/РФ","Самолеты НАТО"]];

ch = 500;
ah = 500;
cp = 500;
fp = 500;

_terminal setvariable ["BIS_COIN_funds",["ch","ah","cp","fp"]];
_terminal setvariable ["BIS_COIN_fundsDescription",["ТВ","УВ","ТС","БС"]];
_terminal setvariable ["BIS_COIN_items",
	[
		//--- Class, Category, Cost or [fundsID,Cost], (display name)
		["Mi24_V","Вертолеты СССР/РФ",[1,1],"Ми-24В"],
		["ACE_Mi24_V_FAB250_RU","Вертолеты СССР/РФ",[1,1],"Ми-24В (ФАБ-250)"],
		["Mi24_D_TK_EP1","Вертолеты СССР/РФ",[1,1],"Ми-24Д"],
		["Mi24_P","Вертолеты СССР/РФ",[1,1],"Ми-24П"],
		["Mi17_rockets_RU","Вертолеты СССР/РФ",[0,1],"Ми-8МТВ3"],
		["ACE_Mi17_RU","Вертолеты СССР/РФ",[0,1],"Ми-8МТ"],
		["Mi171Sh_rockets_CZ_EP1","Вертолеты СССР/РФ",[0,1],"Ми-171Ш"],
		["Mi17_TK_EP1","Вертолеты СССР/РФ",[0,1],"Ми-8МТ (Такистан)"],
		["Ka52","Вертолеты СССР/РФ",[1,1],"Ка-52"],
		["Ka60_PMC","Вертолеты СССР/РФ",[1,1],"Ка-60"],
		["Ka60_GL_PMC","Вертолеты СССР/РФ",[1,1],"Ка-60 (M32)"],
		["CMA_Mi28_RUS","Вертолеты СССР/РФ",[1,1],"Ми-28 (Атака)"],
		["CMA_Mi28_N_RUS","Вертолеты СССР/РФ",[1,1],"Ми-28 (Штурм)"],
		
		["ACE_AH1W_AGM_W","Вертолеты НАТО",[1,1],"AH-1W (Hellfire)"],
		["ACE_AH1W_TOW_TOW_W","Вертолеты НАТО",[1,1],"AH-1W (TOW)"],
		["AH1Z","Вертолеты НАТО",[1,1],"AH-1Z (Hellfire)"],
		["AH64D_EP1","Вертолеты НАТО",[1,1],"AH-64D"],
		["AH6J_EP1","Вертолеты НАТО",[0,1],"AH-6J"],
		["ACE_AH6J_DAGR_FLIR","Вертолеты НАТО",[1,1],"AH-6J (DAGR/FLIR)"],
		["UH1Y","Вертолеты НАТО",[0,1],"UH1Y"],
		["MH60S","Вертолеты НАТО",[0,1],"MH60S"],	
		["UH60M_EP1","Вертолеты НАТО",[0,1],"UH60M"],
		["CH_47F_EP1","Вертолеты НАТО",[0,1],"CH-47F"],
		["AW159_Lynx_BAF","Вертолеты НАТО",[0,1],"AH11 Wildcat"],
		["BAF_Apache_AH1_D","Вертолеты НАТО",[0,1],"AH1 Apache"],
		["BAF_Merlin_HC3_D","Вертолеты НАТО",[0,1],"HC3 Merlin"],
		["CH_47F_BAF","Вертолеты НАТО",[0,1],"HC4 Chinook"],

		["ACE_L39_RU","Самолеты СССР/РФ",[3,1],"Л-39"],
		["ACE_L39_RU_BO","Самолеты СССР/РФ",[3,1],"Л-39 (ФАБ-250)"],
		["ACE_Su25","Самолеты СССР/РФ",[3,1],"Су-25 (ФАБ-250)"],
		["ACE_Su39","Самолеты СССР/РФ",[3,1],"Су-25 (Х-29Л)"],
		["ACE_Su27_CASP","Самолеты СССР/РФ",[3,1],"Су-27"],
		["ACE_Su27_CAP","Самолеты СССР/РФ",[3,1],"Су-27 (УРВВ)"],
		["ACE_Su27_CAS","Самолеты СССР/РФ",[3,1],"Су-27 (НАР)"],
		["ACE_Su30_Des","Самолеты СССР/РФ",[3,1],"Су-30"],
		["ACE_Su34_Des","Самолеты СССР/РФ",[3,1],"Су-34 (Х-29Л)"],
		["ACE_Su34_MR_Des","Самолеты СССР/РФ",[3,1],"Су-34 (КАБ)"],
		["An2_TK_EP1","Самолеты СССР/РФ",[2,1],"Ан-2"],
		
		["A10_US_EP1","Самолеты НАТО",[3,1],"A-10 (GBU-12)"],
		["ACE_A10_CBU87","Самолеты НАТО",[3,1],"A-10 (CBU-87)"],
		["ACE_A10_Mk82","Самолеты НАТО",[3,1],"A-10 (Mk-82)"],
		["AV8B","Самолеты НАТО",[3,1],"AV8B (GBU-12)"],
		["AV8B2","Самолеты НАТО",[3,1],"AV8B (AA+FFAR)"],
		["F35B","Самолеты НАТО",[3,1],"F35B"],
		["C130J_US_EP1","Самолеты НАТО",[2,1],"C-130J"],
		["MV22","Самолеты НАТО",[2,1],"MV22"]
	]
];
_terminal setvariable ["BIS_COIN_onPurchase",{sleep 0}]; //building appears after two seconds 
//_terminal setvariable ["BIS_COIN_onConstruct",{clean = [_this select 1] execvm "clean.sqf";}];
_terminal setvariable ["BIS_COIN_actionCondition","true"]; // construction actions will be visible only till T 30 and to players not damaged too much