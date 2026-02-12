------------------------------------------------------------------------------------------
-- PlayerStats file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
-- define player stats
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Define vars --
------------------------------------------------------------------------------------------
Player = Turbine.Gameplay.LocalPlayer.GetInstance();
PlayerName = Player:GetName();
PlayerAlign = Player:GetAlignment(); --1: Free People / 2: Monster Play
walletpack = Player:GetWallet();

NbrEntries = 122;
------------------------------------------------------------------------------------------
-- load all the dats needed
------------------------------------------------------------------------------------------
LoadSettings();

LoadPlayerWallet();
SavePlayerWallet();

UpdaterChecker = 0;

Write = Turbine.Shell.WriteLine ;

nbrTokensPiece = 1;
nbrTokensPaysage = 55;
nbrTokensFestival = 19;
nbrTokensProgression = 4;
nbrTokensAutres = 6;
nbrTokensArtisanats = 4;
nbrTokensTaxidermiste = 11;
nbrTokensInstances = 37;
nbrTokensMonnaie = 3;

-- totalTokens = 140 = 77 token de plus qu'avant + 1

nbrTokens = nbrTokensPiece + nbrTokensPaysage + nbrTokensFestival + nbrTokensProgression + nbrTokensAutres + nbrTokensArtisanats + nbrTokensTaxidermiste + nbrTokensInstances + nbrTokensMonnaie;

--Write("Total tokens : " .. nbrTokens);

LoadTokens();