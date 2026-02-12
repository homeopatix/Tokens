------------------------------------------------------------------------------------------
-- Init file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Plugin's name --
------------------------------------------------------------------------------------------
pluginName = "Tokens";
------------------------------------------------------------------------------------------
-- File names --
------------------------------------------------------------------------------------------
settingsFileName = "Tokens_Settings";
walletFileName = "TokensWallet_Settings";
------------------------------------------------------------------------------------------
-- datascope --
------------------------------------------------------------------------------------------
dataScope = Turbine.DataScope.Character;
--dataScope = Turbine.DataScope.Server;
------------------------------------------------------------------------------------------
-- Default settings --
------------------------------------------------------------------------------------------
settings = {
    windowPosition = { 
        xPos = 500, 
        yPos = 500 
    },
    IconPosition = { 
        xPosIcon = 500, 
        yPosIcon = 500 
    },
    isMinimizeEnabled = { 
        isMinimizeEnabled = false 
    },
    isWindowVisible = { 
        value = true 
    },
    isOptionsWindowVisible = { 
        value = false 
    },
    verbose = { 
        value = false 
    },
    displayToken = { 
        value1 = false,
        value2 = false,
        value3 = false,
        value4 = false,
        value5 = false,
        value6 = false,
        value7 = false,
        value8 = false,
        value9 = false,
        value10 = false,
        value11 = false,
        value12 = false,
        value13 = false,
        value14 = false,
        value15 = false,
        value16 = false,
        value17 = false,
        value18 = false,
        value19 = false,
        value20 = false,
        value21 = false,
        value22 = false,
        value23 = false,
        value24 = false,
        value25 = false,
        value26 = false,
        value27 = false,
        value28 = false,
        value29 = false,
        value30 = false,
        value31 = false,
        value32 = false,
        value33 = false,
        value34 = false,
        value35 = false,
        value36 = false,
        value37 = false,
        value38 = false,
        value39 = false,
        value40 = false,
        value41 = false,
        value42 = false,
        value43 = false,
        value44 = false,
        value45 = false,
        value46 = false,
        value47 = false,
        value48 = false,
        value49 = false,
        value50 = false,
        value51 = false,
        value52 = false,
        value53 = false,
        value54 = false,
        value55 = false,
        value56 = false,
        value57 = false,
        value58 = false,
        value59 = false,
        value60 = false,
        value61 = false,
        value62 = false,
        value63 = false,
        value64 = false,
        value65 = false,
        value66 = false,
        value67 = false,
        value68 = false,
        value69 = false,
        value70 = false,
        value71 = false,
        value72 = false,
        value73 = false,
        value74 = false,
        value75 = false,
        value76 = false,
        value77 = false,
        value78 = false,
        value79 = false,
        value80 = false,
        value81 = false,
        value82 = false,
        value83 = false,
        value84 = false,
        value85 = false,
        value86 = false,
        value87 = false,
        value88 = false,
        value89 = false,
        value90 = false,
        value91 = false,
        value92 = false,
        value93 = false,
        value94 = false,
        value95 = false,
        value96 = false,
        value97 = false,
        value98 = false,
        value99 = false,
        value100 = false,
        value101 = false,
        value102 = false,
        value103 = false,
        value104 = false,
        value105 = false,
        value106 = false,
        value107 = false,
        value108 = false,
        value109 = false,
        value110 = false,
        value111 = false,
        value112 = false,
        value113 = false,
        value114 = false,
        value115 = false,
        value116 = false,
        value117 = false,
        value118 = false,
        value119 = false,
        value120 = false,
        value121 = false,
        value122 = false,
        value123 = false,
        value124 = false,
        value125 = false,
        value126 = false,
        value127 = false,
        value128 = false,
        value129 = false,
        value130 = false,
        value131 = false,
        value132 = false,
        value133 = false,
        value134 = false,
        value135 = false,
        value136 = false,
        value137 = false,
        value138 = false,
        value139 = false,
        value140 = false
    },
    escEnable = { 
        escEnable = true 
    },
    altEnable = { 
        altEnable = true 
    }
};
------------------------------------------------------------------------------------------
-- Resources settings --
------------------------------------------------------------------------------------------
ResourcePath = "Homeopatix/Tokens/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Tokens.tga",
};
------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    orange = "<rgb=#EE8F12>",
    white = "<rgb=#FFFFFF>",
    green = "<rgb=#1FE126>",
    blue = "<rgb=#1FCDE1>",
    purple = "<rgb=#9B41CE>",
    yellow = "<rgb=#FFFF00>",
    grey = "<rgb=#C7C7BE>",
    red = "<rgb=#FF0000>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
------------------------------------------------------------------------------------------
-- Load settings --
------------------------------------------------------------------------------------------
LoadSettings();