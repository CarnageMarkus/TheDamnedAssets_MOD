// *********************************************************************
// game options menu
// *********************************************************************

INSTANCE MENU_OPT_GAME(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3";
	
	items[14]		= "MENUITEM_GAME_HEADLINE";
				
	items[15]		= "MENUITEM_GAME_SUB_TITLES";
	items[16]		= "MENUITEM_GAME_SUB_TITLES_CHOICE";
	
	items[17]		= "MENUITEM_GAME_ANIMATE_WINDOWS";
	items[18]		= "MENUITEM_GAME_ANIMATE_WINDOWS_CHOICE";

	items[19]		= "MENUITEM_GAME_LOOKAROUND_INVERSE";
	items[20]		= "MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE";
	
	items[21]		= "MENUITEM_M";
	items[22]		= "MENUITEM_M_CHOICE";
	
	items[23]		= "MENUITEM_MSENSITIVITY";
	items[24]		= "MENUITEM_MSENSITIVITY_SLIDER";
	
	items[11]		= "MENUITEM_GAME_BLOOD";
	items[12]		= "MENUITEM_GAME_BLOOD_CHOICE";
				
	items[13]		= "MENUITEM_GAME_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_GAME_HEADLINE(C_MENU_ITEM_PANEL3_DEF) 
{
	text[0]		=	"USTAWIENIA GRY";
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	
	posy		=	MENU_TITLE_Y;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Lookaround
//

INSTANCE MENUITEM_GAME_SUB_TITLES(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Podpisy";
	text[1]		= 	"Wyœwietlanie tekstów dialogów."; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*6;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_SUB_TITLES_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*6;
	// Aktionen
	onChgSetOption													= "subTitles";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};


//
// Fenster faden
//

INSTANCE MENUITEM_GAME_ANIMATE_WINDOWS(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Animowane okna";
	text[1]		= 	"Animowane okna dialogowe."; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*1;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_ANIMATE_WINDOWS_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*1;
	// Aktionen
	onChgSetOption													= "animatedWindows";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};



//
// Lookaround
//

INSTANCE MENUITEM_GAME_LOOKAROUND_INVERSE(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Odwrócona kamera";
	text[1]		= 	"Odwrócone sterowanie kamer¹."; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*2;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"nie|tak";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*2;
	// Aktionen
	onChgSetOption													= "camLookaroundInverse";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// M.
//

INSTANCE MENUITEM_M(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Mysz";
	text[1]		= 	"Prze³¹cza sterowanie kamer¹ za pomoc¹ myszy."; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*3;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_M_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"wy³.|w³.";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*3;
	// Aktionen
	onChgSetOption													= "enableMouse";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// M-Sensibility
//

INSTANCE MENUITEM_MSENSITIVITY(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Czu³oœæ myszy";
	text[1]		= 	""; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*4;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MSENSITIVITY_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{
	backPic		=	MENU_SLIDER_BACK_PIC;	
	type		=	MENU_ITEM_SLIDER;	
	text[0]		= 	"";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*4;
	// Aktionen
	onChgSetOption													= "mouseSensitivity";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	userFloat[0]	= 20;
	userString[0]	= MENU_SLIDER_POS_PIC;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER;
};


//
// Bluteffekte
//

INSTANCE MENUITEM_GAME_BLOOD(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Krew";
	text[1]		= 	"Krew w trakcie gry."; // Kommentar
	// Position und Dimension	
	posx = MENU_PANEL3_COL1_X;
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*5;
	dimx = MENU_PANEL3_COL1_WIDTH;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT | IT_EXTENDED_MENU;
};

instance MENUITEM_GAME_BLOOD_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		= 	"brak|ma³o|wiêcej|du¿o";
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*5;
	// Aktionen
	onChgSetOption													= "bloodDetail";
	onChgSetOptionSection 											= "GAME";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags  | IT_TXT_CENTER | IT_EXTENDED_MENU;
};



INSTANCE MENUITEM_GAME_BACK(C_MENU_ITEM_PANEL3_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	posy		=	MENU_BACK_Y;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};
