// *********************************************************************
// main menu (startup)
// *********************************************************************

INSTANCE MENU_MAIN(C_MENU_DEF) 
{
	// transparent
	backpic			= "";
	musictheme		= "SYS_Menu";
	
	items[0]		= "MENUITEM_MAIN_PANEL_LEFT";
	items[1]		= "MENUITEM_MAIN_HEADLINE";
	items[2]		= "MENUITEM_MAIN_HEADLINE2";
	items[3]		= "MENUITEM_MAIN_NEWGAME";
	items[4]		= "MENUITEM_MAIN_SAVEGAME_LOAD";
	items[5]		= "MENUITEM_MAIN_SAVEGAME_SAVE";
	items[6]		= "MENUITEM_MAIN_RESUME";
	items[7]		= "MENUITEM_MAIN_OPTIONS";
	items[8]		= "MENUITEM_MAIN_EXIT";
	
	// whole screen
	posx		= 0;
	posy		= 0;
	dimx		= 8192;
	dimy		= 8192;
	
	defaultOutGame	= 2;	// NEWGAME
	defaultInGame	= 4;	// SAVEGAME
	
	flags = MENU_SHOW_INFO | MENU_EXCLUSIVE;
};

// main menu left panel stays on screen with fake items 
PROTOTYPE C_MENU_WITH_FAKE_PANEL(C_MENU)
{
//	backWorld		=	"cutscenes\INTRO.zen";
	backpic			=	"";
	musicTheme		=	"";	
	eventTimerMSec	=	1000;			// 1 second cycle with EVENT_TIMER
	
	// full screen
	posx				=	0;
	posy				=	0;
	dimx				=	8192;
	dimy				= 	8192;	
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black

	items[0]		=	"MENUITEM_MAIN_PANEL_LEFT";
	items[1]		=	"MENUITEM_MAIN_HEADLINE";
	items[2]		=	"MENUITEM_MAIN_HEADLINE2";
	items[3]		=	"FAKE_MENUITEM_MAIN_NEWGAME";
	items[4]		=	"FAKE_MENUITEM_MAIN_SAVEGAME_LOAD";
	items[5]		=	"FAKE_MENUITEM_MAIN_SAVEGAME_SAVE";
	items[6]		=	"FAKE_MENUITEM_MAIN_RESUME";
	items[7]		=	"FAKE_MENUITEM_MAIN_OPTIONS";
	items[8]		=	"FAKE_MENUITEM_MAIN_EXIT";
	
	items[9]		=	"MENUITEM_MAIN_OVERLAY";
	items[10]		=	"MENUITEM_PANEL2";
	
	flags = MENU_EXCLUSIVE;
	
	defaultOutGame	= -1;		// no item is default
	defaultInGame		= -1;		// no item is default
};

INSTANCE MENUITEM_MAIN_PANEL_LEFT(C_MENU_ITEM_DEF) 
{
	backPic	=	MENU_PANEL_BACK_PIC;
	
	// Positionen  und Dimensionen	
	posx		=	MENU_MAIN_PANEL_X;
	posy		=	0;
	dimx		=	MENU_MAIN_PANEL_WIDTH;
	dimy		=	8192;
	// Weitere Eigenschaften
	alphaMode 	=	"BLEND";	
	alpha	=	255;		
	flags	=	flags | IT_TXT_CENTER;
	flags	=	flags & ~IT_SELECTABLE;
};

INSTANCE MENUITEM_PANEL2(C_MENU_ITEM_DEF) 
{
	backPic	=	"Menu_Panel2.tga";
	
	// Positionen  und Dimensionen	
	posx		=	MENU_PANEL2_X;
	posy		=	MENU_PANEL2_Y;
	dimx		=	MENU_PANEL2_WIDTH;
	dimy		=	MENU_PANEL2_HEIGHT;
	// Weitere Eigenschaften
	alphaMode 	=	"BLEND";	
	alpha	=	255;		
	flags	=	flags | IT_TXT_CENTER;
	flags	=	flags & ~IT_SELECTABLE;
};

