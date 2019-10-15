	
// *********************************************************************
// leave game menu
// *********************************************************************

INSTANCE MENU_LEAVE_GAME(C_MENU_WITH_FAKE_PANEL) 
{
	items[13]	= "MENUITEM_LEAVE_GAME_HEADLINE";	
	
	items[11]	= "MENUITEM_LEAVE_GAME_YES";
	items[12]	= "MENUITEM_LEAVE_GAME_NO";	
		
	defaultOutGame	= 12;	// NEWGAME
	defaultInGame	= 12;	// SAVEGAME
};

INSTANCE MENUITEM_LEAVE_GAME_HEADLINE(C_MENU_ITEM_PANEL2_DEF) 
{
	//backPic		= "SECT_GAME_MENU_ITEM_BACKPIC.tga";
	text[0]		= "WYJŒÆ Z GRY?";   		
	type		= MENU_ITEM_TEXT;
	
	posy		= 3400;
	
	// Weitere Eigenschaften
	flags		=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_TXT_CENTER;		
};


INSTANCE MENUITEM_LEAVE_GAME_YES(C_MENU_ITEM_PANEL2_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Tak";
	text[1]		= "Tak, chcê zakoñczyæ grê."; // Kommentar
	
	posy		= 4400;	
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_CLOSE;
	onSelAction_S[0]= "LEAVE_GAME";
	// Weitere Eigenschaften
	flags			= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

INSTANCE MENUITEM_LEAVE_GAME_NO(C_MENU_ITEM_PANEL2_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Nie";
	text[1]		= "Nie, chcê graæ dalej."; // Kommentar
	
	posy		= 5000;	
	
	// Weitere Eigenschaften
	flags		= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};


	
// *********************************************************************
// new game menu
// *********************************************************************

INSTANCE MENU_NEW_GAME(C_MENU_WITH_FAKE_PANEL) 
{
	items[13]	= "MENUITEM_NEW_GAME_HEADLINE";	
	
	items[11]	= "MENUITEM_NEW_GAME_YES";
	items[12]	= "MENUITEM_NEW_GAME_NO";	
		
	defaultOutGame	= 11;	// really wanna start
	defaultInGame	= 12;	// pressed accidentally
	
};

INSTANCE MENUITEM_NEW_GAME_HEADLINE(C_MENU_ITEM_PANEL2_DEF) 
{
	text[0]		= "NAPRAWDE ZACZ¥Æ NOW¥ GRÊ?";
	type		= MENU_ITEM_TEXT;
	// Position und Dimension	
	
	posy		= 3400;
	
	// Weitere Eigenschaften
	flags		=	IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_TXT_CENTER;	
};


INSTANCE MENUITEM_NEW_GAME_YES(C_MENU_ITEM_PANEL2_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Tak";
	text[1]		= "Tak, to przeciez jasne."; // Kommentar
	
	// Position und Dimension	
	
	posy		= 4400;
	
	// Aktionen
	onSelAction[0]	= SEL_ACTION_CLOSE;
	onSelAction_S[0]= "NEW_GAME";
	// Weitere Eigenschaften
	flags			= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

INSTANCE MENUITEM_NEW_GAME_NO(C_MENU_ITEM_PANEL2_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Nie";
	text[1]		= "Nie! Pomy³ka!"; // Kommentar
	
	posy		= 5000;
	
	// Weitere Eigenschaften
	flags		= IT_CHROMAKEYED|IT_TRANSPARENT|IT_MOVEABLE|IT_SELECTABLE|IT_TXT_CENTER;
};

instance MENUITEM_MAIN_HIDE_VER(C_MENU_ITEM_PANEL2_DEF)
{
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "";
	onchgsetoption = "menuShowVersion";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
};

