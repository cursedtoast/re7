//Resident Evil 7 Autosplitter
//By CursedToast 1/28/2017

//Special thanks to:
//CarcinogenSDA (you know why)
//Dchaps - programming support
//shiftweave - programming support
//mgr.inz.Player - inventory memory value support
//Theumer115 - inventory memory value support
//DarkByte - inventory memory value support
//Nexusphobiker - helping me find the most updated pointers in the 2/6/2017 RE7 update, and for teaching me how to find them again in the future.

state("re7", "1.1")
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
	string128 map : "re7.exe", 0x07046390, 0x700, 0x0;
	int isdying : "re7.exe", 0x0707FCD0, 0x60;
	//int coins : "re7.exe", 0x07047D58, 0x5A0, 0x170, 0x40, 0x80, 0x20;
	//int files : "re7.exe", 0x07046398, 0xC0, 0x3B8, 0xB0, 0x78, 0x490; WIP. Coin and file count memory value is differnt per difficulty. This value is for Normal, apparently. Come back later when you found the difficulty memory value, I suppose.
}

state("re7", "1.2")
{
	int isPaused : "re7.exe", 0x708E260, 0x28, 0x30, 0x58, 0x730;
	string128 slot1 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x30, 0x28, 0x80, 0x24;
	string128 slot2 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x38, 0x28, 0x80, 0x24;
	string128 slot3 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x40, 0x28, 0x80, 0x24;
	string128 slot4 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x48, 0x28, 0x80, 0x24;
	string128 slot5 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x50, 0x28, 0x80, 0x24;
	string128 slot6 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x58, 0x28, 0x80, 0x24;
	string128 slot7 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x60, 0x28, 0x80, 0x24;
	string128 slot8 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x68, 0x28, 0x80, 0x24;
	string128 slot9 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x70, 0x28, 0x80, 0x24;
	string128 slot10 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x78, 0x28, 0x80, 0x24;
	string128 slot11 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x80, 0x28, 0x80, 0x24;
	string128 slot12 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x88, 0x28, 0x80, 0x24;
	string128 slot13 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x90, 0x28, 0x80, 0x24;
	string128 slot14 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0x98, 0x28, 0x80, 0x24;
	string128 slot15 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xA0, 0x28, 0x80, 0x24;
	string128 slot16 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xA8, 0x28, 0x80, 0x24;
	string128 slot17 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xB0, 0x28, 0x80, 0x24;
	string128 slot18 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xB8, 0x28, 0x80, 0x24;
	string128 slot19 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xC0, 0x28, 0x80, 0x24;
	string128 slot20 : "re7.exe", 0x07091CA0, 0x60, 0x20, 0xC8, 0x28, 0x80, 0x24;
	string128 map : "re7.exe", 0x7058360, 0x700, 0x0;
	int isdying : "re7.exe", 0x07091CA0, 0x60;
}

state("re7", "1.3")
{
	int isPaused : "re7.exe", 0x071116A8, 0x28, 0x30, 0x58, 0x730;
	string128 slot1 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x30, 0x28, 0x80, 0x24;
	string128 slot2 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x38, 0x28, 0x80, 0x24;
	string128 slot3 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x40, 0x28, 0x80, 0x24;
	string128 slot4 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x48, 0x28, 0x80, 0x24;
	string128 slot5 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x50, 0x28, 0x80, 0x24;
	string128 slot6 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x58, 0x28, 0x80, 0x24;
	string128 slot7 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x60, 0x28, 0x80, 0x24;
	string128 slot8 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x68, 0x28, 0x80, 0x24;
	string128 slot9 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x70, 0x28, 0x80, 0x24;
	string128 slot10 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x78, 0x28, 0x80, 0x24;
	string128 slot11 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x80, 0x28, 0x80, 0x24;
	string128 slot12 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x88, 0x28, 0x80, 0x24;
	string128 slot13 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x90, 0x28, 0x80, 0x24;
	string128 slot14 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0x98, 0x28, 0x80, 0x24;
	string128 slot15 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xA0, 0x28, 0x80, 0x24;
	string128 slot16 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xA8, 0x28, 0x80, 0x24;
	string128 slot17 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xB0, 0x28, 0x80, 0x24;
	string128 slot18 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xB8, 0x28, 0x80, 0x24;
	string128 slot19 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xC0, 0x28, 0x80, 0x24;
	string128 slot20 : "re7.exe", 0x070DADB0, 0x60, 0x20, 0xC8, 0x28, 0x80, 0x24;
	string128 map : "re7.exe", 0x071492F8, 0x700, 0x0;
	int isdying : "re7.exe", 0x070DADB0, 0x60;
}

