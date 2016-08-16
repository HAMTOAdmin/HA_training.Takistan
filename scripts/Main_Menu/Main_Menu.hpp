//Меню управления группами

class Main_Menu
{
	name=Main_Menu;
	idd=3100;
	movingEnable=1;
	controlsBackground[]={BG,FR,t0};
	objects[]={};
	controls[]={	
			redstar,b01,b02,b03,c01,c02,
			bclose
	};

////////////Для групп///////////////
	class b01:RscButton
	{
		idc=-1;
		x = 0.21; y = 0.11;
		w = 0.3; h = 0.06;
		text="Телепорт";
		action="0 = [(lbCurSel 3001), MM_Team] spawn fHA_MM_Telepotr";
	};

	class c01:RscCombo
	{
		idc=3001;
		x = 0.53; y = 0.11;
		w = 0.32; h = 0.06;
	};

	class b02:RscButton
	{
		idc=-1;
		x = 0.21; y = 0.20;
		w = 0.3; h = 0.06;
		text="Телепорт вертолета ПДП";
		action="0 = [0, [desant_tr]] spawn fHA_MM_Telepotr";
	};

	class b03:RscButton
	{
		idc=-1;
		x = 0.21; y = 0.29;
		w = 0.3; h = 0.06;
		text="Телепорт группы";
		action="0 = [units (MM_Teams_List select (lbCurSel 3002))] spawn fHA_MM_Gr_Telepotr";
	};
	
	class c02:RscCombo
	{
		idc=3002;
		x = 0.53; y = 0.29;
		w = 0.32; h = 0.06;
	};


//////////////Разное////////////////////


///////////////ИИ///////////////////


///////////////Оформление//////////////////
	class BG:RscBackground
	{
		idc = -1;
		x = 0.18; y = 0;
		w = 0.69; h = 0.6;
	};

	class FR:RscBgFrame
	{
		idc = -1;
		x = 0.18; y = 0;
		w = 0.69; h = 0.6;
	};

        class redstar:MenuPicture
        {
         idc = -1;
         text = "pics\redstar.paa";

         x = 0.68;
         y = 0.38;
         w = 0.15;
         h = 0.2;

        };

	class t0:RscText
	{
		idc = -1;
		type =  CT_STATIC ;
		sizeEx = 0.05;
		x = 0.32; y = 0.01;
		w = 0.4; h = 0.05;
		text = "Рабочее место инструктора";
	};

	class bclose:RscButton
	{
		idc=-1;
		x = 0.21; y = 0.50;
		w = 0.3; h = 0.06;
		text="Закрыть";
		action="closeDialog 0";
	};
};