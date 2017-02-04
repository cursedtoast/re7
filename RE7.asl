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
	int isdying : "re7.exe", 0x0707FCD0, 0x60;
	//int coins : "re7.exe", 0x07047D58, 0x5A0, 0x170, 0x40, 0x80, 0x20;
	//int files : "re7.exe", 0x07046398, 0xC0, 0x3B8, 0xB0, 0x78, 0x490; WIP. Coin and file count memory value is differnt per difficulty. This value is for Normal, apparently. Come back later when you found the difficulty memory value, I suppose.
}

startup
{
	settings.Add("version", false, "Autosplitter Version 2.2.0");
	settings.Add("guesthouse", false, "Reached the Guest House");
	settings.Add("boltcutters", false, "Bolt Cutters");
	settings.Add("axe", false, "Axe (first time)");
	settings.Add("fuse", false, "Fuse (Guest House)");
	settings.Add("welcome2family", false, "Welcome to the family (splits during drag scene)");
	settings.Add("hatchkey", false, "Hatch Key");
	settings.Add("knife", false, "Knife");
	settings.Add("m19", false, "M19 (Guest House gun)");
	settings.Add("g17", false, "G17 (Garage gun)");
	settings.Add("carkey", false, "Car Key");
	settings.Add("oxstatue", false, "Ox Statuette");
	settings.Add("clockpendulum", false, "Clock Pendulum");
	settings.Add("bluedoghead", false, "Blue Dog Head");
	settings.Add("woodenstatue", false, "Wooden Statuette");
	settings.Add("whitedoghead", false, "White Dog Head");
	settings.Add("dissectionroomkey", false, "Dissection Room Key");
	settings.Add("reddoghead", false, "Red Dog Head");
	settings.Add("chainsaw", false, "Chainsaw");
	settings.Add("chainsawduel", false, "Finished chainsaw fight");
	settings.Add("scorpionkey", false, "Scorpion Key");
	settings.Add("trailer", false, "Reached the trailer (first time)");
	settings.Add("oldhouse", false, "Reached the Old House");
	settings.Add("burnergrip", false, "Burner Grip");
	settings.Add("burnernozzle", false, "Burner Nozzle");
	settings.Add("stonestatue", false, "Stone Statue");
	settings.Add("crank", false, "Crank");
	settings.Add("crowkey", false, "Crow Key");
	settings.Add("crowdoor", false, "Entered Crow Door (after falling down hole)");
	settings.Add("lantern", false, "Lantern");
	settings.Add("usedlantern", false, "Placed Lantern (to unlock door)");
	settings.Add("arm", false, "D-Series Arm");
	settings.Add("magnum", false, "Magnum");
	settings.Add("snakekey", false, "Snake Key");
	settings.Add("grenadelauncher", false, "Grenade Launcher");
	settings.Add("redkeycard", false, "Red Key Card");
	settings.Add("bluekeycard", false, "Blue Keycard");
	settings.Add("tvroom", false, "Reached Lucas TV room");
	settings.Add("battery", false, "Battery");
	settings.Add("candle", false, "Candle");
	settings.Add("valve", false, "Valve Handle");
	settings.Add("timebomb", false, "Timebomb");
	settings.Add("head", false, "D-Series Head");
	settings.Add("jacksback", false, "Completed Serum");
	settings.Add("hittheroadjack", false, "Injected Jack");
	settings.Add("boatcrash", false, "Mia Start");
	settings.Add("fuse2", false, "Fuse (ship)");
	settings.Add("videotape", false, "Mia Videotape (picked up)");
	settings.Add("videotapeend", false, "Mia Tape End");
	settings.Add("lugwrench", false, "Lug Wrench");
	settings.Add("powercable", false, "Power Cable");
	settings.Add("fuse3", false, "Retrieved Fuse (from door on ship)");
	settings.Add("miacomplete", false, "Mia Complete");
	settings.Add("necrotoxin", false, "Necrotoxin");
	settings.Add("injectedbitch", false, "Injected Evie");
	settings.Add("albert", false, "Albert Gun (Platimes over)");
	settings.Add("end", false, "End");
}

init
{
	vars.guesthouse = 0;
	vars.boltcutters = 0;
	vars.axe = 0;
	vars.crowdoor = 0;
	vars.tvroom = 0;
	vars.oldhouse = 0;
	vars.trailer = 0;
	vars.welcome2family = 0;
	vars.grenadelauncher = 0;
	vars.albert = 0;
	vars.injectedbitch = 0;
	vars.necrotoxin = 0;
	vars.miacomplete = 0;
	vars.fuse3 = 0;
	vars.powercable = 0;
	vars.lugwrench = 0;
	vars.videotapeend = 0;
	vars.videotape = 0;
	vars.usedlantern = 0;
	vars.fuse2 = 0;
	vars.boatcrash = 0;
	vars.hittheroadjack = 0;
	vars.jacksback = 0;
	vars.head = 0;
	vars.timebomb = 0;
	vars.valve = 0;
	vars.candle = 0;
	vars.battery = 0;
	vars.bluekeycard = 0;
	vars.redkeycard = 0;
	vars.snakekey = 0;
	vars.magnum = 0;
	vars.arm = 0;
	vars.lantern = 0;
	vars.crowkey = 0;
	vars.crank = 0;
	vars.stonestatue = 0;
	vars.burnergrip = 0;
	vars.burnernozzle = 0;
	vars.reddoghead = 0;
	vars.chainsaw = 0;
	vars.chainsawduel = 0;
	vars.scorpionkey = 0;
	vars.dissectionroomkey = 0;
	vars.whitedoghead = 0;
	vars.bluedoghead = 0;
	vars.clockpendulum = 0;
	vars.woodenstatue = 0;
	vars.oxstatue = 0;
	vars.g17 = 0;
	vars.carkey = 0;
	vars.knife = 0;
	vars.hatchkey = 0;
	vars.m19 = 0;
	vars.fuse = 0;
	vars.end = 0;
	vars.isdead = 0;
}


start
{
    return current.map == "c04_Ship3FInfirmaryPast"; 
}

