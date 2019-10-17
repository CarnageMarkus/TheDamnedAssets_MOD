// *********************************************************************
// game options menu
// *********************************************************************

INSTANCE MENU_OPT_GRAPHICS(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3";
	
	items[11]		= "MENUITEM_GRA_HEADLINE";
				
	items[12]		= "MENUITEM_GRA_TEXQUAL";	
	items[13]		= "MENUITEM_GRA_TEXQUAL_SLIDER";	
	
	items[14]		= "MENUITEM_GRA_MODEL_DETAIL";	
	items[15]		= "MENUITEM_GRA_MODEL_DETAIL_SLIDER";

	items[16]		= "MENUITEM_GRA_SIGHT";
	items[17]		= "MENUITEM_GRA_SIGHT_CHOICE";		
		
	items[18]		= "MENUITEM_GRA_SKY_EFFECTS";
	items[19]		= "MENUITEM_GRA_SKY_EFFECTS_CHOICE";		
					
	items[20]		= "MENUITEM_GRA_BACK";	
	
	flags = flags | MENU_SHOW_INFO;
};

// C_MENU_ITEM_PANEL3_DEF
// C_MENU_ITEM_PANEL3_COL1_DEF
// C_MENU_ITEM_PANEL3_SLIDER_DEF
// C_MENU_ITEM_PANEL3_CHOICE_DEF

INSTANCE MENUITEM_GRA_HEADLINE(C_MENU_ITEM_PANEL3_DEF) 
{
	text[0]		=	"USTAWIENIA GRAFICZNE";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posy		=	MENU_TITLE_Y;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Texture-Quality
//

INSTANCE MENUITEM_GRA_TEXQUAL(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Tekstury";
	text[1]		= 	"Szczegó³owoœæ tekstur."; // Kommentar
	// Position und Dimension	
	posy		=	MENU_START_Y + MENU_DY*0;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		= flags | IT_EFFECTS_NEXT;		
};

INSTANCE MENUITEM_GRA_TEXQUAL_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;
	type		=	MENU_ITEM_SLIDER;	
	// Position und Dimension	
	posy	 +=	MENU_START_Y + MENU_DY*0;
	// Aktionen	
	onChgSetOption													= "texDetailIndex";
	onChgSetOptionSection 											= "INTERNAL";
	// Weitere Eigenschaften			
	userFloat[0]	= 5; // 5+1 Slider-Steps: 32, 64, 128,256,512, oo
	userString[0]	= MENU_SLIDER_POS_PIC;
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

//
// Modell-Detail-Level
//

INSTANCE MENUITEM_GRA_MODEL_DETAIL(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Modele";
	text[1]		= 	"Szczegó³owoœæ modeli 3D."; // Kommentar
	// Position und Dimension	
	posy		=	MENU_START_Y + MENU_DY*1;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_MODEL_DETAIL_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;
	type		=	MENU_ITEM_SLIDER;	
	// Position und Dimension	
	posy	 +=	MENU_START_Y + MENU_DY*1;
	// Aktionen
	onChgSetOption													= "modelDetail";
	onChgSetOptionSection 											= "PERFORMANCE";
	// Weitere Eigenschaften
	userFloat[0]	= 10; // 10 Slider-Steps
	userString[0]	=	MENU_SLIDER_POS_PIC;	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_PERF_OPTION;
};



//
// Sight
//

instance MENUITEM_GRA_SIGHT(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Widok";
	text[1]		= "Zasiêg generowania obrazu."; // Kommentar
	// Position und Dimension	
	posy		=	MENU_START_Y + MENU_DY*2;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};


INSTANCE MENUITEM_GRA_SIGHT_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "20%|40%|60%|80%|100%|120%|140%|160%|180%|200%|220%|240%|260%|280%|300%";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension
	posy	 +=	MENU_START_Y + MENU_DY*2;
	// Aktionen	
	onChgSetOption													= "sightValue";
	onChgSetOptionSection 											= "PERFORMANCE";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_PERF_OPTION | IT_TXT_CENTER;
};



//
// Himmels-Effekte
//

INSTANCE MENUITEM_GRA_SKY_EFFECTS(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Niebo";
	text[1]		= 	"Specjalne efekty nieba."; // Kommentar
	// Position und Dimension	
	posy		=	MENU_START_Y + MENU_DY*3;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_SKY_EFFECTS_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"wy³.|w³.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy		+=	MENU_START_Y + MENU_DY*3;
	// Aktionen
	onChgSetOption													= "skyEffects";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};



INSTANCE MENUITEM_GRA_BACK(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension
	posy		=	MENU_BACK_Y;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};