INSTANCE MENUITEM_PANEL3(C_MENU_ITEM_DEF) 
{
	backPic	=	"Menu_Panel3.tga";
	
	// Positionen  und Dimensionen	
	posx		=	MENU_PANEL3_X;
	posy		=	MENU_PANEL3_Y;
	dimx		=	MENU_PANEL3_WIDTH;
	dimy		=	MENU_PANEL3_HEIGHT;
	// Weitere Eigenschaften
	alphaMode 	=	"BLEND";	
	alpha	=	255;		
	flags	=	flags | IT_TXT_CENTER;
	flags	=	flags & ~IT_SELECTABLE;
};

// centered at panel1
PROTOTYPE C_MENU_ITEM_PANEL_DEF(C_MENU_ITEM)
{
	fontName 	= 	MENU_FONT_DEFAULT;
	text			=	"";
	alphaMode	=	"BLEND";
	alpha		=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	type			=	MENU_ITEM_TEXT;
	
	posx		=	MENU_MAIN_PANEL_X;
	posy		=	MENU_MAIN_Y;
	dimx		=	MENU_MAIN_PANEL_WIDTH;
	dimy		=	750;
	flags			=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_SELECTABLE;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};

// centered at panel2
PROTOTYPE C_MENU_ITEM_PANEL2_DEF(C_MENU_ITEM)
{
	fontName 		= 	MENU_FONT_DEFAULT;
	text			=	"";
	alphaMode		=	"BLEND";
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	type			=	MENU_ITEM_TEXT;
	posx			=	MENU_PANEL2_X;
	posy			=	MENU_PANEL2_Y;
	dimx			=	MENU_PANEL2_WIDTH;			// -1 = AUTODETECT
	dimy			=	-1;			// -1 = AUTODETECT
	flags			=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_SELECTABLE;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};

// centered at panel3
PROTOTYPE C_MENU_ITEM_PANEL3_DEF(C_MENU_ITEM)
{
	fontName 		= 	MENU_FONT_DEFAULT;
	text			=	"";
	alphaMode		=	"BLEND";
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	type			=	MENU_ITEM_TEXT;
	posx			=	MENU_PANEL3_X;
	posy			=	MENU_PANEL3_Y;
	dimx			=	MENU_PANEL3_WIDTH;			// -1 = AUTODETECT
	dimy			=	-1;			// -1 = AUTODETECT
	flags			=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_SELECTABLE;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};

// centered at panel3 column 1
PROTOTYPE C_MENU_ITEM_PANEL3_COL1_DEF(C_MENU_ITEM)
{
	fontName 		= 	MENU_FONT_DEFAULT;
	text			=	"";
	alphaMode		=	"BLEND";
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	type			=	MENU_ITEM_TEXT;
	posx = MENU_PANEL3_COL1_X;
	dimx = MENU_PANEL3_COL1_WIDTH;
	dimy			=	-1;			// -1 = AUTODETECT
	flags			=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_SELECTABLE;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};
// slider at column2
PROTOTYPE C_MENU_ITEM_PANEL3_SLIDER_DEF(C_MENU_ITEM)
{
	backPic		= MENU_SLIDER_BACK_PIC;
	type		= MENU_ITEM_SLIDER;
	fontName 		= 	MENU_FONT_DEFAULT;
	text			=	"";
	alphaMode		=	"BLEND";
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	// Positionen  und Dimensionen	
	posx 	= MENU_PANEL3_COL2_X;
	posy		= MENU_SLIDER_YPLUS;
	dimx 	= MENU_PANEL3_COL2_WIDTH;
	dimy		= 350;		
	flags	=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_TXT_CENTER;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};