startup
{
	settings.Add("version", false, "Autosplitter Version 4.0.0");
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
	settings.Add("fuse2", false, "Fuse 2 (ship)");
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
	vars.machinegun = 0;
	
	if (modules.First().ModuleMemorySize == 241680384)
	{
		version = "1.2";
	}
	else if (modules.First().ModuleMemorySize == 248446976)
	{
		version = "1.3";
	}
	else
	{
		version = "1.1";
	}
}


start
{
    return current.map == "c04_Ship3FInfirmaryPast" && old.map != current.map; 
}

update
{
	List<string> list = new List<string>();
	list.Add(current.slot1);
	list.Add(current.slot2);
	list.Add(current.slot3);
	list.Add(current.slot4);
	list.Add(current.slot5);
	list.Add(current.slot6);
	list.Add(current.slot7);
	list.Add(current.slot8);
	list.Add(current.slot9);
	list.Add(current.slot10);
	list.Add(current.slot11);
	list.Add(current.slot12);
	list.Add(current.slot13);
	list.Add(current.slot14);
	list.Add(current.slot15);
	list.Add(current.slot16);
	list.Add(current.slot17);
	list.Add(current.slot18);
	list.Add(current.slot19);
	list.Add(current.slot20);
	string[] inventorySlots = list.ToArray();
	vars.inventorySlots = inventorySlots;

	vars.haschainsaw = 0;
	vars.serumCount = 0;
	vars.haslantern = 0;
	vars.hasmachinegun = 0;
	vars.hasnecrotoxin = 0;

    //print(modules.First().ModuleMemorySize.ToString());
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

	// maps being entered for first time
	if (current.map != old.map) {
		switch((string)current.map) {
			case "c01_Corridor01":
				if (vars.guesthouse == 0) {
					vars.guesthouse = 1;
					return settings["guesthouse"];
				}
				break;
			case "c01_Outside01":
				if (vars.welcome2family == 0 && current.slot1 != "MailMia") {
					vars.welcome2family = 1;
					return settings["welcome2family"];
				}
				break;
			case "c03_TrailerHouse":
				if (vars.trailer == 0) {
					vars.trailer = 1;
					return settings["trailer"];
				}
				break;
			case "c03_OldHouse1FEntrance01":
				if (vars.oldhouse == 0) {
					vars.oldhouse = 1;
					return settings["oldhouse"];
				}
				break;
			case "c03_LeftArea2FTvRoom":
				if (vars.tvroom == 0) {
					vars.tvroom = 1;
					return settings["tvroom"];
				}
				break;
			case "c03_OldHouse2FHallway02":
				if (vars.crowdoor == 0) {
					vars.crowdoor = 1;
					return settings["crowdoor"];
				}
				break;
		}
	}

	// items being recieved for first time
	foreach (string item in vars.inventorySlots) {
		switch((string)item) {
			case null:
				// skip this slot
				break;
			case "ChainCutter":
				if (vars.boltcutters == 0) {
					vars.boltcutters = 1;
					return settings["boltcutters"];
				}
				break;
			case "HandAxe":
				if (vars.axe == 0) {
					vars.axe = 1;
					return settings["axe"];
				}
				break;
			case "Fuse":
				if (vars.fuse == 0) {
					vars.fuse = 1;
					return settings["fuse"];
				}
				break;
			case "Handgun_M19":
				if (vars.m19 == 0) {
					vars.m19 = 1;
					return settings["m19"];
				}
				break;
			case "FloorDoorKey":
				if (vars.hatchkey == 0) {
					vars.hatchkey = 1;
					return settings["hatchkey"];
				}
				break;
			case "Knife":
				if (vars.knife == 0) {
					vars.knife = 1;
					return settings["knife"];
				}
				break;
			case "EthanCarKey":
				if (vars.carkey == 0) {
					vars.carkey = 1;
					return settings["carkey"];
				}
				break;
			case "Handgun_G17":
				if (vars.g17 == 0) {
					vars.g17 = 1;
					return settings["g17"];
				}
				break;
			case "EntranceHallKey":
				if (vars.oxstatue == 0) {
					vars.oxstatue = 1;
					return settings["oxstatue"];
				}
				break;
			case "PendulumClock":
				if (vars.clockpendulum == 0) {
					vars.clockpendulum = 1;
					return settings["clockpendulum"];
				}
				break;
			case "SilhouettePazzlePiece":
				if (vars.woodenstatue == 0) {
					vars.woodenstatue = 1;
					return settings["woodenstatue"];
				}
				break;
			case "3CrestKeyA":
				if (vars.bluedoghead == 0) {
					vars.bluedoghead = 1;
					return settings["bluedoghead"];
				}
				break;
			case "3CrestKeyB":
				if (vars.whitedoghead == 0) {
					vars.whitedoghead = 1;
					return settings["whitedoghead"];
				}
				break;
			case "WorkroomKey":
				if (vars.dissectionroomkey == 0) {
					vars.dissectionroomkey = 1;
					return settings["dissectionroomkey"];
				}
				break;
			case "MorgueKey":
				if (vars.scorpionkey == 0) {
					vars.scorpionkey = 1;
					return settings["scorpionkey"];
				}
				break;
			case "ChainSaw":
				vars.haschainsaw = 1;
				if (vars.chainsaw == 0) {
					vars.chainsaw = 1;
					return settings["chainsaw"];
				}
				break;
			case "3CrestKeyC":
				if (vars.reddoghead == 0) {
					vars.reddoghead = 1;
					return settings["reddoghead"];
				}
				break;
			case "BurnerPartsA":
				if (vars.burnergrip == 0) {
					vars.burnergrip = 1;
					return settings["burnergrip"];
				}
				break;
			case "BurnerPartsB":
				if (vars.burnernozzle == 0) {
					vars.burnernozzle = 1;
					return settings["burnernozzle"];
				}
				break;
			case "SilhouettePazzlePieceOldHouse":
				if (vars.stonestatue == 0) {
					vars.stonestatue = 1;
					return settings["stonestatue"];
				}
				break;
			case "Crank":
				if (vars.crank == 0) {
					vars.crank = 1;
					return settings["crank"];
				}
				break;
			case "TalismanKey":
				if (vars.crowkey == 0) {
					vars.crowkey = 1;
					return settings["crowkey"];
				}
				break;
			case "Lantern":
				vars.haslantern = 1;
				if (vars.lantern == 0) {
					vars.lantern = 1;
					return settings["lantern"];
				}
				break;
			case "SerumMaterialA":
				if (vars.arm == 0) {
					vars.arm = 1;
					return settings["arm"];
				}
				break;
			case "Magnum":
				if (vars.magnum == 0) {
					vars.magnum = 1;
					return settings["magnum"];
				}
				break;
			case "MasterKey":
				if (vars.snakekey == 0) {
					vars.snakekey = 1;
					return settings["snakekey"];
				}
				break;
			case "LucasCardKey2":
				if (vars.redkeycard == 0) {
					vars.redkeycard = 1;
					return settings["redkeycard"];
				}
				break;
			case "LucasCardKey":
				if (vars.bluekeycard == 0) {
					vars.bluekeycard = 1;
					return settings["bluekeycard"];
				}
				break;
			case "Battery":
				if (vars.battery == 0) {
					vars.battery = 1;
					return settings["battery"];
				}
				break;
			case "Candle":
				if (vars.candle == 0) {
					vars.candle = 1;
					return settings["candle"];
				}
				break;
			case "Valve":
				if (vars.valve == 0) {
					vars.valve = 1;
					return settings["valve"];
				}
				break;
			case "Timebomb":
				if (vars.timebomb == 0) {
					vars.timebomb = 1;
					return settings["timebomb"];
				}
				break;
			case "SerumMaterialB":
				if (vars.head == 0) {
					vars.head = 1;
					return settings["head"];
				}
				break;
			case "SerumComplete":
				vars.serumCount++;
				if (vars.jacksback == 0) {
					vars.jacksback = 1;
					return settings["jacksback"];
				}
				break;		
			case "EvelynRadar1":
				if (vars.boatcrash == 0) {
					vars.boatcrash = 1;
					return settings["boatcrash"];
				}
				break;
			case "FuseCh4":
				if (vars.fuse2 == 0 && current.map != "c04_Ship1FCorridor") {
					vars.fuse2 = 1;
					return settings["fuse2"];
				}
				else if (vars.fuse3 == 0 && current.map == "c04_Ship1FCorridor") { 
					vars.fuse3 = 1;
					return settings["fuse3"];
				}
				break;
			case "FoundFootage050":
				if (vars.videotape == 0) {
					vars.videotape = 1;
					return settings["videotape"];
				}
				break;	
			case "MachineGun":
				vars.machinegun = 1;
				vars.hasmachinegun = 1;
				break;
			case "EvOpener":
				if (vars.videotape == 0) {
					vars.videotape = 1;
					return settings["videotape"];
				}
				break;
			case "EvCable":
				if (vars.powercable == 0) {
					vars.powercable = 1;
					return settings["powercable"];
				}
				break;
			case "EvelynRadar4":
				if (vars.miacomplete == 0) {
					vars.miacomplete = 1;
					return settings["miacomplete"];
				}
				break;
			case "SerumTypeE":
				vars.hasnecrotoxin = 1;
				if (vars.necrotoxin == 0) {
					vars.necrotoxin = 1;
					return settings["necrotoxin"];
				}
				break;
			case "Handgun_Albert":
				if (vars.albert == 0) {
					vars.albert = 1;
					return settings["albert"];
				}
				break;	
			case "GrenadeLauncher":
				if (vars.grenadelauncher == 0) {
					vars.grenadelauncher = 1;
					return settings["grenadelauncher"];
				}
				break;	
		}
	}

	// Chainsaw Duel
	if (vars.chainsawduel == 0 && vars.isdead == 0 && vars.chainsaw == 1 && vars.haschainsaw == 0) {
		vars.chainsawduel = 1;
		return settings["chainsawduel"];
	}

	if (vars.hittheroadjack == 0 && vars.serumCount == 1) {
		vars.hittheroadjack = 1;
		return settings["hittheroadjack"];
	}

	if (vars.usedlantern == 0 && vars.isdead == 0 && current.isPaused == 0 && vars.lantern == 1 && vars.haslantern == 0) {
		vars.usedlantern = 1;
		return settings["usedlantern"];
	}

	if (vars.videotapeend == 0 && vars.machinegun == 1 && vars.hasmachinegun == 0 && vars.isdead == 0) {
		vars.videotapeend = 1;
		return settings["videotapeend"];
	}

	if (vars.injectedbitch == 0 && vars.isdead == 0 && vars.necrotoxin == 1 && vars.hasnecrotoxin == 0) {
		vars.injectedbitch = 1;
		return settings["injectedbitch"];
	}

	if (vars.end == 0 && old.slot1 == "Handgun_Albert" && current.slot1 != "Handgun_Albert") {
		vars.end = 1;
		return settings["end"];
	}

}

isLoading
{
	return current.isPaused == 1;
}
