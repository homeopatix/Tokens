------------------------------------------------------------------------------------------
-- Command file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
TokensCommand = Turbine.ShellCommand();
------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function TokensCommand:Execute( command, arguments )
-- Turn arguments to lower case characters --

	arguments = string.lower(arguments);
------------------------------------------------------------------------------------------
-- Help command--
------------------------------------------------------------------------------------------
	if ( arguments == "help" ) then
		commandsHelp();
------------------------------------------------------------------------------------------
-- show command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "show" ) then
		Tokens:SetVisible(true);
		settings["isWindowVisible"]["isWindowVisible"] = true;
------------------------------------------------------------------------------------------
-- hide command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "hide" ) then
		Tokens:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
------------------------------------------------------------------------------------------
-- toggle window command --
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings["isWindowVisible"]["isWindowVisible"] == true)then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowHide" ]);
			Tokens:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowShow" ]);
			Tokens:SetVisible(true);
			settings["isWindowVisible"]["isWindowVisible"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- esc command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "esc" ) then
		if(settings["escEnable"]["escEnable"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginEscDesable" ]);
			settings["escEnable"]["escEnable"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginEscEnable" ]);
			settings["escEnable"]["escEnable"] = true;
		end
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings["altEnable"]["altEnable"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltDesable" ]);
			settings["altEnable"]["altEnable"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltEnable" ]);
			settings["altEnable"]["altEnable"] = true;
		end
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if (settings["isWindowVisible"]["isWindowVisible"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginToggleOff" ]);
			Tokens:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginToggleOn" ]);
			Tokens:SetVisible(true);
			settings["isWindowVisible"]["isWindowVisible"] = true;
		end
------------------------------------------------------------------------------------------
-- clear command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "clear" ) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginClear" ]);
			Tokens:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;

			for i=1, nbrTokens do
				settings["displayToken"]["value"..i] = false;
			end
------------------------------------------------------------------------------------------
-- debug command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "debug" ) then
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginDebugOn" ]);
			Write(T[ "PluginDebugTexte1" ]);
			Write(T[ "PluginDebugTexte2" ]);
			Write(T[ "PluginDebugTexte3" ]);
			Write(T[ "PluginDebugTexte4" ]);
			Write(rgb["gold"] ..  T[ "PluginDebugTexte5" ] .. rgb["clear"]);
			Write(T[ "PluginDebugTexte6" ]);
			Write(T[ "PluginDebugTexte7" ]);
			SaveTokenNames();
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. rgb["green"] .. T[ "PluginSave" ] .. rgb["clear"]);
------------------------------------------------------------------------------------------
-- options command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "options" ) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginOptionsWindowShow" ]);
			Tokens:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
			GenerateOptionsWindowTokens();
			OptionsWindowTokens:SetVisible(true);
			settings["isOptionsWindowVisible"]["value"] = true;
	end
end
------------------------------------------------------------------------------------------
-- Add command line --
------------------------------------------------------------------------------------------
Turbine.Shell.AddCommand( "Tok;Tokens", TokensCommand );
