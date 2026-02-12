------------------------------------------------------------------------------------------
-- librarys file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define librairies
------------------------------------------------------------------------------------------
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "Turbine.Gameplay";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Homeopatix.Tokens.Localization.GlobalsDE";
	GLocale = "de";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Homeopatix.Tokens.Localization.GlobalsFR";
	GLocale = "fr";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Homeopatix.Tokens.Localization.GlobalsEN";
	GLocale = "en";
end
------------------------------------------------------------------------------------------
-- Import Utility --
------------------------------------------------------------------------------------------
import "Homeopatix.Tokens.Notification";
import "Homeopatix.Tokens.LoadAndSave";
import "Homeopatix.Tokens.MinimizedIcon";
import "Homeopatix.Tokens.VindarPatch";
import "Homeopatix.Tokens.FCT";
------------------------------------------------------------------------------------------
-- Import initialization --
------------------------------------------------------------------------------------------
import "Homeopatix.Tokens.Init";
import "Homeopatix.Tokens.Activation";
import "Homeopatix.Tokens.PlayerStats";
------------------------------------------------------------------------------------------
-- Import Scripts --
------------------------------------------------------------------------------------------
import "Homeopatix.Tokens.Main";
------------------------------------------------------------------------------------------
-- Import UI elements --
------------------------------------------------------------------------------------------
import "Homeopatix.Tokens.UI";
import "Homeopatix.Tokens.OptionsWindow";
------------------------------------------------------------------------------------------
-- Import Commands --
------------------------------------------------------------------------------------------
import "Homeopatix.Tokens.Commands";