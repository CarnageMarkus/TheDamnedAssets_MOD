// *********************************************************************
// audio options menu
// *********************************************************************

INSTANCE MENU_OPT_AUDIO(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3";
	items[12]		= "MENUITEM_AUDIO_HEADLINE";
		
	items[13]		= "MENUITEM_AUDIO_SFXVOL";
	items[14]		= "MENUITEM_AUDIO_SFXVOL_SLIDER";
		
	items[15]		= "MENUITEM_AUDIO_MUSICVOL";
	items[16]		= "MENUITEM_AUDIO_MUSICVOL_SLIDER";
	
	items[17]		= "MENUITEM_AUDIO_MUSIC";
	items[18]		= "MENUITEM_AUDIO_MUSIC_CHOICE";

	items[19]		= "MENUITEM_AUDIO_PROVIDER";
	items[20]		= "MENUITEM_AUDIO_PROVIDER_CHOICE";

	items[21]		= "MENUITEM_AUDIO_SPEEKER";
	items[22]		= "MENUITEM_AUDIO_SPEEKER_CHOICE";

	items[23]		= "MENUITEM_AUDIO_REVERB";
	items[24]		= "MENUITEM_AUDIO_REVERB_CHOICE";

	items[25]		= "MENUITEM_AUDIO_SAMPLERATE";
	items[26]		= "MENUITEM_AUDIO_SAMPLERATE_CHOICE";
	
	items[27]		= "MENUITEM_AUDIO_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};


INSTANCE MENUITEM_AUDIO_HEADLINE(C_MENU_ITEM_PANEL3_DEF) 
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "USTAWIENIA DèWI KU";
	type		= MENU_ITEM_TEXT;
	// Position und Dimension	
	posy		= MENU_TITLE_Y;
	// Weitere Eigenschaften
	flags		= flags & ~IT_SELECTABLE;
	flags		= flags | IT_TXT_CENTER;
};


//
// Sound-Volume
//

INSTANCE MENUITEM_AUDIO_SFXVOL(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Efekty i mowa";
	text[1]		= "G≥oúnoúÊ efektÛw düwiÍkowych i mowy."; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*0;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;
	// Weitere Eigenschaften		
	flags		=	flags | IT_EFFECTS_NEXT;
};


INSTANCE MENUITEM_AUDIO_SFXVOL_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{	
	backPic		= MENU_SLIDER_BACK_PIC;
	type		= MENU_ITEM_SLIDER;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*0;
	// Aktionen
	onChgSetOption													= "soundVolume";
	onChgSetOptionSection 											= "SOUND";	
	// Weitere Eigenschaften	
	userFloat[0]	= 20; // 20 Slider-Steps
	userString[0]	= MENU_SLIDER_POS_PIC;
	flags			= flags & ~IT_SELECTABLE;
};

//
// Musik-Volume
//

INSTANCE MENUITEM_AUDIO_MUSICVOL(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "G≥oúnoúÊ muzyki";
	text[1]		= "G≥oúnoúÊ muzyki w tle."; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*1;
	// Aktionen
	onSelAction[0]  =	SEL_ACTION_UNDEF;
	// Weitere Eigenschaften
	flags		=	flags | IT_EFFECTS_NEXT;
};

INSTANCE MENUITEM_AUDIO_MUSICVOL_SLIDER(C_MENU_ITEM_PANEL3_SLIDER_DEF)
{	
	backPic		= MENU_SLIDER_BACK_PIC;
	type		= MENU_ITEM_SLIDER;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*1;
	// Aktionen
	onChgSetOption													= "musicVolume";
	onChgSetOptionSection											= "SOUND";	
	// Weitere Eigenschaften
	userFloat[0]	= 15; // 20 Slider-Steps
	userString[0]	=	MENU_SLIDER_POS_PIC;
	flags			= flags & ~IT_SELECTABLE;
};


//
// Music on/off
//

instance MENUITEM_AUDIO_MUSIC(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Muzyka";
	text[1]		= "W≥πcza/wy≥πcza muzykÍ w tle."; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*2;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;	
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};


INSTANCE MENUITEM_AUDIO_MUSIC_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "wy≥.|w≥.";
	fontName	= 	MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*2;
	// Aktionen	
	onChgSetOption													= "musicEnabled";	
	onChgSetOptionSection 											= "SOUND";		
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};




//
// Provider
//




instance MENUITEM_AUDIO_PROVIDER(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "èrÛd≥o düwiÍku";
	text[1]		= "Zmiany uaktywniπ siÍ po ponownym uruchomieniu!"; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*3;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;	
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};

instance MENUITEM_AUDIO_PROVIDER_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "1|2|3|4|5";
	fontName	= 	MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*3;
	// Aktionen	
	onChgSetOption													= "soundProviderIndex";	
	onChgSetOptionSection 											= "INTERNAL";		
	onEventAction[EVENT_INIT] 	= Update_AudioOptions;
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;	
};

instance MENUITEM_AUDIO_SPEEKER(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "G≥oúniki";
	text[1]		= ""; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*4;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;	
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};

instance MENUITEM_AUDIO_SPEEKER_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "2 g≥oúniki|S≥uchawki|Surround|4 g≥oúniki";
	fontName	= 	MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*4;
	// Aktionen	
	onChgSetOption													= "soundSpeakerIndex";
	onChgSetOptionSection 											= "INTERNAL";		
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_TXT_CENTER | IT_PERF_OPTION;
};

instance MENUITEM_AUDIO_REVERB(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "Pog≥os";
	text[1]		= "W≥πcza pog≥os w jaskiniach (wymaga ponownego uruchomienia)."; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*5;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;	
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};

instance MENUITEM_AUDIO_REVERB_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "w≥.|wy≥.";
	fontName	= 	MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*5;
	// Aktionen	
	onChgSetOption												= "soundUseReverb";	
	onChgSetOptionSection 											= "SOUND";		
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_SAMPLERATE(C_MENU_ITEM_PANEL3_COL1_DEF)
{
	backpic		= MENU_ITEM_BACK_PIC;
	text[0]		= "PrÛbkowanie";
	text[1]		= "Zmiany uaktywniπ siÍ po ponownym uruchomieniu!"; // Kommentar
	
	// Position und Dimension	
	posy	 = MENU_START_Y + MENU_PANEL3_STEP*6;
	// Aktionen
	onSelAction[0]  = SEL_ACTION_UNDEF;	
	// Weitere Einstellungen
	flags		= flags | IT_EFFECTS_NEXT;	
};

instance MENUITEM_AUDIO_SAMPLERATE_CHOICE(C_MENU_ITEM_PANEL3_CHOICE_DEF)
{
	backPic		=	MENU_CHOICE_BACK_PIC;
	type		=	MENU_ITEM_CHOICEBOX;	
	text[0]		=   "22 khz|44 khz";
	fontName	= 	MENU_FONT_SMALL;
	// Position und Dimension	
	posy	 += MENU_START_Y + MENU_PANEL3_STEP*6;
	// Aktionen	
	onChgSetOption													= "soundSampleRateIndex";	
	onChgSetOptionSection 											= "INTERNAL";		
	// Weitere Eigenschaften	
	flags		= flags & ~IT_SELECTABLE;	
	flags		= flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

INSTANCE MENUITEM_AUDIO_BACK(C_MENU_ITEM_PANEL3_DEF)
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

func int Update_AudioOptions()
{
	Update_ChoiceBox("MENUITEM_AUDIO_PROVIDER_CHOICE");
	return 1;
};


func int Apply_AudioResolution()
{
	Apply_Options_Audio();
	return 0;
};

