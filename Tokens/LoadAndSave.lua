------------------------------------------------------------------------------------------
-- LoadAndSave file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	local _settings = PatchDataLoad(dataScope, settingsFileName, settings);
    if (_settings ~= nil) then 
		settings = _settings; 
	end
------------------------------------------------------------------------------------------
--- adding new vars in the settings file ---
------------------------------------------------------------------------------------------
   if ( not settings.fishingProficiency or
        not settings.displayGoodLvl or
        not settings.todayDate or
        not settings.iconToDisplay or
        not settings.isOptionsWindowVisible 
        -- or not settings["displayToken"]["value1"]
        ) then
	    settings = {
            windowPosition = { 
                xPos = settings["windowPosition"]["xPos"], 
                yPos = settings["windowPosition"]["yPos"] 
            },
            IconPosition = { 
                xPosIcon = settings["IconPosition"]["xPosIcon"], 
                yPosIcon = settings["IconPosition"]["yPosIcon"] 
            },
            isMinimizeEnabled = { 
                isMinimizeEnabled = settings["isMinimizeEnabled"]["isMinimizeEnabled"] 
            },
            isWindowVisible = { 
                value = false 
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
                escEnable = settings["escEnable"]["escEnable"] 
            },
            altEnable = { 
                altEnable = settings["altEnable"]["altEnable"] 
            }
        };
   end
end
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveTokens()
    for i=1, nbrTokens do
        settings["displayToken"]["value"..i] = settings["displayToken"]["value"..i];
    end

	PatchDataSave( dataScope, settingsFileName, settings);
end
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings["windowPosition"]["xPos"] = tostring(Tokens:GetLeft());
    settings["windowPosition"]["yPos"] = tostring(Tokens:GetTop());
    settings["IconPosition"]["xPosIcon"] = tostring(MainMinimizedIcon:GetLeft());
   	settings["IconPosition"]["yPosIcon"] = tostring(MainMinimizedIcon:GetTop());
	settings["isMinimizeEnabled"]["isMinimizeEnabled"] = settings["isMinimizeEnabled"]["isMinimizeEnabled"];
	settings["isWindowVisible"]["isWindowVisible"] = settings["isWindowVisible"]["isWindowVisible"];
    settings["isOptionsWindowVisible"]["value"] = settings["isOptionsWindowVisible"]["value"];
    
    settings["verbose"]["value"] = settings["verbose"]["value"];
    settings["escEnable"]["escEnable"] = settings["escEnable"]["escEnable"];
    settings["altEnable"]["altEnable"] = settings["altEnable"]["altEnable"];

    for i=1, nbrTokens do
        settings["displayToken"]["value"..i] = settings["displayToken"]["value"..i];
    end
        
	PatchDataSave( dataScope, settingsFileName, settings);
end

------------------------------------------------------------------------------------------
-- create or load the settings for vault
------------------------------------------------------------------------------------------
function LoadPlayerWallet()
    PlayerWallet = PatchDataLoad(dataScope, walletFileName, PlayerWallet);
    if (PlayerWallet == nil)then 
        PlayerWallet = {}; 
    end
    if (PlayerWallet[PlayerName] == nil)then 
        PlayerWallet[PlayerName] = {}; 
    end
end

------------------------------------------------------------------------------------------
-- create or load the tokens
------------------------------------------------------------------------------------------
function LoadTokens()
    local _settings = PatchDataLoad(dataScope, settingsFileName, settings);
    if (_settings ~= nil) then 
		settings = _settings; 
	end

    for i=1, nbrTokens do
        settings["displayToken"]["value"..i] = settings["displayToken"]["value"..i];
    end
end
------------------------------------------------------------------------------------------
-- create the save settings for vault
------------------------------------------------------------------------------------------
function SavePlayerWallet()
    if ( string.sub( PlayerName, 1, 1 ) == "~" )then return end; --Ignore session play

    walletpackSize = walletpack:GetSize();

    PlayerWallet[PlayerName] = {};

    for slot = 1, walletpackSize do
        local ind = tostring(slot);
        PlayerWallet[PlayerName][ind] = walletpack:GetItem(slot);

        PlayerWallet[PlayerName][ind].D = tostring(PlayerWallet[PlayerName][ind]:GetDescription());
        PlayerWallet[PlayerName][ind].I = tostring(PlayerWallet[PlayerName][ind]:GetImage());
        PlayerWallet[PlayerName][ind].MQUA = tostring(PlayerWallet[PlayerName][ind]:GetMaxQuantity());
        PlayerWallet[PlayerName][ind].S = tostring(PlayerWallet[PlayerName][ind]:GetSmallImage());
        PlayerWallet[PlayerName][ind].A = tostring(PlayerWallet[PlayerName][ind]:IsAccountItem());
        PlayerWallet[PlayerName][ind].N = tostring(PlayerWallet[PlayerName][ind]:GetName());

        local tq = tostring(PlayerWallet[PlayerName][ind]:GetQuantity());
        --if (tq == "1" )then 
         --   tq = ""; 
       -- end

        PlayerWallet[PlayerName][ind].QUA = tq;
        PlayerWallet[PlayerName][ind].WSIZE = tostring(walletpackSize);
    end

    PatchDataSave( dataScope, walletFileName, PlayerWallet);
end

function SaveTokenNames()
    if ( string.sub( PlayerName, 1, 1 ) == "~" )then return end; --Ignore session play

    walletpackSize = walletpack:GetSize();

    TokenNames = {};

    for slot = 1, walletpackSize do
        local ind = tostring(slot);
        TokenNames[ind] = walletpack:GetItem(ind);
        TokenNames[ind] = tostring(TokenNames[ind]:GetName());
    end

    -- to get all the names of the tokens
    if GLocale == "de" then 
        PatchDataSave( Turbine.DataScope.Character, "TokensNamesDE", TokenNames);
    end
	if GLocale == "en" then 
        PatchDataSave( Turbine.DataScope.Character, "TokensNamesEN", TokenNames);
    end
	if GLocale == "fr" then 
        PatchDataSave( Turbine.DataScope.Character, "TokensNamesFR", TokenNames);
    end
end