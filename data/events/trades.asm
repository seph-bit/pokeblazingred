MACRO npctrade
; give mon, get mon, dialog id, nickname
	db \1, \2, \3
	dname \4, NAME_LENGTH
ENDM

TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; TRADE_DIALOGSET_EVOLUTION did not refer to evolution in Japanese
	; Red/Green. Japanese Blue changed _AfterTrade2Text to say your Pokémon
	; "went and evolved" and also changed the trades to match. English
	; Red/Blue uses the original JP Red/Green trades but with the JP Blue
	; post-trade text. English Yellow changed _AfterTrade2Text to
	; not mention evolution.
	npctrade RAPIDASH,   CLEFABLE,   TRADE_DIALOGSET_CASUAL,    "JILL"
	npctrade DEWGONG,    MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL"
	npctrade BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU" ; unused
	npctrade GOLDUCK,    TAUROS,    TRADE_DIALOGSET_CASUAL,    "BEEF"
	npctrade PONYTA,     HAUNTER,   TRADE_DIALOGSET_HAPPY,     "SPOOK"
	npctrade ONIX,       LICKITUNG, TRADE_DIALOGSET_CASUAL,    "SLURP"
	npctrade POLIWHIRL,  MACHOKE,   TRADE_DIALOGSET_EVOLUTION, "SLAM"
	npctrade DODRIO,     KADABRA,   TRADE_DIALOGSET_EVOLUTION, "MAJICK"
	npctrade DRAGONAIR,  PORYGON,   TRADE_DIALOGSET_HAPPY,     "BOTTY"
	npctrade PERSIAN,    GRAVELER,  TRADE_DIALOGSET_HAPPY,     "ROUNDO"
	assert_table_length NUM_NPC_TRADES
