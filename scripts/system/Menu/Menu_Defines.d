//
// Texturen
//

	// Menu
	const string MENU_PANEL_BACK_PIC 		= "Menu_Panel.tga"; 		// outgame/ingame
	const string MENU_BACK_PIC 			= "Menu_Panel2.tga"; 		// outgame/ingame
	const string MENU_SETTINGS_BACK_PIC	= "Menu_Panel2.tga"; 		// outgame/ingame
	const string MENU_ITEM_BACK_PIC 	= "";						// Hintergrund für alle anwählbaren Menüpunkte
	const string MENU_CHOICE_BACK_PIC	= "Menu_Choice_Back_Sect.tga";	// Hintergrund für Choicebox
	const string MENU_CHOICE_BACK_PIC2	= "Menu_Choice_Back_Sect_Wide.tga";	// Hintergrund für Choicebox
	const string MENU_SLIDER_BACK_PIC	= "menu_slider_back.tga";	// Hintergrund für Slider
	const string MENU_SLIDER_POS_PIC	= "menu_slider_pos.tga";	// Textur für Positionsanzeige eines Sliders
	const string MENU_INPUT_BACK_PIC 	= "";						// Hintergrund für Eingabefelder
	const string MENU_KBDINPUT_BACK_PIC = "";						// Hintergrund fürs Definieren der Controls
	const string MENU_SAVELOAD_BACK_PIC = "Menu_SaveLoad_Back.tga"; // menu_kbd_back.tga";		// Hintergrund fürs Definieren der Controls
	// Log
	const string LOG_BACK_PIC			= "Log_Back.tga";
	const string LOG_VIEWER_BACK_PIC	= "Log_Paper.tga";			// Hintergrund des Log-Betrachters
	// StaticScreen
	const string STAT_BACK_PIC			= "Status_Back.tga";		// Hintergrund

//
// Fonts
//
	
	// Menu
	const string MENU_FONT_DEFAULT		= "font_old_20_white.tga";
	const string MENU_FONT_SMALL		= "font_old_10_white.tga";
	const string MENU_FONT_BRIGHT		= "font_old_10_white_hi.tga";
	// Log
	const string LOG_FONT_DEFAULT		= "font_old_10_white.tga";
	const string LOG_FONT_VIEWER		= "font_old_10_white.tga";
	const string LOG_FONT_DATETIME		= "font_old_10_white_hi.tga";	
	// Stats Screen
	const string STAT_FONT_DEFAULT		= "font_old_10_white.tga";
	const string STAT_FONT_SKILL		= "font_old_10_white.tga";
	const string STAT_FONT_TITLE		= "font_old_10_white.tga";
	


