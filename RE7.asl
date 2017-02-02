//Resident Evil 7 Autosplitter
//By CursedToast 1/28/2017

//Special thanks to:
//CarcinogenSDA (you know why)
//Dchaps - programming support
//shiftweave - programming support
//mgr.inz.Player - inventory memory value support
//Theumer115 - inventory memory value support
//DarkByte - inventory memory value support

state("re7")
{
	int isPaused : "re7.exe", 0x0707C290, 0x28, 0x30, 0x58, 0x730;
	float igt : "re7.exe", 0x0704D5C8, 0x28, 0x428, 0x40, 0x28, 0x120;
	string128 slot1 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x30, 0x28, 0x80, 0x24;
	string128 slot2 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x38, 0x28, 0x80, 0x24;
	string128 slot3 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x40, 0x28, 0x80, 0x24;
	string128 slot4 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x48, 0x28, 0x80, 0x24;
	string128 slot5 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x50, 0x28, 0x80, 0x24;
	string128 slot6 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x58, 0x28, 0x80, 0x24;
	string128 slot7 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x60, 0x28, 0x80, 0x24;
	string128 slot8 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x68, 0x28, 0x80, 0x24;
	string128 slot9 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x70, 0x28, 0x80, 0x24;
	string128 slot10 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x78, 0x28, 0x80, 0x24;
	string128 slot11 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x80, 0x28, 0x80, 0x24;
	string128 slot12 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x88, 0x28, 0x80, 0x24;
	string128 slot13 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x90, 0x28, 0x80, 0x24;
	string128 slot14 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0x98, 0x28, 0x80, 0x24;
	string128 slot15 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xA0, 0x28, 0x80, 0x24;
	string128 slot16 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xA8, 0x28, 0x80, 0x24;
	string128 slot17 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xB0, 0x28, 0x80, 0x24;
	string128 slot18 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xB8, 0x28, 0x80, 0x24;
	string128 slot19 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xC0, 0x28, 0x80, 0x24;
	string128 slot20 : "re7.exe", 0x0707FCD0, 0x60, 0x20, 0xC8, 0x28, 0x80, 0x24;
	string128 map : "re7.exe", 0x070B9540, 0xE0, 0x80, 0x0;
	//int coins : "re7.exe", 0x07047D58, 0x5A0, 0x170, 0x40, 0x80, 0x20;
	//int files : "re7.exe", 0x07046398, 0xC0, 0x3B8, 0xB0, 0x78, 0x490; WIP. Coin and file count memory value is differnt per difficulty. This value is for Normal, apparently. Come back later when you found the difficulty memory value, I suppose.
}

startup
{
	settings.Add("guesthouse", true, "Split at entering the Guest House");
	settings.Add("boltcutters", true, "Split at picking up Bolt Cutters");
	settings.Add("axe", true, "Split at picking up Axe (first time)");
}

init
{
	vars.guesthouse = 0;
	vars.boltcutters = 0;
	vars.axe = 0;
}


start
{
    return current.map == "c04_Ship3FInfirmaryPast"; 
}


split
{
	if (settings["guesthouse"])
	{
		if (vars.guesthouse == 0)
		{
			if (current.map == "c01_Corridor01")
			{
				vars.guesthouse = 1;
				return true;
			}
		}
	}
	if (settings["boltcutters"])
	{
		if (vars.boltcutters == 0)
		{
			if (current.slot1 == "ChainCutter" || current.slot2 == "ChainCutter" || current.slot3 == "ChainCutter" || current.slot4 == "ChainCutter" || current.slot5 == "ChainCutter" || current.slot6 == "ChainCutter" || current.slot7 == "ChainCutter" || current.slot8 == "ChainCutter" || current.slot9 == "ChainCutter" || current.slot10 == "ChainCutter" || current.slot11 == "ChainCutter" || current.slot12 == "ChainCutter" || current.slot13 == "ChainCutter" || current.slot14 == "ChainCutter" || current.slot15 == "ChainCutter" || current.slot16 == "ChainCutter" || current.slot17 == "ChainCutter" || current.slot18 == "ChainCutter" || current.slot19 == "ChainCutter" || current.slot20 == "ChainCutter")
			{
				vars.boltcutters = 1;
				return true;
			}
		}
	}
	if (settings["axe"])
	{
		if (vars.axe == 0)
		{
			if (current.slot1 == "HandAxe" || current.slot2 == "HandAxe" || current.slot3 == "HandAxe" || current.slot4 == "HandAxe" || current.slot5 == "HandAxe" || current.slot6 == "HandAxe" || current.slot7 == "HandAxe" || current.slot8 == "HandAxe" || current.slot9 == "HandAxe" || current.slot10 == "HandAxe" || current.slot11 == "HandAxe" || current.slot12 == "HandAxe" || current.slot13 == "HandAxe" || current.slot14 == "HandAxe" || current.slot15 == "HandAxe" || current.slot16 == "HandAxe" || current.slot17 == "HandAxe" || current.slot18 == "HandAxe" || current.slot19 == "HandAxe" || current.slot20 == "HandAxe")
			{
				vars.axe = 1;
				return true;
			}
		}
	}
}
isLoading
{
	if (current.isPaused == 1 && old.isPaused == 0)
	{
		return true;
	}
	if (current.isPaused == 0 && old.isPaused == 1)
	{
		return false;
	}
}