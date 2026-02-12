------------------------------------------------------------------------------------------
-- UI file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateMainWindow()
	local windowWidth = 405;
	local heightWind = 120;

	local tokensToDisplay = 0;

	for x = 1, nbrTokens do
		if(settings["displayToken"]["value" .. x] == true)then
			tokensToDisplay = tokensToDisplay + 1;
		end
	end

	heightWind = (tokensToDisplay * 38) + 100;

	if(heightWind > 800)then
		heightWind = 800;
		windowWidth = 435;
	end

	colorUsedFortexte = Turbine.UI.Color.White;
	colorUsedForLines1 = Turbine.UI.Color.Gold;

	Tokens=Turbine.UI.Lotro.GoldWindow(); 
	Tokens:SetSize(windowWidth, heightWind); 
	Tokens:SetText(T[ "PluginName" ]); 
	Tokens.Message11=Turbine.UI.Label(); 
	Tokens.Message11:SetParent(Tokens); 
	Tokens.Message11:SetSize(150,10); 
	Tokens.Message11:SetPosition(Tokens:GetWidth()/2 - 75, Tokens:GetHeight() - 18); 
	Tokens.Message11:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	Tokens.Message11:SetText(T[ "PluginText" ]); 
	Tokens:SetZOrder(1);
	Tokens:SetMouseVisible(true);
	Tokens:SetWantsKeyEvents(true);
	Tokens:SetWantsUpdates(true);

	Tokens:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

	TokenUpdater();

	local nbrItemInWallet = 0;

	if(PlayerWallet[PlayerName] ~= nil)then
		for i in pairs(PlayerWallet[PlayerName]) do
			nbrItemInWallet = nbrItemInWallet + 1 ;
		end
		------------------------------------------------------------------------------------------
		-- sorting the table by alphabetical order
		------------------------------------------------------------------------------------------
		a = {};
		for i in pairs(PlayerWallet[PlayerName]) do
			table.insert(a, PlayerWallet[PlayerName][tostring(i)].N);
		end
		table.sort(a)

		newtable = {};
		for j in pairs(a) do
			for i=1, nbrItemInWallet do
				if(a[j] == PlayerWallet[PlayerName][tostring(i)].N)then
					newtable[j] = i;
					break;
				end
			end
		end
	end

	centerWindow = {};
	centerWindowName = {};
	ButtonPlusCash = {};
	centerLabelCash = {};
	centerLabelCash2 = {};
	centerLabelCash3 = {};
	centerLabelCash4 = {};

	tableTmp = {};
	tableTmp = CreatTableTmpOfTokens();
	ListTokens = {};

	for x = 1, tablelength(tableTmp) do
		if(settings["displayToken"]["value" .. x] == true)then
			table.insert(ListTokens, tableTmp[x]);
		end
	end

	listbox = Turbine.UI.ListBox();
    listbox:SetParent( Tokens );
    --listbox:SetBackColor( Turbine.UI.Color.Red );
	heightSizeOfMap = tokensToDisplay * 38;
	heightSizeOfMapTotal = heightSizeOfMap;

	if(((tokensToDisplay * 38) + 10) < 700)then
		heightSizeOfMap = (tokensToDisplay * 38) + 10;
	else
		heightSizeOfMap = 700;
	end

	listbox:SetSize(windowWidth - 45, heightSizeOfMap);
	listbox:SetPosition(20, 50);
	listbox:IsMouseVisible(true);
	listbox:SetZOrder(20);

	local posx = 10;
	local posy = 5;
	if(PlayerName ~= "")then
		for i=1, nbrItemInWallet do  
		--Write(PlayerWallet[PlayerName][tostring(newtable[i])].N);
		--------------------------------------------------	
			for y = 1, tablelength(ListTokens) do
				if(PlayerWallet[PlayerName][tostring(newtable[i])].N == ListTokens[y])then
					listItem = Turbine.UI.Control();
					listItem:SetSize( 400, 38 );
					listItem:SetMouseVisible(true);

					centerWindow[i] = Turbine.UI.Control();
					centerWindow[i]:SetSize( 32 , 32 );
					centerWindow[i]:SetParent( listItem );
					centerWindow[i]:SetPosition( posx, posy);
					centerWindow[i]:SetVisible( true );

					centerWindowName[i] = Turbine.UI.Control();
					centerWindowName[i]:SetSize( 350 , 32 );
					centerWindowName[i]:SetParent( listItem );
					centerWindowName[i]:SetPosition( posx + 45, posy);
					centerWindowName[i]:SetVisible( true );

					itemTmp2 = Turbine.UI.Control();
					itemTmp2:SetParent( centerWindow[i] );
					itemTmp2:SetSize( 32, 32 );
					itemTmp2:SetPosition( 1, 1 );
					itemTmp2:SetZOrder(centerWindow[i]:GetZOrder() + 1);
					itemTmp2:SetBlendMode( Turbine.UI.BlendMode.Overlay );
					itemTmp2:SetVisible( true );

					itemTmp4 = Turbine.UI.Control();
					itemTmp4:SetParent( centerWindow[i] );
					itemTmp4:SetSize( 32, 32 );
					itemTmp4:SetPosition( 1, 1 );
					itemTmp4:SetZOrder(centerWindow[i]:GetZOrder() + 1);
					itemTmp4:SetBackground(tonumber(PlayerWallet[PlayerName][tostring(newtable[i])].I));
					itemTmp4:SetBlendMode( Turbine.UI.BlendMode.Overlay );
					itemTmp4:SetVisible( true );


					-- display small label with description
					ButtonPlusCash[i] = Turbine.UI.Extensions.SimpleWindow();
					ButtonPlusCash[i]:SetParent( listItem );
					ButtonPlusCash[i]:SetPosition(posx + 120 , Tokens:GetHeight() - 250);
					ButtonPlusCash[i]:SetSize( 300, 300 );
					ButtonPlusCash[i]:SetVisible(false);
					ButtonPlusCash[i]:SetZOrder(20);
					ButtonPlusCash[i]:SetBackground(ResourcePath .. "/Cadre_300_300.tga");

					centerLabelCash[i] = Turbine.UI.Label();
					centerLabelCash[i]:SetParent(ButtonPlusCash[i]);
					centerLabelCash[i]:SetPosition( 10, 50 );
					centerLabelCash[i]:SetSize( 280, 280 );
					centerLabelCash[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiqua18);
					centerLabelCash[i]:SetText( PlayerWallet[PlayerName][tostring(newtable[i])].D );
					centerLabelCash[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
					centerLabelCash[i]:SetZOrder(21);

					centerLabelCash2[i] = Turbine.UI.Label();
					centerLabelCash2[i]:SetParent(ButtonPlusCash[i]);
					centerLabelCash2[i]:SetPosition( 5, 5 );
					centerLabelCash2[i]:SetSize( 32, 32  );
					centerLabelCash2[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiqua18);
					centerLabelCash2[i]:SetText( "" );
					centerLabelCash2[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
					centerLabelCash2[i]:SetBackground(tonumber(PlayerWallet[PlayerName][tostring(newtable[i])].I));
					centerLabelCash2[i]:SetBlendMode( Turbine.UI.BlendMode.Overlay );
					centerLabelCash2[i]:SetZOrder(21);

					centerLabelCash3[i] = Turbine.UI.Label();
					centerLabelCash3[i]:SetParent(ButtonPlusCash[i]);
					centerLabelCash3[i]:SetPosition( 40, 5 );
					centerLabelCash3[i]:SetSize( 260, 32  );
					centerLabelCash3[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiqua18);
					centerLabelCash3[i]:SetText(PlayerWallet[PlayerName][tostring(newtable[i])].N );
					centerLabelCash3[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
					centerLabelCash3[i]:SetZOrder(21);

					centerLabelCash4[i] = Turbine.UI.Label();
					centerLabelCash4[i]:SetParent(ButtonPlusCash[i]);
					centerLabelCash4[i]:SetPosition( 5, 30 );
					centerLabelCash4[i]:SetSize( 180, 32  );
					centerLabelCash4[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
					if(PlayerWallet[PlayerName][tostring(newtable[i])].A == "true")then
						centerLabelCash4[i]:SetText(T[ "ComptePartage" ]);
					end
					centerLabelCash4[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft );
					centerLabelCash4[i]:SetForeColor( Turbine.UI.Color.Lime );
					centerLabelCash4[i]:SetZOrder(21);

					centerWindow[i].MouseEnter = function()
						ButtonPlusCash[i]:SetVisible(true);
					end

					centerWindow[i].MouseLeave = function()
						ButtonPlusCash[i]:SetVisible(false);
					end
					--- end label description

					Tokens.Message=Turbine.UI.Label(); 
					Tokens.Message:SetParent(centerWindowName[i]); 
					Tokens.Message:SetSize(300, 32); 
					Tokens.Message:SetPosition( 1, 1); 
					Tokens.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft); 
					if(tonumber(PlayerWallet[PlayerName][tostring(newtable[i])].MQUA) >= 9999990 )then
						Tokens.Message:SetText(rgb["gold"] .. PlayerWallet[PlayerName][tostring(newtable[i])].QUA .. rgb["clear"] .. " " .. PlayerWallet[PlayerName][tostring(newtable[i])].N); 
					else
						Tokens.Message:SetText(rgb["gold"] .. PlayerWallet[PlayerName][tostring(newtable[i])].QUA .. " / " .. PlayerWallet[PlayerName][tostring(newtable[i])].MQUA .. rgb["clear"] .. " " .. PlayerWallet[PlayerName][tostring(newtable[i])].N); 
					end
					Tokens.Message:SetBackColor(Turbine.UI.Color( 0.9, 0.3, 0.3, 0.3 ));
					Tokens.Message:SetMarkupEnabled(true);

					listbox:AddItem( listItem );
				end
			end
		-------------------
		end
	end

	if(heightSizeOfMapTotal > 700)then
		vscrollListBox=Turbine.UI.Lotro.ScrollBar();
		vscrollListBox:SetParent(Tokens);
		vscrollListBox:SetOrientation(Turbine.UI.Orientation.Vertical);
		vscrollListBox:SetPosition(windowWidth-20, 50);
		vscrollListBox:SetSize(10, heightSizeOfMap); -- set width to 12 since it's a "Lotro" style scrollbar and the height is set to match the control that we will be scrolling
		vscrollListBox:SetBackColor(Turbine.UI.Color(.1,.1,.2)); -- just to give it a little style
		vscrollListBox:SetMinimum(0);
		vscrollListBox:SetMaximum( (tokensToDisplay * 38) - heightSizeOfMap); -- we will allow scrolling the height of the map-the viewport height
		vscrollListBox:SetValue(0); -- set the initial value
		------------------------------------------------------------------------------------------
		-- set the ValueChanged event handler to take an action when our value changes, in this case, change the map position relative to the viewport
		------------------------------------------------------------------------------------------
		vscrollListBox.ValueChanged=function()
			listbox:SetTop(0-vscrollListBox:GetValue());
		end

		listbox:SetVerticalScrollBar(vscrollListBox);
	end
	
	PositionChangedWindow();
	ClosingTheWindow();

	EscapeKeyHandler();
end

function EscapeKeyHandler()
	Tokens.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == true) then
				Tokens:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
			end
		end
		if ( args.Action == 268435635 ) then
			Tokens:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		end
	end
end

