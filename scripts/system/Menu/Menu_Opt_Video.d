// *********************************************************************
// video options menu
// *********************************************************************

INSTANCE MENU_OPT_VIDEO(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3";
	
	items[12]		= "MENUITEM_VID_HEADLINE";
	
	items[13]		= "MENUITEM_VID_DEVICE";	
	items[14]		= "MENUITEM_VID_DEVICE_CHOICE";
	
	items[15]		= "MENUITEM_VID_RESOLUTION";	
	items[16]		= "MENUITEM_VID_RESOLUTION_CHOICE";
		
	items[17]		= "MENUITEM_VID_BRIGHTNESS";
	items[18]		= "MENUITEM_VID_BRIGHTNESS_SLIDER";		
	
	items[19]		= "MENUITEM_VID_CONTRAST";
	items[20]		= "MENUITEM_VID_CONTRAST_SLIDER";		
	
	items[21]		= "MENUITEM_VID_GAMMA";
	items[22]		= "MENUITEM_VID_GAMMA_SLIDER";		
	
	items[11]		= "MENUITEM_VID_BACK";	
		
	flags = flags | MENU_SHOW_INFO;
};

// C_MENU_ITEM_PANEL3_DEF
// C_MENU_ITEM_PANEL3_COL1_DEF
// C_MENU_ITEM_PANEL3_SLIDER_DEF
// C_MENU_ITEM_PANEL3_CHOICE_DEF


INSTANCE MENUITEM_VID_HEADLINE(C_MENU_ITEM_PANEL3_DEF) 
{
	text[0]		=	"USTAWIENIA OBRAZU";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posy		=	MENU_TITLE_Y;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};


//
// Device
//

INSTANCE MENUITEM_VID_DEVICE(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Karta graf.";
	text[1]		=	"Zmiany uaktywni¹ siê po ponownym uruchomieniu!"; // Kommentar
	
	// Position und Dimension	
	posy		=	MENU_START_Y + MENU_DY*0;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften	
	flags		= flags | IT_EFFECTS_NEXT;
};

INSTANCE MENUITEM_VID_DEVICE_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	text[0]		= "";
	backPic		= MENU_CHOICE_BACK_PIC2;
	type		= MENU_ITEM_CHOICEBOX;	
	fontName	= MENU_FONT_SMALL;
	// Position und Dimension	
	posx -= 512+256;
	dimx += 1024;	
	posy		+= MENU_START_Y + MENU_DY*0;
	// Aktionen
	onChgSetOption			= "zVidDevice";
	onChgSetOptionSection 	= "VIDEO";	
	onEventAction[EVENT_INIT] 	= Update_VideoOptions;
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags 		= flags  | IT_TXT_CENTER | IT_NEEDS_RESTART;
};

//
// Resolution
//

INSTANCE MENUITEM_VID_RESOLUTION(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Rozdzielczoœæ";
	text[1]		= "PotwierdŸ wybór naciskaj¹c ENTER."; // Kommentar
	
	// Position und Dimension	
	posy			= MENU_START_Y + MENU_DY*1;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;	
	onEventAction[EVENT_EXECUTE]= Apply_VideoResolution;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

INSTANCE MENUITEM_VID_RESOLUTION_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	text[0]		= "";
	backPic		= MENU_CHOICE_BACK_PIC2;
	type		= MENU_ITEM_CHOICEBOX;	
	fontName	= MENU_FONT_SMALL;
	// Position und Dimension
	posx -= 512+256;
	dimx += 1024;	
	posy		+= MENU_START_Y + MENU_DY*1;		
	// Aktionen
	onChgSetOption			= "vidResIndex";
	onChgSetOptionSection 	= "INTERNAL";			
	// Eigenschaften
	flags		= flags & ~IT_SELECTABLE;
	flags 		= flags | IT_TXT_CENTER | IT_NEEDS_APPLY;
};

//
// Brightness
//

instance MENUITEM_VID_BRIGHTNESS(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Jasnoœæ";
	text[1]		= "Jasnoœæ"; // Kommentar
	
	// Position und Dimension	
	posy			= MENU_START_Y + MENU_DY*3;
	
	onSelAction[0]  = SEL_ACTION_UNDEF;
	flags			= flags | IT_EFFECTS_NEXT;
};


INSTANCE MENUITEM_VID_BRIGHTNESS_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;
	type		=	MENU_ITEM_SLIDER;	
	// Position und Dimension	
	posy		+= MENU_START_Y + MENU_DY*3;
	// Aktionen	
	onChgSetOption			= "zVidBrightness";
	onChgSetOptionSection 	= "VIDEO";	
	// Weitere Eigenschaften	
	userFloat[0]	= 35;
	userString[0]	= MENU_SLIDER_POS_PIC;
	flags		= flags & ~IT_SELECTABLE;
};

//
// CONTRAST
//

instance MENUITEM_VID_CONTRAST(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Kontrast";
	text[1]		= "Kontrast"; // Kommentar
	
	// Position und Dimension	
	posy			= MENU_START_Y + MENU_DY*4;
	
	onSelAction[0]  = SEL_ACTION_UNDEF;
	flags			= flags | IT_EFFECTS_NEXT;
};


INSTANCE MENUITEM_VID_CONTRAST_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;
	type		=	MENU_ITEM_SLIDER;	
	// Position und Dimension	
	posy		+= MENU_START_Y + MENU_DY*4;
	// Aktionen	
	onChgSetOption			= "zVidContrast";
	onChgSetOptionSection 	= "VIDEO";	
	// Weitere Eigenschaften	
	userFloat[0]	= 35;
	userString[0]	= MENU_SLIDER_POS_PIC;
	flags		= flags & ~IT_SELECTABLE;
};

//
// Gamma
//

instance MENUITEM_VID_GAMMA(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Gamma";
	text[1]		= "Gamma"; // Kommentar
	
	// Position und Dimension	
	posy			= MENU_START_Y + MENU_DY*5;
	
	onSelAction[0]  = SEL_ACTION_UNDEF;
	flags			= flags | IT_EFFECTS_NEXT;
};


INSTANCE MENUITEM_VID_GAMMA_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;
	type		=	MENU_ITEM_SLIDER;	
	// Position und Dimension	
	posy		+= MENU_START_Y + MENU_DY*5;
	// Aktionen	
	onChgSetOption			= "zVidGamma";
	onChgSetOptionSection 	= "VIDEO";	
	// Weitere Eigenschaften	
	userFloat[0]	= 35;
	userString[0]	= MENU_SLIDER_POS_PIC;
	flags		= flags & ~IT_SELECTABLE;
};



INSTANCE MENUITEM_VID_BACK(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	posy		=	MENU_BACK_Y;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;		
	flags = flags | IT_TXT_CENTER;
};



// -------------------------------------------------------------------
// Functions
// -------------------------------------------------------------------

func int Update_VideoOptions()
{
	Update_ChoiceBox("MENUITEM_VID_DEVICE_CHOICE");
	Update_ChoiceBox("MENUITEM_VID_RESOLUTION_CHOICE");	
	return 1;
};

func int Apply_VideoResolution()
{
	Apply_Options_Video();
	return 0;
};