//
// Dimensions
//
	// slider control
	const int MENU_SLIDER_DX			= 2000;
	const int MENU_SLIDER_DY			= 600;
	const int MENU_SLIDER_YPLUS			= 25;
	
	
	// choice box control
	const int MENU_CHOICE_DX			= 2000;
	const int MENU_CHOICE_DY			= 300;	
	const int MENU_CHOICE_YPLUS			= 125;
	
	
	const int MENU_TITLE_Y				= 1200;
	const int MENU_START_Y				= 2400;
	const int MENU_START_SOUND_Y		= 1800;
	const int MENU_BACK_Y				= 6500;	
	const int MENU_DY					= 650;
	
	const int MENU_INFO_X				= 0;
	const int MENU_INFO_Y				= 7780;
	

	// panel width
	const int MENU_MAIN_PANEL_WIDTH = 2048;
	// panel position
	const int MENU_MAIN_PANEL_X = 256;

	// logo
	const int MENU_MAIN_LOGO_Y = 400;
	const int MENU_MAIN_LOGO_X = 256 + 128;
	const int MENU_MAIN_LOGO_WIDTH = MENU_MAIN_PANEL_WIDTH - 256;
	const int MENU_MAIN_LOGO_HEIGHT = 512+256;
	
	// new game etc
	const int MENU_PANEL2_X_CENTER = 4096 + 1024;
	const int MENU_PANEL2_Y_CENTER = 4096;
	
	const int MENU_PANEL2_WIDTH = 4096;
	const int MENU_PANEL2_HEIGHT = 4096;
	
	const int MENU_PANEL2_X = MENU_PANEL2_X_CENTER - (MENU_PANEL2_WIDTH / 2);
	const int MENU_PANEL2_Y = MENU_PANEL2_Y_CENTER - (MENU_PANEL2_HEIGHT / 2);
	
	// options
	const int MENU_PANEL3_X_CENTER = 4096 + 1024;
	const int MENU_PANEL3_Y_CENTER = 4096;
	
	const int MENU_PANEL3_WIDTH = 4096 + 1024;
	const int MENU_PANEL3_HEIGHT = 4096 + 2048 + 512;
	
	const int MENU_PANEL3_X = MENU_PANEL3_X_CENTER - (MENU_PANEL3_WIDTH / 2);
	const int MENU_PANEL3_Y = MENU_PANEL3_Y_CENTER - (MENU_PANEL3_HEIGHT / 2);
	
	const int MENU_PANEL3_STEP = 550;

	// panel 3 two column layout
	const int MENU_PANEL3_COL1_WIDTH = MENU_PANEL3_WIDTH / 2;
	const int MENU_PANEL3_COL2_WIDTH = MENU_PANEL3_WIDTH / 4;
	const int MENU_PANEL3_MARGIN = (MENU_PANEL3_WIDTH / 8);
	const int MENU_PANEL3_COL1_X = MENU_PANEL3_X + MENU_PANEL3_MARGIN;
	const int MENU_PANEL3_COL2_X = MENU_PANEL3_X + MENU_PANEL3_WIDTH - MENU_PANEL3_COL2_WIDTH - MENU_PANEL3_MARGIN;


	// menu items y position start
	const int MENU_MAIN_Y = 2500;
	// menu items y position increments
	const int MENU_MAIN_DY = 550;
	
	

	const int MENU_MAIN_NEW_Y				= MENU_MAIN_Y + MENU_MAIN_DY*0;
	const string MENU_MAIN_NEW_TITLE		= "Nowa gra";
	const string MENU_MAIN_NEW_TEXT		= "Rozpocznij now¹ przygodê.";
	
	const int MENU_MAIN_LOAD_Y			= MENU_MAIN_Y + MENU_MAIN_DY*1;
	const string MENU_MAIN_LOAD_TITLE		= "Wczytaj";
	const string MENU_MAIN_LOAD_TEXT		= "Wczytaj zapisan¹ grê.";
	
	const int MENU_MAIN_SAVE_Y			= MENU_MAIN_Y + MENU_MAIN_DY*2;
	const string MENU_MAIN_SAVE_TITLE		= "Zapisz";
	const string MENU_MAIN_SAVE_TEXT		= "Zapisz bie¿¹c¹ grê.";
	
	const int MENU_MAIN_RESUME_Y			= MENU_MAIN_Y + MENU_MAIN_DY*3;
	const string MENU_MAIN_RESUME_TITLE	= "Dalej";
	const string MENU_MAIN_RESUME_TEXT		= "Powrót do gry.";
	
	const int MENU_MAIN_OPTS_Y			= MENU_MAIN_Y + MENU_MAIN_DY*4;
	const string MENU_MAIN_OPTS_TITLE		= "Ustawienia";
	const string MENU_MAIN_OPTS_TEXT		= "Ustawienia dŸwiêku, grafiki i klawiatury.";
	
	const int MENU_MAIN_QUIT_Y			= MENU_MAIN_Y + MENU_MAIN_DY*5;
	const string MENU_MAIN_QUIT_TITLE		= "Wyjœcie";
	const string MENU_MAIN_QUIT_TEXT		= "Powrót do odch³ani systemu Windows.";
	
//
// Texts (muss in die Text.d)
//

	const string MENU_TEXT_NEEDS_APPLY		= "";
	const string MENU_TEXT_NEEDS_RESTART	= "Einige Einstellungen werden erst nach einem Neustart aktiv";
