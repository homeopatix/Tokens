------------------------------------------------------------------------------------------
-- FCT file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Position changed window
------------------------------------------------------------------------------------------
function PositionChangedWindow()
	------------------------------------------------------------------------------------------
	-- if the position changes, save the new window location
	------------------------------------------------------------------------------------------
	Tokens.PositionChanged = function( sender, args )
    	local x,y = Tokens:GetPosition();
    	settings["windowPosition"]["xPos"] = x;
    	settings["windowPosition"]["yPos"] = y;
	end
end
------------------------------------------------------------------------------------------
-- split strings function
------------------------------------------------------------------------------------------
function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function Tokens:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		T[ "PluginHelp1" ] ..
		rgb["clear"] ..
		T[ "PluginHelp2" ] ..
		T[ "PluginHelp3" ] ..
		T[ "PluginHelp4" ] ..
		T[ "PluginHelp5" ] ..
		T[ "PluginHelp6" ] ..
		T[ "PluginHelp7" ] ..
		T[ "PluginHelp8" ] ..
		T[ "PluginHelp9" ] 
	);
end
------------------------------------------------------------------------------------------
-- display the separatoer and the title of the materials
------------------------------------------------------------------------------------------
function TitleDisplayer(windowToDisplay, posx, posy, textToDisplay, textColor, LineColor, size)
	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	windowToDisplay.Message:SetSize(size, 30); 
	windowToDisplay.Message:SetPosition(posx, posy - 12); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiqua22);
	windowToDisplay.Message:SetText( textToDisplay ); 
	windowToDisplay.Message:SetForeColor(textColor);

	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	windowToDisplay.Message:SetSize(size, 30); 
	windowToDisplay.Message:SetPosition(posx, posy - 5); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
	windowToDisplay.Message:SetText("___________________________________________________________________________________"); 
	windowToDisplay.Message:SetForeColor(LineColor);
end

------------------------------------------------------------------------------------------
-- return table lenght
------------------------------------------------------------------------------------------
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
------------------------------------------------------------------------------------------
-- Updating the main window
------------------------------------------------------------------------------------------
function UpdateMainWindow()
	Tokens:SetVisible(false);
	CreateMainWindow();
	Tokens:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
end
------------------------------------------------------------------------------------------
-- auto token updater
------------------------------------------------------------------------------------------
function TokenUpdater()
	Tokens.Update = function(sender, args)
		if(UpdaterChecker <= 0)then
			UpdaterChecker = 250;
			-------------------------------------------------------------
			-- update the walletpack ------
			-------------------------------------------------------------
			--Write("-- Updating the wallet --");
			walletpack = Player:GetWallet();
			SavePlayerWallet();
			UpdateMainWindow();
		else
			UpdaterChecker = UpdaterChecker - 1;
		end
	end
end
------------------------------------------------------------------------------------------
-- Closing the options window handler
------------------------------------------------------------------------------------------
function ClosingTheWindowOptionsTokens()
	function OptionsWindowTokens:Closing(sender, args)
		settings["isOptionsWindowVisible"]["value"] = false;
	end
end
------------------------------------------------------------------------------------------
-- create the table of token for the UI
------------------------------------------------------------------------------------------
function CreatTableTmpOfTokens()
		local tableTmp = {};
			for i=1, nbrTokensPiece do
				valToInsert = "TokenPiece" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensPaysage do
				valToInsert = "TokenPaysage" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensFestival do
				valToInsert = "TokenFestival" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensProgression do
				valToInsert = "TokenProgression" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensAutres do
				valToInsert = "TokenAutres" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensArtisanats do
				valToInsert = "TokenArtisanats" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensTaxidermiste do
				valToInsert = "TokenTaxidermiste" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensInstances do
				valToInsert = "TokenInstances" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end
			for i=1, nbrTokensMonnaie do
				valToInsert = "TokenMonnaie" .. i;
				table.insert(tableTmp, T[ valToInsert ]);
			end

		return tableTmp;
	end