// choice at column 2
PROTOTYPE C_MENU_ITEM_PANEL3_CHOICE_DEF(C_MENU_ITEM)
{
	text			=	"";
	alphaMode		=	"BLEND";
	alpha			=	254;			// NOTE: Must be under 255 to support chroma keying, chroma color is black
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;
	fontName	= 	MENU_FONT_SMALL;
	
	posx = MENU_PANEL3_COL2_X;
	posy	 = MENU_CHOICE_YPLUS;
	dimx = MENU_PANEL3_COL2_WIDTH;
	dimy = MENU_CHOICE_DY;
	flags	=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_TXT_CENTER;
	
	openDelayTime	=	0;
	openDuration	=	-1;	
	
	sizeStartScale  = 	1;
	
	userFloat[0]    =	100;	
	userFloat[1]	=	200;
	
	onSelAction[0]			= 	SEL_ACTION_BACK;
	onChgSetOption  		=	"";
	onChgSetOptionSection 	= "INTERNAL";
	
	frameSizeX		= 0;
	frameSizeY		= 0;
};

//
// NEW GAME
//

instance MENUITEM_MAIN_NEWGAME(C_MENU_ITEM_PANEL_DEF) 
{
	backpic	=	MENU_ITEM_BACK_PIC;
	text[0]	=	MENU_MAIN_NEW_TITLE;
	text[1]	=	MENU_MAIN_NEW_TEXT;
	
	posy		=	MENU_MAIN_NEW_Y;

	// Aktionen
	onSelAction_S[0]	= "MENU_NEW_GAME";
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	// Weitere Eigenschaften
	flags	=	flags | IT_TXT_CENTER;
};

INSTANCE FAKE_MENUITEM_MAIN_NEWGAME(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_NEW_TITLE ;		
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_NEW_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_TXT_CENTER;		
};

//
// LOAD & SAVE GAME
//


INSTANCE MENUITEM_MAIN_SAVEGAME_LOAD(C_MENU_ITEM_PANEL_DEF)
{
	backpic	= 	MENU_ITEM_BACK_PIC;
	text[0]	= 	MENU_MAIN_LOAD_TITLE;
	text[1]	= 	MENU_MAIN_LOAD_TEXT;
	
	posy		=	MENU_MAIN_LOAD_Y;
	
	// Aktionen
	onSelAction_S[0]	=	"MENU_SAVEGAME_LOAD";
	onSelAction[0]	=	SEL_ACTION_STARTMENU;
	// Weitere Eigenschaften
	flags	=	flags | IT_TXT_CENTER;
};

INSTANCE FAKE_MENUITEM_MAIN_SAVEGAME_LOAD(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_LOAD_TITLE;
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_LOAD_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_TXT_CENTER;		
};

