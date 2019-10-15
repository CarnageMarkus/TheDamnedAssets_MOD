// *********************************************************************
// options menu
// *********************************************************************

INSTANCE MENU_OPTIONS(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3";
	items[11]	= "MENUITEM_OPT_HEADING";	
	items[12]	= "MENUITEM_OPT_GAME";
	//items[13]	= "MENUITEM_OPT_MOD";
	items[14]	= "MENUITEM_OPT_GRAPHICS";	
	items[15]	= "MENUITEM_OPT_VIDEO";
	items[16]	= "MENUITEM_OPT_AUDIO";	
	items[17]	= "MENUITEM_OPT_CONTROLS";				

	items[18]	= "MENUITEM_PERF";
	items[19]	= "MENUITEM_PERF_CHOICE";
		
	items[20]	= "MENUITEM_OPT_BACK";	
		
	defaultOutGame	= 0;	// PERFORMANCE-SETTINGS
	defaultInGame	= 0;	// PERFORMANCE-SETTINGS	
	
	flags = flags | MENU_SHOW_INFO;
};


const int MENU_OPT_DY 		=  550;
const int MENU_OPT_START_Y	= 1900;

INSTANCE MENUITEM_OPT_HEADING(C_MENU_ITEM_PANEL3_DEF) 
{
	text[0]		=	"USTAWIENIA";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension
	
	posy		=	MENU_TITLE_Y;

	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_OPT_GAME(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Gra";
	text[1]		= "Ró¿ne ustawienia dotycz¹ce gry.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*0;

	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_GAME";	
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_OPT_MOD(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Modifykacja";
	text[1]		= "Ró¿ne ustawienia dotycz¹ce modyfykacji.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*1;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_MOD";	
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_OPT_GRAPHICS(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Grafika";
	text[1]		= "Szczegó³owoœæ obrazu i efekty specjalne.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*1;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_GRAPHICS";	
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_VIDEO(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		=	"Obraz";
	text[1]		=	"Karta graficzna, rozdzielczoœæ i jasnoœæ.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*2;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_VIDEO";	
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};


INSTANCE MENUITEM_OPT_AUDIO(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "DŸwiêk";
	text[1]		= "Muzyka, mowa i efekty dŸwiêkowe.";  // Kommentar
	
	// Position und Dimension
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*3;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_AUDIO";	
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};


INSTANCE MENUITEM_OPT_CONTROLS(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Klawiatura";
	text[1]		= "Ustawienia klawiatury.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*4;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPT_CONTROLS";
	// Weitere Eigenschaften	
	flags = flags | IT_TXT_CENTER;
};



INSTANCE MENUITEM_PERF(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Wydajnoœæ/Jakoœæ";
	text[1]		= "Dostosowanie wydajnoœci i jakoœci obrazu.";  // Kommentar
	
	// Position und Dimension	
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*5;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	onEventAction[EVENT_EXECUTE]= Update_PerfOptions;
	// Weitere Eigenschaften		
	flags			= flags | IT_EFFECTS_NEXT;
	flags 			= flags | IT_TXT_CENTER;
};

instance MENUITEM_PERF_CHOICE(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		= MENU_CHOICE_BACK_PIC2;
	text[0]		= "opcje u¿ytkownika#wydajnoœæ|œrednia jakoœæ|wysoka jakoœæ";	// # trennt die UnDef-Option von der auswaehlbaren Optionen
	type		= MENU_ITEM_CHOICEBOX;
	fontName	= MENU_FONT_SMALL;
	// Position und Dimension	
	
	posx 	= MENU_PANEL2_X_CENTER - 1024;
	posy		= MENU_OPT_START_Y + MENU_OPT_DY*5+650;
	dimx		= 2048;
	dimy		= 350;
	
	// Actions
	onChgSetOption			= "perfQualityIndex";
	onChgSetOptionSection 	= "INTERNAL";	
	// Weitere Eigenschaften
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};

INSTANCE MENUITEM_OPT_BACK(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	
	posy		=	MENU_BACK_Y;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	// Weitere Eigenschaften
	flags			= flags |IT_TXT_CENTER;
};


func int Update_PerfOptions()
{
	Apply_Options_Performance();
	return 0;
};