update
{
    if (current.isdying == 0)
    {
        vars.isdead = 1;
    }
    else
    {
        vars.isdead = 0;
    }
	if (timer.CurrentPhase == TimerPhase.NotRunning)
	{
		vars.guesthouse = 0;
		vars.boltcutters = 0;
		vars.axe = 0;
		vars.crowdoor = 0;
		vars.tvroom = 0;
		vars.oldhouse = 0;
		vars.trailer = 0;
		vars.welcome2family = 0;
		vars.grenadelauncher = 0;
		vars.albert = 0;
		vars.injectedbitch = 0;
		vars.necrotoxin = 0;
		vars.miacomplete = 0;
		vars.fuse3 = 0;
		vars.powercable = 0;
		vars.lugwrench = 0;
		vars.videotapeend = 0;
		vars.videotape = 0;
		vars.usedlantern = 0;
		vars.fuse2 = 0;
		vars.boatcrash = 0;
		vars.hittheroadjack = 0;
		vars.jacksback = 0;
		vars.head = 0;
		vars.timebomb = 0;
		vars.valve = 0;
		vars.candle = 0;
		vars.battery = 0;
		vars.bluekeycard = 0;
		vars.redkeycard = 0;
		vars.snakekey = 0;
		vars.magnum = 0;
		vars.arm = 0;
		vars.lantern = 0;
		vars.crowkey = 0;
		vars.crank = 0;
		vars.stonestatue = 0;
		vars.burnergrip = 0;
		vars.burnernozzle = 0;
		vars.reddoghead = 0;
		vars.chainsaw = 0;
		vars.chainsawduel = 0;
		vars.scorpionkey = 0;
		vars.dissectionroomkey = 0;
		vars.whitedoghead = 0;
		vars.bluedoghead = 0;
		vars.clockpendulum = 0;
		vars.woodenstatue = 0;
		vars.oxstatue = 0;
		vars.g17 = 0;
		vars.carkey = 0;
		vars.knife = 0;
		vars.hatchkey = 0;
		vars.m19 = 0;
		vars.fuse = 0;
		vars.end = 0;
		vars.isdead = 0;
	}
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
	if (settings["whitedoghead"])
	{
		if (vars.whitedoghead == 0)
		{
			if (current.slot1 == "3CrestKeyB" || current.slot2 == "3CrestKeyB" || current.slot3 == "3CrestKeyB" || current.slot4 == "3CrestKeyB" || current.slot5 == "3CrestKeyB" || current.slot6 == "3CrestKeyB" || current.slot7 == "3CrestKeyB" || current.slot8 == "3CrestKeyB" || current.slot9 == "3CrestKeyB" || current.slot10 == "3CrestKeyB" || current.slot11 == "3CrestKeyB" || current.slot12 == "3CrestKeyB" || current.slot13 == "3CrestKeyB" || current.slot14 == "3CrestKeyB" || current.slot15 == "3CrestKeyB" || current.slot16 == "3CrestKeyB" || current.slot17 == "3CrestKeyB" || current.slot18 == "3CrestKeyB" || current.slot19 == "3CrestKeyB" || current.slot20 == "3CrestKeyB")
			{
				vars.whitedoghead = 1;
				return true;
			}
		}
	}
	if (settings["dissectionroomkey"])
	{
		if (vars.dissectionroomkey == 0)
		{
			if (current.slot1 == "WorkroomKey" || current.slot2 == "WorkroomKey" || current.slot3 == "WorkroomKey" || current.slot4 == "WorkroomKey" || current.slot5 == "WorkroomKey" || current.slot6 == "WorkroomKey" || current.slot7 == "WorkroomKey" || current.slot8 == "WorkroomKey" || current.slot9 == "WorkroomKey" || current.slot10 == "WorkroomKey" || current.slot11 == "WorkroomKey" || current.slot12 == "WorkroomKey" || current.slot13 == "WorkroomKey" || current.slot14 == "WorkroomKey" || current.slot15 == "WorkroomKey" || current.slot16 == "WorkroomKey" || current.slot17 == "WorkroomKey" || current.slot18 == "WorkroomKey" || current.slot19 == "WorkroomKey" || current.slot20 == "WorkroomKey")
			{
				vars.dissectionroomkey = 1;
				return true;
			}
		}
	}
	if (settings["scorpionkey"])
	{
		if (vars.scorpionkey == 0)
		{
			if (current.slot1 == "MorgueKey" || current.slot2 == "MorgueKey" || current.slot3 == "MorgueKey" || current.slot4 == "MorgueKey" || current.slot5 == "MorgueKey" || current.slot6 == "MorgueKey" || current.slot7 == "MorgueKey" || current.slot8 == "MorgueKey" || current.slot9 == "MorgueKey" || current.slot10 == "MorgueKey" || current.slot11 == "MorgueKey" || current.slot12 == "MorgueKey" || current.slot13 == "MorgueKey" || current.slot14 == "MorgueKey" || current.slot15 == "MorgueKey" || current.slot16 == "MorgueKey" || current.slot17 == "MorgueKey" || current.slot18 == "MorgueKey" || current.slot19 == "MorgueKey" || current.slot20 == "MorgueKey")
			{
				vars.scorpionkey = 1;
				return true;
			}
		}
	}
	if (settings["chainsaw"])
	{
		if (vars.chainsaw == 0)
		{
			if (current.slot1 == "ChainSaw" || current.slot2 == "ChainSaw" || current.slot3 == "ChainSaw" || current.slot4 == "ChainSaw" || current.slot5 == "ChainSaw" || current.slot6 == "ChainSaw" || current.slot7 == "ChainSaw" || current.slot8 == "ChainSaw" || current.slot9 == "ChainSaw" || current.slot10 == "ChainSaw" || current.slot11 == "ChainSaw" || current.slot12 == "ChainSaw" || current.slot13 == "ChainSaw" || current.slot14 == "ChainSaw" || current.slot15 == "ChainSaw" || current.slot16 == "ChainSaw" || current.slot17 == "ChainSaw" || current.slot18 == "ChainSaw" || current.slot19 == "ChainSaw" || current.slot20 == "ChainSaw")
			{
				vars.chainsaw = 1;
				return true;
			}
		}
	}
	if (settings["chainsawduel"])
	{
		if (vars.chainsawduel == 0)
		{
			if (old.slot1 == "ChainSaw" && current.slot1 != "ChainSaw" || old.slot2 == "ChainSaw" && current.slot2 != "ChainSaw" || old.slot3 == "ChainSaw" && current.slot3 != "ChainSaw" || old.slot4 == "ChainSaw" && current.slot4 != "ChainSaw" || old.slot5 == "ChainSaw" && current.slot5 != "ChainSaw" || old.slot6 == "ChainSaw" && current.slot6 != "ChainSaw" || old.slot7 == "ChainSaw" && current.slot7 != "ChainSaw" || old.slot8 == "ChainSaw" && current.slot8 != "ChainSaw" && current.isPaused || old.slot9 == "ChainSaw" && current.slot9 != "ChainSaw" || old.slot10 == "ChainSaw" && current.slot10 != "ChainSaw" || old.slot11 == "ChainSaw" && current.slot11 != "ChainSaw" || old.slot12 == "ChainSaw" && current.slot12 != "ChainSaw" || old.slot13 == "ChainSaw" && current.slot13 != "ChainSaw" && current.isPaused || old.slot14 == "ChainSaw" && current.slot14 != "ChainSaw" && current.isPaused || old.slot15 == "ChainSaw" && current.slot15 != "ChainSaw")
			{
				if (vars.isdead == 0)
				{
					vars.chainsawduel = 1;
					return true;
				}
			}
		}
	}
	if (settings["reddoghead"])
	{
		if (vars.reddoghead == 0)
		{
			if (current.slot1 == "3CrestKeyC" || current.slot2 == "3CrestKeyC" || current.slot3 == "3CrestKeyC" || current.slot4 == "3CrestKeyC" || current.slot5 == "3CrestKeyC" || current.slot6 == "3CrestKeyC" || current.slot7 == "3CrestKeyC" || current.slot8 == "3CrestKeyC" || current.slot9 == "3CrestKeyC" || current.slot10 == "3CrestKeyC" || current.slot11 == "3CrestKeyC" || current.slot12 == "3CrestKeyC" || current.slot13 == "3CrestKeyC" || current.slot14 == "3CrestKeyC" || current.slot15 == "3CrestKeyC" || current.slot16 == "3CrestKeyC" || current.slot17 == "3CrestKeyC" || current.slot18 == "3CrestKeyC" || current.slot19 == "3CrestKeyC" || current.slot20 == "3CrestKeyC")
			{
				vars.reddoghead = 1;
				return true;
			}
		}
	}
	if (settings["burnergrip"])
	{
		if (vars.burnergrip == 0)
		{
			if (current.slot1 == "BurnerPartsA" || current.slot2 == "BurnerPartsA" || current.slot3 == "BurnerPartsA" || current.slot4 == "BurnerPartsA" || current.slot5 == "BurnerPartsA" || current.slot6 == "BurnerPartsA" || current.slot7 == "BurnerPartsA" || current.slot8 == "BurnerPartsA" || current.slot9 == "BurnerPartsA" || current.slot10 == "BurnerPartsA" || current.slot11 == "BurnerPartsA" || current.slot12 == "BurnerPartsA" || current.slot13 == "BurnerPartsA" || current.slot14 == "BurnerPartsA" || current.slot15 == "BurnerPartsA" || current.slot16 == "BurnerPartsA" || current.slot17 == "BurnerPartsA" || current.slot18 == "BurnerPartsA" || current.slot19 == "BurnerPartsA" || current.slot20 == "BurnerPartsA")
			{
				vars.burnergrip = 1;
				return true;
			}
		}
	}
	if (settings["burnernozzle"])
	{
		if (vars.burnernozzle == 0)
		{
			if (current.slot1 == "BurnerPartsB" || current.slot2 == "BurnerPartsB" || current.slot3 == "BurnerPartsB" || current.slot4 == "BurnerPartsB" || current.slot5 == "BurnerPartsB" || current.slot6 == "BurnerPartsB" || current.slot7 == "BurnerPartsB" || current.slot8 == "BurnerPartsB" || current.slot9 == "BurnerPartsB" || current.slot10 == "BurnerPartsB" || current.slot11 == "BurnerPartsB" || current.slot12 == "BurnerPartsB" || current.slot13 == "BurnerPartsB" || current.slot14 == "BurnerPartsB" || current.slot15 == "BurnerPartsB" || current.slot16 == "BurnerPartsB" || current.slot17 == "BurnerPartsB" || current.slot18 == "BurnerPartsB" || current.slot19 == "BurnerPartsB" || current.slot20 == "BurnerPartsB")
			{
				vars.burnernozzle = 1;
				return true;
			}
		}
	}
	if (settings["stonestatue"])
	{
		if (vars.stonestatue == 0)
		{
			if (current.slot1 == "SilhouettePazzlePieceOldHouse" || current.slot2 == "SilhouettePazzlePieceOldHouse" || current.slot3 == "SilhouettePazzlePieceOldHouse" || current.slot4 == "SilhouettePazzlePieceOldHouse" || current.slot5 == "SilhouettePazzlePieceOldHouse" || current.slot6 == "SilhouettePazzlePieceOldHouse" || current.slot7 == "SilhouettePazzlePieceOldHouse" || current.slot8 == "SilhouettePazzlePieceOldHouse" || current.slot9 == "SilhouettePazzlePieceOldHouse" || current.slot10 == "SilhouettePazzlePieceOldHouse" || current.slot11 == "SilhouettePazzlePieceOldHouse" || current.slot12 == "SilhouettePazzlePieceOldHouse" || current.slot13 == "SilhouettePazzlePieceOldHouse" || current.slot14 == "SilhouettePazzlePieceOldHouse" || current.slot15 == "SilhouettePazzlePieceOldHouse" || current.slot16 == "SilhouettePazzlePieceOldHouse" || current.slot17 == "SilhouettePazzlePieceOldHouse" || current.slot18 == "SilhouettePazzlePieceOldHouse" || current.slot19 == "SilhouettePazzlePieceOldHouse" || current.slot20 == "SilhouettePazzlePieceOldHouse")
			{
				vars.stonestatue = 1;
				return true;
			}
		}
	}
	if (settings["crank"])
	{
		if (vars.crank == 0)
		{
			if (current.slot1 == "Crank" || current.slot2 == "Crank" || current.slot3 == "Crank" || current.slot4 == "Crank" || current.slot5 == "Crank" || current.slot6 == "Crank" || current.slot7 == "Crank" || current.slot8 == "Crank" || current.slot9 == "Crank" || current.slot10 == "Crank" || current.slot11 == "Crank" || current.slot12 == "Crank" || current.slot13 == "Crank" || current.slot14 == "Crank" || current.slot15 == "Crank" || current.slot16 == "Crank" || current.slot17 == "Crank" || current.slot18 == "Crank" || current.slot19 == "Crank" || current.slot20 == "Crank")
			{
				vars.crank = 1;
				return true;
			}
		}
	}
	if (settings["crowkey"])
	{
		if (vars.crowkey == 0)
		{
			if (current.slot1 == "TalismanKey" || current.slot2 == "TalismanKey" || current.slot3 == "TalismanKey" || current.slot4 == "TalismanKey" || current.slot5 == "TalismanKey" || current.slot6 == "TalismanKey" || current.slot7 == "TalismanKey" || current.slot8 == "TalismanKey" || current.slot9 == "TalismanKey" || current.slot10 == "TalismanKey" || current.slot11 == "TalismanKey" || current.slot12 == "TalismanKey" || current.slot13 == "TalismanKey" || current.slot14 == "TalismanKey" || current.slot15 == "TalismanKey" || current.slot16 == "TalismanKey" || current.slot17 == "TalismanKey" || current.slot18 == "TalismanKey" || current.slot19 == "TalismanKey" || current.slot20 == "TalismanKey")
			{
				vars.crowkey = 1;
				return true;
			}
		}
	}
	if (settings["lantern"])
	{
		if (vars.lantern == 0)
		{
			if (current.slot1 == "Lantern" || current.slot2 == "Lantern" || current.slot3 == "Lantern" || current.slot4 == "Lantern" || current.slot5 == "Lantern" || current.slot6 == "Lantern" || current.slot7 == "Lantern" || current.slot8 == "Lantern" || current.slot9 == "Lantern" || current.slot10 == "Lantern" || current.slot11 == "Lantern" || current.slot12 == "Lantern" || current.slot13 == "Lantern" || current.slot14 == "Lantern" || current.slot15 == "Lantern" || current.slot16 == "Lantern" || current.slot17 == "Lantern" || current.slot18 == "Lantern" || current.slot19 == "Lantern" || current.slot20 == "Lantern")
			{
				vars.lantern = 1;
				return true;
			}
		}
	}
	if (settings["arm"])
	{
		if (vars.arm == 0)
		{
			if (current.slot1 == "SerumMaterialA" || current.slot2 == "SerumMaterialA" || current.slot3 == "SerumMaterialA" || current.slot4 == "SerumMaterialA" || current.slot5 == "SerumMaterialA" || current.slot6 == "SerumMaterialA" || current.slot7 == "SerumMaterialA" || current.slot8 == "SerumMaterialA" || current.slot9 == "SerumMaterialA" || current.slot10 == "SerumMaterialA" || current.slot11 == "SerumMaterialA" || current.slot12 == "SerumMaterialA" || current.slot13 == "SerumMaterialA" || current.slot14 == "SerumMaterialA" || current.slot15 == "SerumMaterialA" || current.slot16 == "SerumMaterialA" || current.slot17 == "SerumMaterialA" || current.slot18 == "SerumMaterialA" || current.slot19 == "SerumMaterialA" || current.slot20 == "SerumMaterialA")
			{
				vars.arm = 1;
				return true;
			}
		}
	}
	if (settings["magnum"])
	{
		if (vars.magnum == 0)
		{
			if (current.slot1 == "Magnum" || current.slot2 == "Magnum" || current.slot3 == "Magnum" || current.slot4 == "Magnum" || current.slot5 == "Magnum" || current.slot6 == "Magnum" || current.slot7 == "Magnum" || current.slot8 == "Magnum" || current.slot9 == "Magnum" || current.slot10 == "Magnum" || current.slot11 == "Magnum" || current.slot12 == "Magnum" || current.slot13 == "Magnum" || current.slot14 == "Magnum" || current.slot15 == "Magnum" || current.slot16 == "Magnum" || current.slot17 == "Magnum" || current.slot18 == "Magnum" || current.slot19 == "Magnum" || current.slot20 == "Magnum")
			{
				vars.magnum = 1;
				return true;
			}
		}
	}
	if (settings["snakekey"])
	{
		if (vars.snakekey == 0)
		{
			if (current.slot1 == "MasterKey" || current.slot2 == "MasterKey" || current.slot3 == "MasterKey" || current.slot4 == "MasterKey" || current.slot5 == "MasterKey" || current.slot6 == "MasterKey" || current.slot7 == "MasterKey" || current.slot8 == "MasterKey" || current.slot9 == "MasterKey" || current.slot10 == "MasterKey" || current.slot11 == "MasterKey" || current.slot12 == "MasterKey" || current.slot13 == "MasterKey" || current.slot14 == "MasterKey" || current.slot15 == "MasterKey" || current.slot16 == "MasterKey" || current.slot17 == "MasterKey" || current.slot18 == "MasterKey" || current.slot19 == "MasterKey" || current.slot20 == "MasterKey")
			{
				vars.snakekey = 1;
				return true;
			}
		}
	}
	if (settings["redkeycard"])
	{
		if (vars.redkeycard == 0)
		{
			if (current.slot1 == "LucasCardKey2" || current.slot2 == "LucasCardKey2" || current.slot3 == "LucasCardKey2" || current.slot4 == "LucasCardKey2" || current.slot5 == "LucasCardKey2" || current.slot6 == "LucasCardKey2" || current.slot7 == "LucasCardKey2" || current.slot8 == "LucasCardKey2" || current.slot9 == "LucasCardKey2" || current.slot10 == "LucasCardKey2" || current.slot11 == "LucasCardKey2" || current.slot12 == "LucasCardKey2" || current.slot13 == "LucasCardKey2" || current.slot14 == "LucasCardKey2" || current.slot15 == "LucasCardKey2" || current.slot16 == "LucasCardKey2" || current.slot17 == "LucasCardKey2" || current.slot18 == "LucasCardKey2" || current.slot19 == "LucasCardKey2" || current.slot20 == "LucasCardKey2")
			{
				vars.redkeycard = 1;
				return true;
			}
		}
	}
	if (settings["bluekeycard"])
	{
		if (vars.bluekeycard == 0)
		{
			if (current.slot1 == "LucasCardKey" || current.slot2 == "LucasCardKey" || current.slot3 == "LucasCardKey" || current.slot4 == "LucasCardKey" || current.slot5 == "LucasCardKey" || current.slot6 == "LucasCardKey" || current.slot7 == "LucasCardKey" || current.slot8 == "LucasCardKey" || current.slot9 == "LucasCardKey" || current.slot10 == "LucasCardKey" || current.slot11 == "LucasCardKey" || current.slot12 == "LucasCardKey" || current.slot13 == "LucasCardKey" || current.slot14 == "LucasCardKey" || current.slot15 == "LucasCardKey" || current.slot16 == "LucasCardKey" || current.slot17 == "LucasCardKey" || current.slot18 == "LucasCardKey" || current.slot19 == "LucasCardKey" || current.slot20 == "LucasCardKey")
			{
				vars.bluekeycard = 1;
				return true;
			}
		}
	}
	if (settings["battery"])
	{
		if (vars.battery == 0)
		{
			if (current.slot1 == "Battery" || current.slot2 == "Battery" || current.slot3 == "Battery" || current.slot4 == "Battery" || current.slot5 == "Battery" || current.slot6 == "Battery" || current.slot7 == "Battery" || current.slot8 == "Battery" || current.slot9 == "Battery" || current.slot10 == "Battery" || current.slot11 == "Battery" || current.slot12 == "Battery" || current.slot13 == "Battery" || current.slot14 == "Battery" || current.slot15 == "Battery" || current.slot16 == "Battery" || current.slot17 == "Battery" || current.slot18 == "Battery" || current.slot19 == "Battery" || current.slot20 == "Battery")
			{
				vars.battery = 1;
				return true;
			}
		}
	}
	if (settings["candle"])
	{
		if (vars.candle == 0)
		{
			if (current.slot1 == "Candle" || current.slot2 == "Candle" || current.slot3 == "Candle" || current.slot4 == "Candle" || current.slot5 == "Candle" || current.slot6 == "Candle" || current.slot7 == "Candle" || current.slot8 == "Candle" || current.slot9 == "Candle" || current.slot10 == "Candle" || current.slot11 == "Candle" || current.slot12 == "Candle" || current.slot13 == "Candle" || current.slot14 == "Candle" || current.slot15 == "Candle" || current.slot16 == "Candle" || current.slot17 == "Candle" || current.slot18 == "Candle" || current.slot19 == "Candle" || current.slot20 == "Candle")
			{
				vars.candle = 1;
				return true;
			}
		}
	}
	if (settings["valve"])
	{
		if (vars.valve == 0)
		{
			if (current.slot1 == "Valve" || current.slot2 == "Valve" || current.slot3 == "Valve" || current.slot4 == "Valve" || current.slot5 == "Valve" || current.slot6 == "Valve" || current.slot7 == "Valve" || current.slot8 == "Valve" || current.slot9 == "Valve" || current.slot10 == "Valve" || current.slot11 == "Valve" || current.slot12 == "Valve" || current.slot13 == "Valve" || current.slot14 == "Valve" || current.slot15 == "Valve" || current.slot16 == "Valve" || current.slot17 == "Valve" || current.slot18 == "Valve" || current.slot19 == "Valve" || current.slot20 == "Valve")
			{
				vars.valve = 1;
				return true;
			}
		}
	}
	if (settings["timebomb"])
	{
		if (vars.timebomb == 0)
		{
			if (current.slot1 == "Timebomb" || current.slot2 == "Timebomb" || current.slot3 == "Timebomb" || current.slot4 == "Timebomb" || current.slot5 == "Timebomb" || current.slot6 == "Timebomb" || current.slot7 == "Timebomb" || current.slot8 == "Timebomb" || current.slot9 == "Timebomb" || current.slot10 == "Timebomb" || current.slot11 == "Timebomb" || current.slot12 == "Timebomb" || current.slot13 == "Timebomb" || current.slot14 == "Timebomb" || current.slot15 == "Timebomb" || current.slot16 == "Timebomb" || current.slot17 == "Timebomb" || current.slot18 == "Timebomb" || current.slot19 == "Timebomb" || current.slot20 == "Timebomb")
			{
				vars.timebomb = 1;
				return true;
			}
		}
	}
	if (settings["head"])
	{
		if (vars.head == 0)
		{
			if (current.slot1 == "SerumMaterialB" || current.slot2 == "SerumMaterialB" || current.slot3 == "SerumMaterialB" || current.slot4 == "SerumMaterialB" || current.slot5 == "SerumMaterialB" || current.slot6 == "SerumMaterialB" || current.slot7 == "SerumMaterialB" || current.slot8 == "SerumMaterialB" || current.slot9 == "SerumMaterialB" || current.slot10 == "SerumMaterialB" || current.slot11 == "SerumMaterialB" || current.slot12 == "SerumMaterialB" || current.slot13 == "SerumMaterialB" || current.slot14 == "SerumMaterialB" || current.slot15 == "SerumMaterialB" || current.slot16 == "SerumMaterialB" || current.slot17 == "SerumMaterialB" || current.slot18 == "SerumMaterialB" || current.slot19 == "SerumMaterialB" || current.slot20 == "SerumMaterialB")
			{
				vars.head = 1;
				return true;
			}
		}
	}
	if (settings["jacksback"])
	{
		if (vars.jacksback == 0)
		{
			if (current.slot1 == "SerumComplete" || current.slot2 == "SerumComplete" || current.slot3 == "SerumComplete" || current.slot4 == "SerumComplete" || current.slot5 == "SerumComplete" || current.slot6 == "SerumComplete" || current.slot7 == "SerumComplete" || current.slot8 == "SerumComplete" || current.slot9 == "SerumComplete" || current.slot10 == "SerumComplete" || current.slot11 == "SerumComplete" || current.slot12 == "SerumComplete" || current.slot13 == "SerumComplete" || current.slot14 == "SerumComplete" || current.slot15 == "SerumComplete" || current.slot16 == "SerumComplete" || current.slot17 == "SerumComplete" || current.slot18 == "SerumComplete" || current.slot19 == "SerumComplete" || current.slot20 == "SerumComplete")
			{
				vars.jacksback = 1;
				return true;
			}
		}
	}
	if (settings["hittheroadjack"])
	{
		if (vars.hittheroadjack == 0)
		{
			if (old.slot1 == "SerumComplete" && current.slot1 != "SerumComplete" && current.isPaused == 0 || old.slot2 == "SerumComplete" && current.slot2 != "SerumComplete" && current.isPaused == 0 || old.slot3 == "SerumComplete" && current.slot3 != "SerumComplete" && current.isPaused == 0 || old.slot4 == "SerumComplete" && current.slot4 != "SerumComplete" && current.isPaused == 0 || old.slot5 == "SerumComplete" && current.slot5 != "SerumComplete" && current.isPaused == 0 || old.slot6 == "SerumComplete" && current.slot6 != "SerumComplete" && current.isPaused == 0 || old.slot7 == "SerumComplete" && current.slot7 != "SerumComplete" && current.isPaused == 0 || old.slot8 == "SerumComplete" && current.slot8 != "SerumComplete" && current.isPaused == 0 || old.slot9 == "SerumComplete" && current.slot9 != "SerumComplete" && current.isPaused == 0 || old.slot10 == "SerumComplete" && current.slot10 != "SerumComplete" && current.isPaused == 0 || old.slot11 == "SerumComplete" && current.slot11 != "SerumComplete" && current.isPaused == 0 || old.slot12 == "SerumComplete" && current.slot12 != "SerumComplete" && current.isPaused == 0 || old.slot13 == "SerumComplete" && current.slot13 != "SerumComplete" && current.isPaused == 0 || old.slot14 == "SerumComplete" && current.slot14 != "SerumComplete" && current.isPaused == 0 || old.slot15 == "SerumComplete" && current.slot15 != "SerumComplete" && current.isPaused == 0 || old.slot16 == "SerumComplete" && current.slot16 != "SerumComplete" && current.isPaused == 0 || old.slot17 == "SerumComplete" && current.slot17 != "SerumComplete" && current.isPaused == 0 || old.slot18 == "SerumComplete" && current.slot18 != "SerumComplete" && current.isPaused == 0 || old.slot19 == "SerumComplete" && current.slot19 != "SerumComplete" && current.isPaused == 0 || old.slot20 == "SerumComplete" && current.slot20 != "SerumComplete" && current.isPaused == 0)
			{
				if (vars.isdead == 0)
				{
					vars.hittheroadjack = 1;
					return true;
				}
			}
		}
	}
	if (settings["boatcrash"])
	{
		if (vars.boatcrash == 0)
		{
			if (current.slot1 == "EvelynRadar1" || current.slot2 == "EvelynRadar1" || current.slot3 == "EvelynRadar1" || current.slot4 == "EvelynRadar1" || current.slot5 == "EvelynRadar1" || current.slot6 == "EvelynRadar1" || current.slot7 == "EvelynRadar1" || current.slot8 == "EvelynRadar1" || current.slot9 == "EvelynRadar1" || current.slot10 == "EvelynRadar1" || current.slot11 == "EvelynRadar1" || current.slot12 == "EvelynRadar1" || current.slot13 == "EvelynRadar1" || current.slot14 == "EvelynRadar1" || current.slot15 == "EvelynRadar1" || current.slot16 == "EvelynRadar1" || current.slot17 == "EvelynRadar1" || current.slot18 == "EvelynRadar1" || current.slot19 == "EvelynRadar1" || current.slot20 == "EvelynRadar1")
			{
				vars.boatcrash = 1;
				return true;
			}
		}
	}
	if (settings["fuse2"])
	{
		if (vars.fuse2 == 0)
		{
			if (current.slot1 == "FuseCh4" || current.slot2 == "FuseCh4" || current.slot3 == "FuseCh4" || current.slot4 == "FuseCh4" || current.slot5 == "FuseCh4" || current.slot6 == "FuseCh4" || current.slot7 == "FuseCh4" || current.slot8 == "FuseCh4" || current.slot9 == "FuseCh4" || current.slot10 == "FuseCh4" || current.slot11 == "FuseCh4" || current.slot12 == "FuseCh4" || current.slot13 == "FuseCh4" || current.slot14 == "FuseCh4" || current.slot15 == "FuseCh4" || current.slot16 == "FuseCh4" || current.slot17 == "FuseCh4" || current.slot18 == "FuseCh4" || current.slot19 == "FuseCh4" || current.slot20 == "FuseCh4")
			{
				vars.fuse2 = 1;
				return true;
			}
		}
	}
	if (settings["usedlantern"])
	{
		if (vars.usedlantern == 0)
		{
			if (old.slot1 == "Lantern" && current.slot1 != "Lantern" && current.isPaused == 0 || old.slot2 == "Lantern" && current.slot2 != "Lantern" && current.isPaused == 0 || old.slot3 == "Lantern" && current.slot3 != "Lantern" && current.isPaused == 0 || old.slot4 == "Lantern" && current.slot4 != "Lantern" && current.isPaused == 0 || old.slot5 == "Lantern" && current.slot5 != "Lantern" && current.isPaused == 0 || old.slot6 == "Lantern" && current.slot6 != "Lantern" && current.isPaused == 0 || old.slot7 == "Lantern" && current.slot7 != "Lantern" && current.isPaused == 0 || old.slot8 == "Lantern" && current.slot8 != "Lantern" && current.isPaused == 0 || old.slot9 == "Lantern" && current.slot9 != "Lantern" && current.isPaused == 0 || old.slot10 == "Lantern" && current.slot10 != "Lantern" && current.isPaused == 0 || old.slot11 == "Lantern" && current.slot11 != "Lantern" && current.isPaused == 0 || old.slot12 == "Lantern" && current.slot12 != "Lantern" && current.isPaused == 0 || old.slot13 == "Lantern" && current.slot13 != "Lantern" && current.isPaused == 0 || old.slot14 == "Lantern" && current.slot14 != "Lantern" && current.isPaused == 0 || old.slot15 == "Lantern" && current.slot15 != "Lantern" && current.isPaused == 0 || old.slot16 == "Lantern" && current.slot16 != "Lantern" && current.isPaused == 0 || old.slot17 == "Lantern" && current.slot17 != "Lantern" && current.isPaused == 0 || old.slot18 == "Lantern" && current.slot18 != "Lantern" && current.isPaused == 0 || old.slot19 == "Lantern" && current.slot19 != "Lantern" && current.isPaused == 0 || old.slot20 == "Lantern" && current.slot20 != "Lantern" && current.isPaused == 0)
			{
				if (vars.isdead == 0)
				{
					vars.usedlantern = 1;
					return true;
				}
			}
		}
	}
	if (settings["videotape"])
	{
		if (vars.videotape == 0)
		{
			if (current.slot1 == "FoundFootage050" || current.slot2 == "FoundFootage050" || current.slot3 == "FoundFootage050" || current.slot4 == "FoundFootage050" || current.slot5 == "FoundFootage050" || current.slot6 == "FoundFootage050" || current.slot7 == "FoundFootage050" || current.slot8 == "FoundFootage050" || current.slot9 == "FoundFootage050" || current.slot10 == "FoundFootage050" || current.slot11 == "FoundFootage050" || current.slot12 == "FoundFootage050" || current.slot13 == "FoundFootage050" || current.slot14 == "FoundFootage050" || current.slot15 == "FoundFootage050" || current.slot16 == "FoundFootage050" || current.slot17 == "FoundFootage050" || current.slot18 == "FoundFootage050" || current.slot19 == "FoundFootage050" || current.slot20 == "FoundFootage050")
			{
				vars.videotape = 1;
				return true;
			}
		}
	}
	if (settings["videotapeend"])
	{
		if (vars.videotapeend == 0)
		{
			if (current.slot1 != "MachineGun" && old.slot1 == "MachineGun" || current.slot2 != "MachineGun" && old.slot2 == "MachineGun" || current.slot3 != "MachineGun" && old.slot3 == "MachineGun" || current.slot4 != "MachineGun" && old.slot4 == "MachineGun" || current.slot5 != "MachineGun" && old.slot5 == "MachineGun" || current.slot6 != "MachineGun" && old.slot6 == "MachineGun" || current.slot7 != "MachineGun" && old.slot7 == "MachineGun" || current.slot8 != "MachineGun" && old.slot8 == "MachineGun" || current.slot9 != "MachineGun" && old.slot9 == "MachineGun" || current.slot10 != "MachineGun" && old.slot10 == "MachineGun" || current.slot11 != "MachineGun" && old.slot11 == "MachineGun" || current.slot12 != "MachineGun" && old.slot12 == "MachineGun" || current.slot13 != "MachineGun" && old.slot13 == "MachineGun" || current.slot14 != "MachineGun" && old.slot14 == "MachineGun" || current.slot15 != "MachineGun" && old.slot15 == "MachineGun" || current.slot16 != "MachineGun" && old.slot16 == "MachineGun" || current.slot17 != "MachineGun" && old.slot17 == "MachineGun" || current.slot18 != "MachineGun" && old.slot18 == "MachineGun" || current.slot19 != "MachineGun" && old.slot19 == "MachineGun" || current.slot20 != "MachineGun"  && old.slot20 == "MachineGun")
			{
				if (vars.isdead == 0)
				{
					vars.videotapeend = 1;
					return true;
				}
			}
		}
	}
	if (settings["lugwrench"])
	{
		if (vars.lugwrench == 0)
		{
			if (current.slot1 == "EvOpener" || current.slot2 == "EvOpener" || current.slot3 == "EvOpener" || current.slot4 == "EvOpener" || current.slot5 == "EvOpener" || current.slot6 == "EvOpener" || current.slot7 == "EvOpener" || current.slot8 == "EvOpener" || current.slot9 == "EvOpener" || current.slot10 == "EvOpener" || current.slot11 == "EvOpener" || current.slot12 == "EvOpener" || current.slot13 == "EvOpener" || current.slot14 == "EvOpener" || current.slot15 == "EvOpener" || current.slot16 == "EvOpener" || current.slot17 == "EvOpener" || current.slot18 == "EvOpener" || current.slot19 == "EvOpener" || current.slot20 == "EvOpener")
			{
				vars.lugwrench = 1;
				return true;
			}
		}
	}
	if (settings["powercable"])
	{
		if (vars.powercable == 0)
		{
			if (current.slot1 == "EvCable" || current.slot2 == "EvCable" || current.slot3 == "EvCable" || current.slot4 == "EvCable" || current.slot5 == "EvCable" || current.slot6 == "EvCable" || current.slot7 == "EvCable" || current.slot8 == "EvCable" || current.slot9 == "EvCable" || current.slot10 == "EvCable" || current.slot11 == "EvCable" || current.slot12 == "EvCable" || current.slot13 == "EvCable" || current.slot14 == "EvCable" || current.slot15 == "EvCable" || current.slot16 == "EvCable" || current.slot17 == "EvCable" || current.slot18 == "EvCable" || current.slot19 == "EvCable" || current.slot20 == "EvCable")
			{
				vars.powercable = 1;
				return true;
			}
		}
	}
	if (settings["fuse3"])
	{
		if (vars.fuse3 == 0)
		{
			if (current.slot1 == "FuseCh4" || current.slot2 == "FuseCh4" || current.slot3 == "FuseCh4" || current.slot4 == "FuseCh4" || current.slot5 == "FuseCh4" || current.slot6 == "FuseCh4" || current.slot7 == "FuseCh4" || current.slot8 == "FuseCh4" || current.slot9 == "FuseCh4" || current.slot10 == "FuseCh4" || current.slot11 == "FuseCh4" || current.slot12 == "FuseCh4" || current.slot13 == "FuseCh4" || current.slot14 == "FuseCh4" || current.slot15 == "FuseCh4" || current.slot16 == "FuseCh4" || current.slot17 == "FuseCh4" || current.slot18 == "FuseCh4" || current.slot19 == "FuseCh4" || current.slot20 == "FuseCh4")
			{
				if (settings["fuse2"])
				{
					if (vars.fuse2 == 1)
					{
						vars.fuse3 = 1;
						return true;
					}
				}
				else
				{
					vars.fuse3 = 1;
					return true;
				}
			}
		}
	}
	if (settings["miacomplete"])
	{
		if (vars.miacomplete == 0)
		{
			if (current.slot1 == "EvelynRadar4")
			{
				vars.miacomplete = 1;
				return true;
			}
		}
	}
	if (settings["necrotoxin"])
	{
		if (vars.necrotoxin == 0)
		{
			if (current.slot1 == "SerumTypeE" || current.slot2 == "SerumTypeE" || current.slot3 == "SerumTypeE" || current.slot4 == "SerumTypeE" || current.slot5 == "SerumTypeE" || current.slot6 == "SerumTypeE" || current.slot7 == "SerumTypeE" || current.slot8 == "SerumTypeE" || current.slot9 == "SerumTypeE" || current.slot10 == "SerumTypeE" || current.slot11 == "SerumTypeE" || current.slot12 == "SerumTypeE" || current.slot13 == "SerumTypeE" || current.slot14 == "SerumTypeE" || current.slot15 == "SerumTypeE" || current.slot16 == "SerumTypeE" || current.slot17 == "SerumTypeE" || current.slot18 == "SerumTypeE" || current.slot19 == "SerumTypeE" || current.slot20 == "SerumTypeE")
			{
				vars.necrotoxin = 1;
				return true;
			}
		}
	}
	if (settings["injectedbitch"])
	{
		if (vars.injectedbitch == 0)
		{
			if (old.slot1 == "SerumTypeE" && current.slot1 != "SerumTypeE" && current.isPaused == 0 || old.slot2 == "SerumTypeE" && current.slot2 != "SerumTypeE" && current.isPaused == 0 || old.slot3 == "SerumTypeE" && current.slot3 != "SerumTypeE" && current.isPaused == 0 || old.slot4 == "SerumTypeE" && current.slot4 != "SerumTypeE" && current.isPaused == 0 || old.slot5 == "SerumTypeE" && current.slot5 != "SerumTypeE" && current.isPaused == 0 || old.slot6 == "SerumTypeE" && current.slot6 != "SerumTypeE" && current.isPaused == 0 || old.slot7 == "SerumTypeE" && current.slot7 != "SerumTypeE" && current.isPaused == 0 || old.slot8 == "SerumTypeE" && current.slot8 != "SerumTypeE" && current.isPaused == 0 || old.slot9 == "SerumTypeE" && current.slot9 != "SerumTypeE" && current.isPaused == 0 || old.slot10 == "SerumTypeE" && current.slot10 != "SerumTypeE" && current.isPaused == 0 || old.slot11 == "SerumTypeE" && current.slot11 != "SerumTypeE" && current.isPaused == 0 || old.slot12 == "SerumTypeE" && current.slot12 != "SerumTypeE" && current.isPaused == 0 || old.slot13 == "SerumTypeE" && current.slot13 != "SerumTypeE" && current.isPaused == 0 || old.slot14 == "SerumTypeE" && current.slot14 != "SerumTypeE" && current.isPaused == 0 || old.slot15 == "SerumTypeE" && current.slot15 != "SerumTypeE" && current.isPaused == 0 || old.slot16 == "SerumTypeE" && current.slot16 != "SerumTypeE" && current.isPaused == 0 || old.slot17 == "SerumTypeE" && current.slot17 != "SerumTypeE" && current.isPaused == 0 || old.slot18 == "SerumTypeE" && current.slot18 != "SerumTypeE" && current.isPaused == 0 || old.slot19 == "SerumTypeE" && current.slot19 != "SerumTypeE" && current.isPaused == 0 || old.slot20 == "SerumTypeE" && current.slot20 != "SerumTypeE" && current.isPaused == 0)
			{
				if (vars.isdying == 0)
				{
					vars.injectedbitch = 1;
					return true;
				}
			}
		}
	}
	if (settings["albert"])
	{
		if (vars.albert == 0)
		{
			if (current.slot1 == "Handgun_Albert" || current.slot2 == "Handgun_Albert" || current.slot3 == "Handgun_Albert" || current.slot4 == "Handgun_Albert" || current.slot5 == "Handgun_Albert" || current.slot6 == "Handgun_Albert" || current.slot7 == "Handgun_Albert" || current.slot8 == "Handgun_Albert" || current.slot9 == "Handgun_Albert" || current.slot10 == "Handgun_Albert" || current.slot11 == "Handgun_Albert" || current.slot12 == "Handgun_Albert" || current.slot13 == "Handgun_Albert" || current.slot14 == "Handgun_Albert" || current.slot15 == "Handgun_Albert" || current.slot16 == "Handgun_Albert" || current.slot17 == "Handgun_Albert" || current.slot18 == "Handgun_Albert" || current.slot19 == "Handgun_Albert" || current.slot20 == "Handgun_Albert")
			{
				vars.albert = 1;
				return true;
			}
		}
	}
	if (settings["grenadelauncher"])
	{
		if (vars.grenadelauncher == 0)
		{
			if (current.slot1 == "GrenadeLauncher" || current.slot2 == "GrenadeLauncher" || current.slot3 == "GrenadeLauncher" || current.slot4 == "GrenadeLauncher" || current.slot5 == "GrenadeLauncher" || current.slot6 == "GrenadeLauncher" || current.slot7 == "GrenadeLauncher" || current.slot8 == "GrenadeLauncher" || current.slot9 == "GrenadeLauncher" || current.slot10 == "GrenadeLauncher" || current.slot11 == "GrenadeLauncher" || current.slot12 == "GrenadeLauncher" || current.slot13 == "GrenadeLauncher" || current.slot14 == "GrenadeLauncher" || current.slot15 == "GrenadeLauncher" || current.slot16 == "GrenadeLauncher" || current.slot17 == "GrenadeLauncher" || current.slot18 == "GrenadeLauncher" || current.slot19 == "GrenadeLauncher" || current.slot20 == "GrenadeLauncher")
			{
				vars.grenadelauncher = 1;
				return true;
			}
		}
	}
	if (settings["welcome2family"])
	{
		if (vars.welcome2family == 0)
		{
			if (current.map == "c01_Outside01" && current.slot1 != "MailMia")
			{
				vars.welcome2family = 1;
				return true;
			}
		}
	}
	if (settings["trailer"])
	{
		if (vars.trailer == 0)
		{
			if (current.map == "c03_TrailerHouse")
			{
				vars.trailer = 1;
				return true;
			}
		}
	}
	if (settings["oldhouse"])
	{
		if (vars.oldhouse == 0)
		{
			if (current.map == "c03_OldHouse1FEntrance01")
			{
				vars.oldhouse = 1;
				return true;
			}
		}
	}
	if (settings["tvroom"])
	{
		if (vars.tvroom == 0)
		{
			if (current.map == "c03_LeftArea2FTvRoom")
			{
				vars.tvroom = 1;
				return true;
			}
		}
	}
	if (settings["crowdoor"])
	{
		if (vars.crowdoor == 0)
		{
			if (current.map == "c03_OldHouse2FHallway02")
			{
				vars.crowdoor = 1;
				return true;
			}
		}
	}
	if (settings["end"])
	{
		if (vars.end == 0)
		{
			if (old.slot1 == "Handgun_Albert" && current.slot1 != "Handgun_Albert")
			{
				vars.end = 1;
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