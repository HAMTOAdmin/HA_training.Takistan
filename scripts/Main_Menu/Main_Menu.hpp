//Меню управления группами

class Main_Menu
{
	name=Main_Menu;
	idd=3100;
	movingEnable=1;
	controlsBackground[]={BG,FR,FR1,FR2,t0};
	objects[]={};
	controls[]={	
			b01,b02,b03,b04,b05,c01,c02,
			b11,b12,b13,b14,c11,c12,
			b21,b22,b23,c21,c22,
			bclose
	};

////////////Для групп///////////////
	class b01:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.08;
		w = 0.2; h = 0.03;
		text="Телепорт";
		action="0 = [(lbCurSel 3001), MM_Team] spawn fHA_MM_Telepotr";
	};

	class c01:RscCombo
	{
		idc=3001;
		x = 0.51; y = 0.08;
		w = 0.2; h = 0.03;
	};

	class b02:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.12;
		w = 0.2; h = 0.03;
		text="Телепорт вертолета ПДП";
		action="0 = [0, [desant_tr]] spawn fHA_MM_Telepotr";
	};

	class b03:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.17;
		w = 0.2; h = 0.03;
		text="Телепорт группы";
		action="0 = [units (MM_Teams_List select (lbCurSel 3002))] spawn fHA_MM_Gr_Telepotr";
	};
	
	class c02:RscCombo
	{
		idc=3002;
		x = 0.51; y = 0.17;
		w = 0.2; h = 0.03;
	};

	class b04:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.21;
		w = 0.2; h = 0.03;
		text="Телепорт ящика";
		//action="0 = [0, [box]] spawn fHA_MM_Telepotr; 0 = [box] execVM 'scripts\box_ammo.sqf';";
		action="hint 'Временно не работает'";
/*		text="Управление группами";
		action="[] execVM 'GC_Menu\GC_Open.sqf'";
*/	};

	class b05:RscButton
	{
		idc=-1;
		x = 0.63; y = 0.21;
		w = 0.08; h = 0.03;
		text="Ран. бот";
		//action="0 = [] execVM 'scripts\create_uncos.sqf'";
		action="hint 'Временно не работает'";
/*		text="Сброс";
		action="GC_menu_in_use = false; hint 'ВНИМАНИЕ!\n\nСброс блокировки меню управления труппами'";
*/	};

//////////////Разное////////////////////

	class b11:RscButton
	{
		
		x = 0.29; y = 0.38;
		w = 0.2; h = 0.03;
		text="Создать технику";
		//action="closeDialog 0; 0 = [player,(getPos player),[50,5],MM_VehTypes1,'scripts\HA_coin_interface.sqf'] spawn f_HA_MM_COIN";
		action="0 = [(lbCurSel 3101), MM_VehTypes1] spawn fHA_MM_EmptyVehGen";
	};

	class c11:RscCombo
	{
		idc=3101;
		x = 0.51; y = 0.38;
		w = 0.2; h = 0.03;
		//text="Создать технику";
		//action="closeDialog 0; hint 'Укажите зону для создания техники'; 0 = [player,[],[50,5],MM_VehTypes1,'scripts\HA_coin_interface.sqf'] spawn f_HA_MM_COIN";
	};

	class b12:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.42;
		w = 0.2; h = 0.03;
		text="Техника с парашютом";
		//action="0 = [(lbCurSel 3101), MM_VehTypes1] execVM 'scripts\create_inAir.sqf'";
		action="hint 'Временно не работает'";
	};

	class b13:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.47;
		w = 0.2; h = 0.03;
		text="Арт. удар";
		action="hint 'Временно не работает'";
		//action="0 = [(lbCurSel 3102), MM_ArtyTypes] spawn fHA_MM_Artylery";
	};
	
	class c12:RscCombo
	{
		idc=3102;
		x = 0.51; y = 0.47;
		w = 0.2; h = 0.03;
	};

	class b14:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.52;
		w = 0.2; h = 0.03;
/*		text="Время/погода";
		action="hint 'В разработке'";
*/	};

///////////////ИИ///////////////////

	class b21:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.68;
		w = 0.2; h = 0.03;
		text="Создать пехоту ИИ";
		action="0 = [(lbCurSel 3201), MM_AiInfTypesWood] spawn fHA_MM_AiInfGen";
	};

	class c21:RscCombo
	{
		idc=3201;
		x = 0.51; y = 0.68;
		w = 0.2; h = 0.03;
	};

	class b22:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.72;
		w = 0.2; h = 0.03;
		text="Создать технику ИИ";
		action="0 = [(lbCurSel 3202), MM_AiArmorTypes1] spawn fHA_MM_AiArmoryGen";
	};

	class c22:RscCombo
	{
		idc=3202;
		x = 0.51; y = 0.72;
		w = 0.2; h = 0.03;
	};

	class b23:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.77;
		w = 0.2; h = 0.03;
		text="Удалить группу ИИ";
		action="0 = [] spawn fHA_MM_DelAiGroopsInit";
	};

///////////////Оформление//////////////////
	class BG:RscBackground
	{
		idc = -1;
		x = 0.28; y = 0;
		w = 0.44; h = 1;
	};

	class FR:RscBgFrame
	{
		idc = -1;
		x = 0.28; y = 0;
		w = 0.44; h = 1;
	};

	class FR1:RscBgFrame
	{
		idc = -1;
		x = 0.28; y = 0.07;
		w = 0.44; h = 0.3;
	};

	class FR2:RscBgFrame
	{
		idc = -1;
		x = 0.28; y = 0.67;
		w = 0.44; h = 0.28;
	};

	class t0:RscText
	{
		idc = -1;
		type =  CT_STATIC ;
		sizeEx = 0.05;
		x = 0.3; y = 0.01;
		w = 0.4; h = 0.05;
		text = "Functions";
	};

	class bclose:RscButton
	{
		idc=-1;
		x = 0.29; y = 0.96;
		w = 0.2; h = 0.03;
		text="Закрыть";
		action="closeDialog 0";
	};
};