instance MENUITEM_MAIN_SAVEGAME_SAVE(C_MENU_ITEM_PANEL_DEF) 
{
	backpic	=	MENU_ITEM_BACK_PIC;
	text[0]	=	MENU_MAIN_SAVE_TITLE;
	text[1]	=	MENU_MAIN_SAVE_TEXT;
	
	posy		=	MENU_MAIN_SAVE_Y;
	
	// Aktionen
	onSelAction_S[0] 	= "MENU_SAVEGAME_SAVE";
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	// Weitere Eigenschaften
	flags		= flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

INSTANCE FAKE_MENUITEM_MAIN_SAVEGAME_SAVE(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_SAVE_TITLE;
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_SAVE_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED | IT_TRANSPARENT |IT_MOVEABLE | IT_TXT_CENTER;		
};


//
// RESUME
//


INSTANCE MENUITEM_MAIN_RESUME(C_MENU_ITEM_PANEL_DEF)
{
	backpic		=	MENU_ITEM_BACK_PIC;
	text[0]		=	MENU_MAIN_RESUME_TITLE;
	text[1]		=   MENU_MAIN_RESUME_TEXT;
	
	posy		= MENU_MAIN_RESUME_Y;
	
	// Aktionen
	onSelAction[0]	= 	SEL_ACTION_BACK;
	// Weitere Eigenschaften
	flags			= flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

INSTANCE FAKE_MENUITEM_MAIN_RESUME(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_RESUME_TITLE;
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_RESUME_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED | IT_TRANSPARENT |IT_MOVEABLE | IT_TXT_CENTER;		
};

//
// OPTIONS, INTRO & CREDITS
//

instance MENUITEM_MAIN_OPTIONS(C_MENU_ITEM_PANEL_DEF) 
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= MENU_MAIN_OPTS_TITLE;
	text[1]		= MENU_MAIN_OPTS_TEXT;
	
	posy		= MENU_MAIN_OPTS_Y;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_OPTIONS";
	// Weitere Eigenschaften
	flags			= flags | IT_TXT_CENTER;
};

INSTANCE FAKE_MENUITEM_MAIN_OPTIONS(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_OPTS_TITLE;
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_OPTS_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED | IT_TRANSPARENT |IT_MOVEABLE | IT_TXT_CENTER;		
};

//
// EXIT
//


INSTANCE MENUITEM_MAIN_EXIT(C_MENU_ITEM_PANEL_DEF) 
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= MENU_MAIN_QUIT_TITLE;
	text[1]		= MENU_MAIN_QUIT_TEXT;
	
	posy		= MENU_MAIN_QUIT_Y;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_STARTMENU;
	onSelAction_S[0]= "MENU_LEAVE_GAME";
	// Weitere Eigenschaften
	flags			= flags | IT_TXT_CENTER;
};

INSTANCE FAKE_MENUITEM_MAIN_EXIT(C_MENU_ITEM_PANEL_DEF) 
{
	text[0]	=	MENU_MAIN_QUIT_TITLE;
	type		=	MENU_ITEM_TEXT;
	
	posy		=	MENU_MAIN_QUIT_Y;
	
	// Weitere Eigenschaften
	flags	=	IT_CHROMAKEYED | IT_TRANSPARENT |IT_MOVEABLE | IT_TXT_CENTER;		
};

//
// Statische Items
//

INSTANCE MENUITEM_MAIN_HEADLINE2(C_MENU_ITEM_DEF) 
{
	backPic		= "Menu_Logo.tga";
	// Positionen  und Dimensionen	
	posx		= MENU_MAIN_LOGO_X;
	posy		= MENU_MAIN_LOGO_Y;	
	dimx		= MENU_MAIN_LOGO_WIDTH;
	dimy		= MENU_MAIN_LOGO_HEIGHT;
	
	// Weitere Eigenschaften
	alphaMode 		= "BLEND";	
	alpha			= 255;		
	flags			= flags | IT_TXT_CENTER;
	flags			= flags & ~IT_SELECTABLE;
};

INSTANCE MENUITEM_MAIN_HEADLINE(C_MENU_ITEM_DEF) 
{
	backPic		= "Menu_Logo_Shadow.tga";
	// Positionen  und Dimensionen	
	posx		= MENU_MAIN_LOGO_X;
	posy		= MENU_MAIN_LOGO_Y;	
	dimx		= MENU_MAIN_LOGO_WIDTH;
	dimy		= MENU_MAIN_LOGO_HEIGHT;	
	
	// Weitere Eigenschaften
	alphaMode		= "BLEND";	
	alpha			= 220;			
	flags			= flags | IT_TXT_CENTER;
	flags			= flags & ~IT_SELECTABLE;
};

INSTANCE MENUITEM_MAIN_OVERLAY(C_MENU_ITEM_DEF) 
{
	backPic		= "Menu_Overlay.tga";
	// Positionen  und Dimensionen	
	posx		= 0;
	posy		= 0;	
	dimx		= 8192;
	dimy		= 8192;
	
	// Weitere Eigenschaften
	alphaMode 		= "BLEND";	
	alpha			= 255;		
	flags			= flags | IT_TXT_CENTER;
	flags			= flags & ~IT_SELECTABLE;
};
