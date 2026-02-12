------------------------------------------------------------------------------------------
-- OptionWindow file
-- Written by Homeopatix
-- 26 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define size of the window
------------------------------------------------------------------------------------------
local windowWidth = 0;
local windowHeight = 0;

-- windowWidth = 2130;
windowWidth = 1900;
windowHeight = 1000;
------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
function GenerateOptionsWindowTokens()
		OptionsWindowTokens=Turbine.UI.Lotro.GoldWindow(); 
		OptionsWindowTokens:SetSize(windowWidth, windowHeight); 
		OptionsWindowTokens:SetText(T[ "PluginOptionsText" ]); 

		OptionsWindowTokens.Message=Turbine.UI.Label(); 
		OptionsWindowTokens.Message:SetParent(OptionsWindowTokens); 
		OptionsWindowTokens.Message:SetSize(150,10); 
		OptionsWindowTokens.Message:SetPosition(windowWidth/2 - 75, windowHeight - 17 ); 
		OptionsWindowTokens.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindowTokens.Message:SetText(T[ "PluginText" ]); 
		
		OptionsWindowTokens:SetZOrder(0);
		OptionsWindowTokens:SetWantsKeyEvents(true);

		OptionsWindowTokens:SetPosition((Turbine.UI.Display:GetWidth()-OptionsWindowTokens:GetWidth())/2,(Turbine.UI.Display:GetHeight()-OptionsWindowTokens:GetHeight())/2);

		OptionsWindowTokens:SetVisible(false);
		------------------------------------------------------------------------------------------
		-- option center panel --
		------------------------------------------------------------------------------------------
		posx = 50;
		posy = 60;
		heightMax = 850;

		colorUsedFortexte = Turbine.UI.Color.Lime;
		colorUsedForLines = Turbine.UI.Color.Blue;

		TitleDisplayer(OptionsWindowTokens, OptionsWindowTokens:GetWidth()/2 - (OptionsWindowTokens:GetWidth()/2 - 50), posy - 15, T[ "PluginOptionTokens1" ], colorUsedFortexte, colorUsedForLines, OptionsWindowTokens:GetWidth() - 100);

		posy = posy + 10;

		OptionsWindowTokens.Message=Turbine.UI.Label(); 
			OptionsWindowTokens.Message:SetParent(OptionsWindowTokens); 
			OptionsWindowTokens.Message:SetSize(800, 30); 
			OptionsWindowTokens.Message:SetPosition(OptionsWindowTokens:GetWidth()/2 - 400, posy - 15 ); 
			OptionsWindowTokens.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
			OptionsWindowTokens.Message:SetFont(Turbine.UI.Lotro.Font.Verdana14);
			OptionsWindowTokens.Message:SetText(T[ "PluginOptionTokens0" ]); 

			checkBoxToken = {};
			checkBoxTokenPaysage = {};
			checkBoxTokenFestival = {};
			checkBoxTokenProgression = {};
			checkBoxTokenAutres = {};
			checkBoxTokenArtisanats = {};
			checkBoxTokenTaxidermiste = {};
			checkBoxTokenInstances = {};
			checkBoxTokenMonnaie = {};

			posy = posy + 45;

			colorUsedFortexte = Turbine.UI.Color.Gold;
			colorUsedForLines = Turbine.UI.Color.Green;

			--[[
			listbox = Turbine.UI.ListBox();
			listbox:SetParent( OptionsWindowTokens );
			--listbox:SetBackColor( Turbine.UI.Color.Red );
			listbox:SetSize(windowWidth - 45, windowHeight - 100);
			listbox:SetPosition(20, 70);
			listbox:IsMouseVisible(true);
			listbox:SetZOrder(10);
			]]--
			-------------------------------------------------------------------
			-- first tokens -- Piece
			-------------------------------------------------------------------
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent1" ], colorUsedFortexte, colorUsedForLines, 280);
			
			--posx = 5;
			--posy = 5;
			posy = posy + 45;
			inc = 1 ; --incrementor
			for i=1, nbrTokensPiece do

				nameTmp = "TokenPiece" .. i;
				
				checkBoxToken[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxToken[i]:SetParent( OptionsWindowTokens );
				checkBoxToken[i]:SetSize(280, 30); 
				checkBoxToken[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxToken[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxToken[i]:SetPosition(posx + 10, posy);
				checkBoxToken[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxToken[i]:SetChecked(true);
				else
					checkBoxToken[i]:SetChecked(false);
				end
				checkBoxToken[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Paysage
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent2" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensPaysage do

				nameTmp = "TokenPaysage" .. i;
				
				checkBoxTokenPaysage[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenPaysage[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenPaysage[i]:SetSize(280, 30); 
				checkBoxTokenPaysage[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenPaysage[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenPaysage[i]:SetPosition(posx + 10, posy);
				checkBoxTokenPaysage[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenPaysage[i]:SetChecked(true);
				else
					checkBoxTokenPaysage[i]:SetChecked(false);
				end
				checkBoxTokenPaysage[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Festival
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent3" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensFestival do

				nameTmp = "TokenFestival" .. i;
				
				checkBoxTokenFestival[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenFestival[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenFestival[i]:SetSize(280, 30); 
				checkBoxTokenFestival[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenFestival[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenFestival[i]:SetPosition(posx + 10, posy);
				checkBoxTokenFestival[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenFestival[i]:SetChecked(true);
				else
					checkBoxTokenFestival[i]:SetChecked(false);
				end
				checkBoxTokenFestival[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Progression
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent4" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensProgression do

				nameTmp = "TokenProgression" .. i;
				
				checkBoxTokenProgression[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenProgression[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenProgression[i]:SetSize(280, 30); 
				checkBoxTokenProgression[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenProgression[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenProgression[i]:SetPosition(posx + 10, posy);
				checkBoxTokenProgression[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenProgression[i]:SetChecked(true);
				else
					checkBoxTokenProgression[i]:SetChecked(false);
				end
				checkBoxTokenProgression[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Autres
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent5" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensAutres do

				nameTmp = "TokenAutres" .. i;
				
				checkBoxTokenAutres[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenAutres[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenAutres[i]:SetSize(280, 30); 
				checkBoxTokenAutres[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenAutres[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenAutres[i]:SetPosition(posx + 10, posy);
				checkBoxTokenAutres[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenAutres[i]:SetChecked(true);
				else
					checkBoxTokenAutres[i]:SetChecked(false);
				end
				checkBoxTokenAutres[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Artisanats
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent6" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensArtisanats do

				nameTmp = "TokenArtisanats" .. i;
				
				checkBoxTokenArtisanats[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenArtisanats[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenArtisanats[i]:SetSize(280, 30); 
				checkBoxTokenArtisanats[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenArtisanats[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenArtisanats[i]:SetPosition(posx + 10, posy);
				checkBoxTokenArtisanats[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenArtisanats[i]:SetChecked(true);
				else
					checkBoxTokenArtisanats[i]:SetChecked(false);
				end
				checkBoxTokenArtisanats[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Taxidermiste
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent7" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensTaxidermiste do

				nameTmp = "TokenTaxidermiste" .. i;
				
				checkBoxTokenTaxidermiste[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenTaxidermiste[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenTaxidermiste[i]:SetSize(280, 30); 
				checkBoxTokenTaxidermiste[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenTaxidermiste[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenTaxidermiste[i]:SetPosition(posx + 10, posy);
				checkBoxTokenTaxidermiste[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenTaxidermiste[i]:SetChecked(true);
				else
					checkBoxTokenTaxidermiste[i]:SetChecked(false);
				end
				checkBoxTokenTaxidermiste[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Instances
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent8" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensInstances do

				nameTmp = "TokenInstances" .. i;
				
				checkBoxTokenInstances[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenInstances[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenInstances[i]:SetSize(280, 30); 
				checkBoxTokenInstances[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenInstances[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenInstances[i]:SetPosition(posx + 10, posy);
				checkBoxTokenInstances[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenInstances[i]:SetChecked(true);
				else
					checkBoxTokenInstances[i]:SetChecked(false);
				end
				checkBoxTokenInstances[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
				
				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------

			-------------------------------------------------------------------
			-- first tokens -- Monnaie
			-------------------------------------------------------------------
			posy = posy + 25;
			TitleDisplayer(OptionsWindowTokens, posx, posy, T[ "TokenContent9" ], colorUsedFortexte, colorUsedForLines, 280);
			posy = posy + 25;
			for i=1, nbrTokensMonnaie do

				nameTmp = "TokenMonnaie" .. i;
				
				checkBoxTokenMonnaie[i] = Turbine.UI.Lotro.CheckBox();
				checkBoxTokenMonnaie[i]:SetParent( OptionsWindowTokens );
				checkBoxTokenMonnaie[i]:SetSize(280, 30); 
				checkBoxTokenMonnaie[i]:SetFont(Turbine.UI.Lotro.Font.Verdana14);
				checkBoxTokenMonnaie[i]:SetText(" " .. T[ nameTmp ]);
				checkBoxTokenMonnaie[i]:SetPosition(posx + 10, posy);
				checkBoxTokenMonnaie[i]:SetVisible(true);
				if(settings["displayToken"]["value" .. inc] == true)then
					checkBoxTokenMonnaie[i]:SetChecked(true);
				else
					checkBoxTokenMonnaie[i]:SetChecked(false);
				end
				checkBoxTokenMonnaie[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

				if(posy > heightMax)then
					-- posx = posx + 350;
					posx = posx + 300;
					posy = 105;
				else
					posy = posy + 30;
				end
				inc = inc + 1;
			end
			-------------------------------------------------------------------


			posy = posy + 50;
			
			buttonValider = Turbine.UI.Lotro.GoldButton();
			buttonValider:SetParent( OptionsWindowTokens );
			buttonValider:SetPosition(windowWidth/2 - 350,  windowHeight - 50);
			buttonValider:SetSize( 300, 20 );
			buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana14);
			buttonValider:SetText( T[ "PluginOptionValidate" ] );
			buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			buttonValider:SetVisible(true);
			buttonValider:SetMouseVisible(true);

			buttonDelete = Turbine.UI.Lotro.GoldButton();
			buttonDelete:SetParent( OptionsWindowTokens );
			buttonDelete:SetPosition(windowWidth/2 + 50,  windowHeight - 50);
			buttonDelete:SetSize( 300, 20 );
			buttonDelete:SetFont(Turbine.UI.Lotro.Font.Verdana14);
			buttonDelete:SetText( T[ "PluginOptionDelete" ] );
			buttonDelete:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			buttonDelete:SetVisible(true);
			buttonDelete:SetMouseVisible(true);


		ValidateChangesOptionsTokens();
		ClosingTheWindowOptionsTokens();
		DeleteAllTokens();

		hudVisible=true; -- the actual HUD state is not exposed to Lua so we have to assume the HUD is visible when the plugin loads
		if(settings["isOptionsWindowVisible"]["value"] == true)then
			UIWindowVisible=true;
		else
			UIWindowVisible=false;
		end-- used to retain the state of the window for when the HUD is toggled back on

		OptionsWindowTokens.KeyDown=function(sender, args)
			if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then -- hide the window due to Escape
				OptionsWindowTokens:SetVisible( false );
				settings["isOptionsWindowVisible"]["value"] = false;
			end

			if ( args.Action == 268435635 ) then -- toggle HUD (the HUD action is not defined in the Turbine.UI.Lotro.Action enumeration although it should be)
				hudVisible=not hudVisible;
				if hudVisible then
					OptionsWindowTokens:SetVisible(UIWindowVisible);
				else
					UIWindowVisible=OptionsWindowTokens:IsVisible();
					OptionsWindowTokens:SetVisible(false);
				end
			end
		end
end
function DeleteAllTokens()
	buttonDelete.MouseClick = function(sender, args)
		Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginClear" ]);
		OptionsWindowTokens:SetVisible( false );

		for i=1, nbrTokens do
			settings["displayToken"]["value"..i] = false;
		end
		GenerateOptionsWindowTokens();
		OptionsWindowTokens:SetVisible( true );
	end
end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function ValidateChangesOptionsTokens()
	buttonValider.MouseClick = function(sender, args)
			inc = 1; -- incrementor
			for i=1, nbrTokensPiece do
				if (checkBoxToken[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensPaysage do
				if (checkBoxTokenPaysage[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensFestival do
				if (checkBoxTokenFestival[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensProgression do
				if (checkBoxTokenProgression[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensAutres do
				if (checkBoxTokenAutres[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensArtisanats do
				if (checkBoxTokenArtisanats[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensTaxidermiste do
				if (checkBoxTokenTaxidermiste[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensInstances do
				if (checkBoxTokenInstances[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end
			for i=1, nbrTokensMonnaie do
				if (checkBoxTokenMonnaie[i]:IsChecked()) then
					settings["displayToken"]["value" .. inc] = true;
				else
					settings["displayToken"]["value" .. inc] = false;
				end
				inc = inc + 1;
			end

			OptionsWindowTokens:SetVisible(false);
			settings["isOptionsWindowVisible"]["value"] = false;
			UpdateMainWindow();
		end
		SaveTokens();
end
