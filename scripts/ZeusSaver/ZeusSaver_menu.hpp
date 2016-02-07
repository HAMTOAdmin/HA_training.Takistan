#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUT_BUTTON  16 // Arma 2 - textured button

#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_List_N_Box       102 // Arma 2 - N columns list box


// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define FontM		"PuristaMedium"
#define FontHTML	"PuristaMedium"


//Меню импорта-экспорта в Zeus



class ZSText
{
	idc = -1;
	type =  CT_STATIC ;  // defined constant
	style = ST_CENTER;  // defined constant
	colorText[] = { 0, 0, 0, 1 };
	colorBackground[] = {0.7, 0.7, 0.7, 1};
	font = FontM;  // defined constant
	sizeEx = 0.03;
	x = 0; y = 0;
	w = 0; h = 0;
	text = "";
};

class ZSBgFrame
{
	type=CT_STATIC;
	idc=-1;
	style=ST_FRAME;
	colorBackground[]={0, 0, 0, 1};
	colorText[]={0, 0, 0, 1};
	font=FontM;
	SizeEX=0.025;
	text="";
};

class ZSBackground
{
	colorBackground[]={0.7, 0.7, 0.7, 1};
	text="";
	type=CT_STATIC;
	idc=-1;
	style=ST_LEFT;
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.04;
};

class ZSButton
{
	type=CT_BUTTON;
	idc=-1;

	soundEnter[]={"", 0.5, 1};
	soundPush[]={"", 0.5, 1};
	soundClick[]={"", 0.5, 1};
	soundEscape[]={"", 0.5, 1};

	default=false;
	text="";
	action="";

	colorActive[]={0, 0, 0, 0};
	colorDisabled[]={0, 0, 0, 0.1};
	colorBackground[]={0.5,0.5,0.5,1};
	colorBackgroundActive[]={0,0.7,0,1};
	colorBackgroundDisabled[]={0,0,0,0.7};
	colorFocused[]={0.7,0.7,0,1};
	colorShadow[]={1, 1, 1, 0.1};
	colorBorder[]={0, 0, 0, 0.1};

	offsetX=0;
	offsetY=0;
	offsetPressedX=0;
	offsetPressedY=0;
	borderSize=0;

	style=ST_LEFT;
	colorText[]={0, 0, 0, 1};
	font=FontM;
	sizeEx=0.025;

	w=0.15;
	h=0.03;
	x=0.2;
};

class ZSPicture
{
 access = 0;
 type = CT_STATIC;
 idc = -1;
 style = 48;//ST_PICTURE
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 font = "TahomaB";
 sizeEx = 0;
 lineSpacing = 0;
 text = "";
 fixedWidth = 0;
 shadow = 0;
};

class ZSEdit
{
 access = 0;
 type = CT_EDIT;
 style = ST_LEFT+ST_FRAME;
 x = 0;
 y = 0;
 h = 0.04;
 w = 0.2;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 colorSelection[] = {1,1,1,0.25};
 font = "TahomaB";
 sizeEx = 0.02;
 autocomplete = "";
 text = "";
 size = 0.2;
 shadow = 0;
};




class ZeusSaver_Menu
{
	name=Main_Menu;
	idd=3100;
	movingEnable=1;
	controlsBackground[]={BG,BG2,BG3,FR,t0};
        //controlsBackground[]={BG,BG2,FR,t0};
	objects[]={};
	controls[]={b01,b02,bclose,pict,zeusCode};
        //controls[]={b01,b02,bclose,pict};



///////////////Оформление//////////////////



	class FR:ZSBgFrame
	{
		idc = 3;
		x = safeZoneX+safeZoneW*0.10; y = safeZoneY+safeZoneH*0.10;
		w = safeZoneW*0.8; h = safeZoneH*0.8;
                colorBackground[] = {0,0,0,1};
	};

	class BG:ZSBackground
	{
		idc = 1;
		x = safeZoneX+safeZoneW*0.10; y = safeZoneY+safeZoneH*0.10;
		w = safeZoneW*0.8; h = safeZoneH*0.04;
	};

	class BG2:ZSBackground
	{
		idc = 2;
                x = safeZoneX+safeZoneW*0.10;
                y = safeZoneY+safeZoneH*(0.9-0.06);
                h = safeZoneH*0.06;
                w = safeZoneW*0.8;
	};



	class BG3:ZSBackground
	{
		idc = 4;
		x = safeZoneX+safeZoneW*0.10; 
                y = safeZoneY+safeZoneH*0.14;
                h = safeZoneH*0.7;
                w = safeZoneW*0.8;
                colorBackground[] = {0,0,0,1};
	};


	class t0:ZSText
	{
		idc = 22;
		type =  CT_STATIC ;
		sizeEx = 0.05;
		x = safeZoneX+safeZoneW*0.105; y = safeZoneY+safeZoneH*0.108;
		w = safeZoneW*0.20; h = 0.05;
		text = "Импорт-экспорт Zeus";
	};


       class pict:ZSPicture
        {
          text = "pics/zz.jpg";
          x = safeZoneX+safeZoneW*0.308;
          y = safeZoneY+safeZoneH*0.106;
          w = 0.10;
          h = 0.06;
          colorText[] = {0.4,0.6745,0.2784,1.0};// whatever gives you a thrill
       };






	class bclose:ZSButton
	{
		idc=5;
		x = safeZoneX+safeZoneW*0.6; y = safeZoneY+safeZoneH*(0.9-0.055);
		w = safeZoneW*0.10; h = safeZoneH*0.04;
                style=ST_CENTER;
         	sizeEx=0.03;
		text="Закрыть";
		action="closeDialog 0";
	};


	class b01:ZSButton
	{
		idc=6;
		x = safeZoneX+safeZoneW*0.30; y = safeZoneY+safeZoneH*(0.9-0.055);
		w = safeZoneW*0.10; h = safeZoneH*0.04;
                style=ST_CENTER;
         	sizeEx=0.03;
		text="Сохранить";
                action = "[] spawn zs_Save;"; 
	};


	class b02:ZSButton
	{
		idc=7;
		x = safeZoneX+safeZoneW*0.45; y = safeZoneY+safeZoneH*(0.9-0.055);
		w = safeZoneW*0.10; h = safeZoneH*0.04;
                style=ST_CENTER;
         	sizeEx=0.03;
		text="Загрузить";
                action="[] spawn zs_Load;"; 
	};

       // большое поле ввода кода
       class zeusCode:ZSEdit
         {
          idc = 8; 
          x = safeZoneX+safeZoneW*0.10;
          y = safeZoneY+safeZoneH*0.14;
          h = safeZoneH*0.7;
          w = safeZoneW*0.8;
          access = 1000;
          style = ST_LEFT+ST_UP+ST_MULTI;
          text = "";
          autocomplete = "";
          colorBackground[] = {0,0,0,0};
          colorText[] = {1,1,1,1};
         // colorSelection[] = {0.06,0.3,0.09,0.25};
          colorSelection[] = {0,1,0,0.5}; // цвет выделенного текста
          colorEnabled[] = {1,1,1,1};
          colorDisabled[] = {1,1,1,0.5};
          sizeEx=0.024;   // размер шрифта
         };



};