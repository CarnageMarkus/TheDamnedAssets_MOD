// *********************************************************************
// game options menu
// *********************************************************************

INSTANCE MENU_OPT_MOD(C_MENU_DEF) 
{
	backpic			= MENU_BACK_PIC;
	
	items[0]		= "MENUITEM_MOD_HEADLINE";
				
	items[1]		= "MENUITEM_MOD_IMMERSION";
	items[2]		= "MENUITEM_MOD_IMMERSION_CHOICE";
	
	items[3]		= "MENUITEM_MOD_TARGET_BAR_FLOAT";
	items[4]		= "MENUITEM_MOD_TARGET_BAR_FLOAT_CHOICE";
	
	items[5]		= "MENUITEM_MOD_DIALOG_CINEMABARS";
	items[6]		= "MENUITEM_MOD_DIALOG_CINEMABARS_CHOICE";
	
	items[7]		= "MENUITEM_MOD_DIALOG_MENU";
	items[8]		= "MENUITEM_MOD_DIALOG_MENU_CHOICE";
	
	items[9]		= "MENUITEM_MOD_NOTIFS";
	items[10]		= "MENUITEM_MOD_NOTIFS_CHOICE";
				
	items[13]		= "MENUITEM_MOD_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_MOD_HEADLINE(C_MENU_ITEM_DEF) 
{
	text[0]		=	"USTAWIENIA MODYFYKACJI"; // todo:correct polish
	type		=	MENU_ITEM_TEXT;
	// Position und Dimension	
	posx		=	0;		posy		=	MENU_TITLE_Y;
	dimx		=	8100;
	
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;	
};


//
// Lookaround
//

INSTANCE MENUITEM_MOD_IMMERSION(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Interfejs";
	text[1]		= 	"Paski zycia,many,wytrzymalosci sa animowane"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*0;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MOD_IMMERSION_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"Animowany|Wciagajacy|Zwykly(G1)"; // ToDo: correct spelling
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000+512;		posy		=	MENU_START_Y + MENU_DY*0 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "Interface";
	onChgSetOptionSection 											= "THEDAMNEDMOD";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

//
// Lookaround
//

INSTANCE MENUITEM_MOD_TARGET_BAR_FLOAT(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Pasek zycia npc";
	text[1]		= 	""; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*1;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MOD_TARGET_BAR_FLOAT_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"Nad imieniem|Zwykly(G1)"; // ToDo: correct polish
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000;		posy		=	MENU_START_Y + MENU_DY*1 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX + 512;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "TargetBar";
	onChgSetOptionSection 											= "THEDAMNEDMOD";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

INSTANCE MENUITEM_MOD_DIALOG_CINEMABARS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Paski kinowe";
	text[1]		= 	""; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*2;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MOD_DIALOG_CINEMABARS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type			=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"Tak|Nie"; // ToDo: correct spelling
	fontName		=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx			= 5000 + 512;			posy			=	MENU_START_Y + MENU_DY*2 + MENU_CHOICE_YPLUS;
	dimx			= MENU_SLIDER_DX;		dimy 			= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption				= "CinemaBars";
	onChgSetOptionSection 	= "THEDAMNEDMOD";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

INSTANCE MENUITEM_MOD_DIALOG_MENU(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Opcje dialogowe";
	text[1]		= 	""; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*3;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MOD_DIALOG_MENU_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"Mod|Zwykly(G1)"; // ToDo: correct spelling
	fontName	=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx		= 5000 + 512;		posy		=	MENU_START_Y + MENU_DY*3 + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;	dimy 		= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption													= "DialogChoice";
	onChgSetOptionSection 											= "THEDAMNEDMOD";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

INSTANCE MENUITEM_MOD_NOTIFS(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Powiadomienia";
	text[1]		= 	"Animowane upowiadomienia na levej stronie ekranu"; // Kommentar
	// Position und Dimension	
	posx		=	1000;	posy		=	MENU_START_Y + MENU_DY*4;
	dimx		=	4000;	dimy		=	750;
	// Aktionen
	onSelAction[0]	= SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags			= flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MOD_NOTIFS_CHOICE(C_MENU_ITEM_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type			=	MENU_ITEM_CHOICEBOX;		
	text[0]		= 	"Animowane|Zwykle(G1)"; // ToDo: correct spelling
	fontName		=   MENU_FONT_SMALL;
	// Position und Dimension	
	posx			= 5000 + 512;			posy			=	MENU_START_Y + MENU_DY*4 + MENU_CHOICE_YPLUS;
	dimx			= MENU_SLIDER_DX;		dimy 			= 	MENU_CHOICE_DY;
	// Aktionen
	onChgSetOption				= "Notifications";
	onChgSetOptionSection 	= "THEDAMNEDMOD";
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags  | IT_TXT_CENTER;
};

INSTANCE MENUITEM_MOD_BACK(C_MENU_ITEM_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	"Wstecz";
	// Position und Dimension	
	posx		=	1000;		posy		=	MENU_BACK_Y;
	dimx		=	6192;		dimy		=	MENU_DY;
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;	
	flags = flags | IT_TXT_CENTER;
};
