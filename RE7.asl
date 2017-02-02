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
	if (settings["fuse"])
	{
		if (vars.fuse == 0)
		{
			if (current.slot1 == "Fuse" || current.slot2 == "Fuse" || current.slot3 == "Fuse" || current.slot4 == "Fuse" || current.slot5 == "Fuse" || current.slot6 == "Fuse" || current.slot7 == "Fuse" || current.slot8 == "Fuse" || current.slot9 == "Fuse" || current.slot10 == "Fuse" || current.slot11 == "Fuse" || current.slot12 == "Fuse" || current.slot13 == "Fuse" || current.slot14 == "Fuse" || current.slot15 == "Fuse" || current.slot16 == "Fuse" || current.slot17 == "Fuse" || current.slot18 == "Fuse" || current.slot19 == "Fuse" || current.slot20 == "Fuse")
			{
				vars.fuse = 1;
				return true;
			}
		}
	}
	if (settings["m19"])
	{
		if (vars.m19 == 0)
		{
			if (current.slot1 == "Handgun_M19" || current.slot2 == "Handgun_M19" || current.slot3 == "Handgun_M19" || current.slot4 == "Handgun_M19" || current.slot5 == "Handgun_M19" || current.slot6 == "Handgun_M19" || current.slot7 == "Handgun_M19" || current.slot8 == "Handgun_M19" || current.slot9 == "Handgun_M19" || current.slot10 == "Handgun_M19" || current.slot11 == "Handgun_M19" || current.slot12 == "Handgun_M19" || current.slot13 == "Handgun_M19" || current.slot14 == "Handgun_M19" || current.slot15 == "Handgun_M19" || current.slot16 == "Handgun_M19" || current.slot17 == "Handgun_M19" || current.slot18 == "Handgun_M19" || current.slot19 == "Handgun_M19" || current.slot20 == "Handgun_M19")
			{
				vars.m19 = 1;
				return true;
			}
		}
	}
	if (settings["hatchkey"])
	{
		if (vars.hatchkey == 0)
		{
			if (current.slot1 == "FloorDoorKey" || current.slot2 == "FloorDoorKey" || current.slot3 == "FloorDoorKey" || current.slot4 == "FloorDoorKey" || current.slot5 == "FloorDoorKey" || current.slot6 == "FloorDoorKey" || current.slot7 == "FloorDoorKey" || current.slot8 == "FloorDoorKey" || current.slot9 == "FloorDoorKey" || current.slot10 == "FloorDoorKey" || current.slot11 == "FloorDoorKey" || current.slot12 == "FloorDoorKey" || current.slot13 == "FloorDoorKey" || current.slot14 == "FloorDoorKey" || current.slot15 == "FloorDoorKey" || current.slot16 == "FloorDoorKey" || current.slot17 == "FloorDoorKey" || current.slot18 == "FloorDoorKey" || current.slot19 == "FloorDoorKey" || current.slot20 == "FloorDoorKey")
			{
				vars.hatchkey = 1;
				return true;
			}
		}
	}
	if (settings["knife"])
	{
		if (vars.knife == 0)
		{
			if (current.slot1 == "Knife" || current.slot2 == "Knife" || current.slot3 == "Knife" || current.slot4 == "Knife" || current.slot5 == "Knife" || current.slot6 == "Knife" || current.slot7 == "Knife" || current.slot8 == "Knife" || current.slot9 == "Knife" || current.slot10 == "Knife" || current.slot11 == "Knife" || current.slot12 == "Knife" || current.slot13 == "Knife" || current.slot14 == "Knife" || current.slot15 == "Knife" || current.slot16 == "Knife" || current.slot17 == "Knife" || current.slot18 == "Knife" || current.slot19 == "Knife" || current.slot20 == "Knife")
			{
				vars.knife = 1;
				return true;
			}
		}
	}
	if (settings["carkey"])
	{
		if (vars.carkey == 0)
		{
			if (current.slot1 == "EthanCarKey" || current.slot2 == "EthanCarKey" || current.slot3 == "EthanCarKey" || current.slot4 == "EthanCarKey" || current.slot5 == "EthanCarKey" || current.slot6 == "EthanCarKey" || current.slot7 == "EthanCarKey" || current.slot8 == "EthanCarKey" || current.slot9 == "EthanCarKey" || current.slot10 == "EthanCarKey" || current.slot11 == "EthanCarKey" || current.slot12 == "EthanCarKey" || current.slot13 == "EthanCarKey" || current.slot14 == "EthanCarKey" || current.slot15 == "EthanCarKey" || current.slot16 == "EthanCarKey" || current.slot17 == "EthanCarKey" || current.slot18 == "EthanCarKey" || current.slot19 == "EthanCarKey" || current.slot20 == "EthanCarKey")
			{
				vars.carkey = 1;
				return true;
			}
		}
	}
	if (settings["g17"])
	{
		if (vars.g17 == 0)
		{
			if (current.slot1 == "Handgun_G17" || current.slot2 == "Handgun_G17" || current.slot3 == "Handgun_G17" || current.slot4 == "Handgun_G17" || current.slot5 == "Handgun_G17" || current.slot6 == "Handgun_G17" || current.slot7 == "Handgun_G17" || current.slot8 == "Handgun_G17" || current.slot9 == "Handgun_G17" || current.slot10 == "Handgun_G17" || current.slot11 == "Handgun_G17" || current.slot12 == "Handgun_G17" || current.slot13 == "Handgun_G17" || current.slot14 == "Handgun_G17" || current.slot15 == "Handgun_G17" || current.slot16 == "Handgun_G17" || current.slot17 == "Handgun_G17" || current.slot18 == "Handgun_G17" || current.slot19 == "Handgun_G17" || current.slot20 == "Handgun_G17")
			{
				vars.g17 = 1;
				return true;
			}
		}
	}
	if (settings["oxstatue"])
	{
		if (vars.oxstatue == 0)
		{
			if (current.slot1 == "EntranceHallKey" || current.slot2 == "EntranceHallKey" || current.slot3 == "EntranceHallKey" || current.slot4 == "EntranceHallKey" || current.slot5 == "EntranceHallKey" || current.slot6 == "EntranceHallKey" || current.slot7 == "EntranceHallKey" || current.slot8 == "EntranceHallKey" || current.slot9 == "EntranceHallKey" || current.slot10 == "EntranceHallKey" || current.slot11 == "EntranceHallKey" || current.slot12 == "EntranceHallKey" || current.slot13 == "EntranceHallKey" || current.slot14 == "EntranceHallKey" || current.slot15 == "EntranceHallKey" || current.slot16 == "EntranceHallKey" || current.slot17 == "EntranceHallKey" || current.slot18 == "EntranceHallKey" || current.slot19 == "EntranceHallKey" || current.slot20 == "EntranceHallKey")
			{
				vars.oxstatue = 1;
				return true;
			}
		}
	}
	if (settings["clockpendulum"])
	{
		if (vars.clockpendulum == 0)
		{
			if (current.slot1 == "PendulumClock" || current.slot2 == "PendulumClock" || current.slot3 == "PendulumClock" || current.slot4 == "PendulumClock" || current.slot5 == "PendulumClock" || current.slot6 == "PendulumClock" || current.slot7 == "PendulumClock" || current.slot8 == "PendulumClock" || current.slot9 == "PendulumClock" || current.slot10 == "PendulumClock" || current.slot11 == "PendulumClock" || current.slot12 == "PendulumClock" || current.slot13 == "PendulumClock" || current.slot14 == "PendulumClock" || current.slot15 == "PendulumClock" || current.slot16 == "PendulumClock" || current.slot17 == "PendulumClock" || current.slot18 == "PendulumClock" || current.slot19 == "PendulumClock" || current.slot20 == "PendulumClock")
			{
				vars.clockpendulum = 1;
				return true;
			}
		}
	}
	if (settings["woodenstatue"])
	{
		if (vars.woodenstatue == 0)
		{
			if (current.slot1 == "SilhouettePazzlePiece" || current.slot2 == "SilhouettePazzlePiece" || current.slot3 == "SilhouettePazzlePiece" || current.slot4 == "SilhouettePazzlePiece" || current.slot5 == "SilhouettePazzlePiece" || current.slot6 == "SilhouettePazzlePiece" || current.slot7 == "SilhouettePazzlePiece" || current.slot8 == "SilhouettePazzlePiece" || current.slot9 == "SilhouettePazzlePiece" || current.slot10 == "SilhouettePazzlePiece" || current.slot11 == "SilhouettePazzlePiece" || current.slot12 == "SilhouettePazzlePiece" || current.slot13 == "SilhouettePazzlePiece" || current.slot14 == "SilhouettePazzlePiece" || current.slot15 == "SilhouettePazzlePiece" || current.slot16 == "SilhouettePazzlePiece" || current.slot17 == "SilhouettePazzlePiece" || current.slot18 == "SilhouettePazzlePiece" || current.slot19 == "SilhouettePazzlePiece" || current.slot20 == "SilhouettePazzlePiece")
			{
				vars.woodenstatue = 1;
				return true;
			}
		}
	}
	if (settings["bluedoghead"])
	{
		if (vars.bluedoghead == 0)
		{
			if (current.slot1 == "3CrestKeyA" || current.slot2 == "3CrestKeyA" || current.slot3 == "3CrestKeyA" || current.slot4 == "3CrestKeyA" || current.slot5 == "3CrestKeyA" || current.slot6 == "3CrestKeyA" || current.slot7 == "3CrestKeyA" || current.slot8 == "3CrestKeyA" || current.slot9 == "3CrestKeyA" || current.slot10 == "3CrestKeyA" || current.slot11 == "3CrestKeyA" || current.slot12 == "3CrestKeyA" || current.slot13 == "3CrestKeyA" || current.slot14 == "3CrestKeyA" || current.slot15 == "3CrestKeyA" || current.slot16 == "3CrestKeyA" || current.slot17 == "3CrestKeyA" || current.slot18 == "3CrestKeyA" || current.slot19 == "3CrestKeyA" || current.slot20 == "3CrestKeyA")
			{
				vars.bluedoghead = 1;
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