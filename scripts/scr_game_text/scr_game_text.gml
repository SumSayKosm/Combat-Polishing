// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
	////----------------------PRACTICE---------------////
	case "Cat Tower":
		scr_text("The Tower of the Gods");
		scr_text("Its seen better days.");
		break;
		
	case "purple chest":
		scr_text("Who knows what could be inside?");
		break;
		
	case "beartrap":
		scr_text("You miserable existance will soon be at an end...");
		scr_text("Its only a matter of time, you damned rodent...");
		break;
		
	case "Blek Bed":
		scr_text("Your bed.");
		scr_text("It's comfy sheets... call to you...");
		scr_text("...");
		scr_text("...you manage to resist the call to slumber...");
		break;
		
		case "Weezer":
		scr_text("You don't know how you got this picture");
		scr_text("...");
		scr_text("It looks just like somebody, but you don't know who.");
		break;
		
		case "Wall Shelf":
		scr_text("You couldn't resist the urge to knock something off this shelf.");
		scr_text("Lumen better get on cleaning this up!");
		break;
		
		case "toilet":
		scr_text("This thing is just... out in the open...");
		scr_text("You aren't sure what you expected.");
		break;
		
		case "Dining room":
		scr_text("This table has three chairs around it.");
		scr_text("Two of the chairs are covered in a layer of dust.");
		break;
		
		case "Texture Test":
		scr_text("Welcome to the Texture Testing Room!");
		scr_text("Whu-what?! Who said that-", "Blek shock");
		scr_text("This is where all the tiles, objects, and everything else Matt needs to test will be kept!");
		scr_text("Isn't that exciting?!");
		scr_text("Uhhhh-", "Blek confused");
		scr_text("SAY IT!");
		scr_text("I-IT'S EXCITING! V-VERY EXCITING!", "Blek shock");
		scr_text("Good! Feel free to have a look around!");
		break;
		
		case "TT Trout":
		scr_text("...Blek...", "Trout Base", -1);
		break;
		
		case "Cutscene Placeholder":
		scr_text("Cutscene Placeholder. Talk to Character Sprite for dialouge.");
		break;
		
		case "Machinot Approach":
		scr_text("Who's that over there?", "Blek listen");
		scr_text("Holy shit is that Machinot?", "Blek shock");
		break;
		
			
		case "Nerves Test Room":
		scr_text("DIALOUGE TEST = NERVES");
		scr_text("Hey! It's Nerves!", "Blek");
		scr_text("Hello, Blek. Good to see you, my feline friend.", "Nerves base", -1);
		scr_text("Who's a good boy?! Who's a good boy?", "Blek");
		scr_text("I'm a good 'man', Blek.", "Nerves unamused", -1);
		scr_text("Right, right, sorry!", "Blek listen");
		scr_text("Good 'man.'", "Blek");
		scr_text("Thank you.", "Nerves base", -1);
		scr_text("And this is what I'd look like if I joined your party!", "Nerves base");
		scr_text("Wow! Sooooo cool!", "Blek");
		break;
		
		case "Machinot":
		scr_text("Wow! It's one of the world famous Machinots!", "Blek wonder");
		scr_text("Can you say your classic line, please?", "Blek");
		scr_text(".....", "Machinot", -1);
		scr_text("Amazing! Now do it over here on this side!", "Blek wonder");
		scr_text(".....", "Machinot");
		scr_text("Soooooooo cool!", "Blek wonder");
			scr_text_float(0, 30);
		break;
		

		
		
		
		
		
		
		
		
		
		
		////--------------Prolouge-----------///////
		
		case "Burn Spot":
		scr_text("This wall is covered in ash and burn marks.");
		scr_text("It smells like burned fish...");
		break; 
		
		case "Wake Up 1":
		scr_text("Where...", "Blek confused");
		break;
		
		case "Wake Up 2":
		scr_text( "...am I?", "Blek confused");
		break;
		
		case "Armor Stand 1":
		scr_text("A wooden stand holding a beautifully crafted breastplate.");
		scr_text("...");
		scr_text("Upon closer inspection, the wooden pole is attached to the breastplate. It cannot come off.");
		inst_7D49DF01.text_id = "Armor Stand 1 B";
		break;
		
		case "Armor Stand 1 B":
		scr_text("A breastplate with attachment issues.");
		break;
		
		case "Mouse Hole 1":
		scr_text("A door, much smaller than the one next to it.");
		scr_text("Is it smaller, or a different breed?");
		scr_text("Perhaps its just a mouse hole.");
		break;
		
		case "Mouse Hole 2":
		scr_text("A mouse hole, possibly.");
		scr_text("It COULD still be a small breed of door...");
		scr_text("Best not to ponder about the nature of this hole for too long.");
		break;
		
	
		case "Sword 1":
		scr_text("A sword jammed into the ground.");
		scr_text("A gentle tug isn't enough to pull it out.");
		scr_text("At this rate, you'll never be the ruler of this place.");
		break;
		
		case "Wake Up 3":
		scr_text("I know I just saw someone...", "Blek shock");
		scr_text("Hey! Come back!", "Blek shock");
		break;
		
		case "Sign 1":
		scr_text("Press Z to look at objects!");
		break;
		
		case "Sign 2":
		scr_text("If you're reading this, you're good at following directions!");
		break;
		
		case "Sign 3":
		scr_text("Press C to Sprint. Make sure to pace yourself!");
		break;
		
		case "Grave Point":
		scr_text("Your Ghost Cat is resting peacefully here.");
		scr_text("Perhaps you should do the same.");
		scr_text("Save your game?");
			scr_option("Save", "Success");
			scr_option("Do not", "Do not save");
		break;
		
			case "Success":
			scr_text("Save Successful.")
			scr_text_float(0, 18)
			break;
		
			case "Do not save":
			scr_text("Another time, then...");
			break;
		
		case "Armor Stand 2":
		scr_text("A basic armor stand, the same as all the others.");
		break;
		
		case "Armor Stand 3":
		scr_text("An armor stand with a little more flair.");
		break;
		
		case "Armor Stand 4":
		scr_text("An armor stand with a large dent in it's side");
		scr_text("It seems like it recently had its feelings hurt.");
		break;
		
		case "Sign 4":
		scr_text("Nobody can turn back time. We all must live with our mistakes, no matter how horrible they truly are.");
		scr_text("But nobody's watching... so maybe the reset candle can help.");
		break;
		
		case "Longcat Painting 1":
		scr_text("A painting of a rather small cat.");
		break;
		
		case "Longcat Painting 2":
		scr_text("A familiar painting depicting a rather long cat");
		break;
		
		case "Longcat Painting 3":
		scr_text("A familiar painting depicting a very long cat.");
		scr_text("You're beginning to see a pattern here...");
		break;
		
		case "Longcat Painting 4":
		scr_text("Ok, this is getting ridiculous.");
		break;
		
		case "Fancy Cat Painting":
		scr_text("A painting of a very fancy cat holding a pipe.");
		break;
		
		case "Apple Cat Painting":
		scr_text("A painting of a cat, determined to hide its own identity and conform to");
		scr_text("the expectations of a modern buisness feline.");
		scr_text("There's an apple in front of it's face.");
		break;
		
		case "Creepy Cat Painting":
		scr_text("A painting of a cat peering in through a window.");
		scr_text("Creepy.");
		break;
		
		case "Earring Cat Painting":
		scr_text("A painting of a cat with a very fancy earring.");
		scr_text("The earring looks a bit heavy. It's definetly uncomfortable.");
		break;
		
		case "Urn Placeholder":
		scr_text("An urn with strange cat ears.");
		scr_text("Check inside the urn?");
			scr_option("Check", "Urn Placeholder - Check");
			scr_option("Do not", "Urn Placeholder - Do not");
			break;
			
			case "Urn Placeholder - Check":
			scr_text("ITEM VALUE DESC");
			break;
			
			case "Urn Placeholder - Do not":
			break;
			
		case "Arms Array":
		scr_text("A company of equipment.");
		scr_text("None of which is for you.");
		break;
			
		case "Sign 5":
		scr_text("VILLAGE OF FANG AND BONE >");
		break;
			
		case "Sharpe Note 1":
		scr_text("A note pinned to the wall. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 1 - Read");
			scr_option("Do not", "Sharpe Note 1 - Do not");
			break;
			
			case "Sharpe Note 1 - Read":
			scr_text("'Seriously? SERIOUSLY? Who the hell needs a heath tonic when there's NOTHING around to fight!'");
			scr_text_float(11, 21)
			scr_text("'Everywhere I look, every corner I turn, it's just walls, walls, and more walls! NOTHING else.'");
			scr_text("'At least I've got my instruments to keep me company, even IF they won't stop bickering with each other.'");
			scr_text("'They'll keep me sane, at least. You won't catch ol' Sharpe going mad in a place like this...'");
			scr_text("The note is signed with a large, unreadable signature.")
			scr_text("Who could've written this note? I thought Trout and I were the only two living beings here...", "Blek base");
			break;
			
			case "Sharpe Note 1 - Do not":
			scr_text("You decide not to read the strange note");
			break;
		
		case "Sharpe Note 2":
		scr_text("A note pinned to the wall. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 2 - Read");
			scr_option("Do not", "Sharpe Note 2 - Do not");
			break;
		
			case "Sharpe Note 2 - Read":
			scr_text("'AAAAAAAGGGGHHHHH!'");
			scr_text("!!!", "Blek shock");
			scr_text("'This place SUCKS! The minute I find some things to fight, they all run away!'");
			scr_text("'What a bunch of chickens! Too scared to fight me? (And my small army of instruments, I guess)'");
			scr_text("'I got so mad I punched the armor stand a few feet away.'");
			scr_text("'Now I'm mad AND my fist hurts! This BLOWS!'");
			scr_text("'And what's with all this cat stuff on the walls?'");
			scr_text("'I swear, the next people I see are getting robbed.'");
			scr_text("The note is signed with a large, unreadable signature.");
			break;
			
			
			case "Sharpe Note 2 - Do not":
			scr_text("You decide not to read the strange note");
			break;
		
			case "Poison Cat Grave":
			scr_text("A resting place for a cat.");
			scr_text("'Here lies Rodney, beloved by his owners, _____ and _____.'");
			scr_text("'Ate rat poison that was left out, and passed away soon after.'");
			scr_text("'It seems the murderer was not negligence, but curiosity.'");
			scr_text("Accept the cat into your ranks?");
			inst_5615872B.text_id = "Cat Grave B";
				scr_option("Accept", "Poison Cat Grave - Accept");
				scr_option("Do not", "Poison Cat Grave - Do not");
				break;
				
				case "Poison Cat Grave - Accept":
				scr_text("Poison Cat joined your ranks.");
				break;
				
				case "Poison Cat Grave - Do not":
				scr_text("You left them to rest.");
				inst_5615872B.text_id = "Poison Cat Grave";
				break;
				
			case "Cat Grave B":
			scr_text("The cat will return.");
			scr_text("They always do.");
			break;
				
		case "Sharpe Note 3":
		scr_text("A note pinned to the wall. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 3 - Read");
			scr_option("Do not", "Sharpe Note 3 - Do not");
			break;
			
			case "Sharpe Note 3 - Do not":
			scr_text("You decide not to read the strange note");
			break;
			
			case "Sharpe Note 3 - Read":
			scr_text("'I'm seeing more and more signs of life now.'");
			scr_text("'Aside from that mushroom...thing, of course. He just keeps following me...'");
			scr_text("'...and dancing.'");
			scr_text("'Reguardless! I saw a person dressed in purple a few minutes ago, and I think I've got their trail.'");
			scr_text("'This is my ticket out of here; I can smell it!'");
			scr_text("'It's... a very dog-like smell...'");
			scr_text("The note is signed with a large, unreadable signature.");
			break;
			
				
			case "Stove":
			scr_text("A strange feeling fills you as you look at this stove.");
			scr_text("...dread...")
			scr_text("Look closer?")
				scr_option("Look closer", "Stove - Look closer")
				scr_option("Do not", "Stove - Do not")
			break;
					
				case "Stove - Do not":
				scr_text("You give into your dread.");
				break;
				
				case "Stove - Look closer":
				scr_text("You squint your eyes, spotting something shiny within the flames of the stove.");
				scr_text("Your stomach turns on knots as you see it, feeling almost drawn to the shine.");
				scr_text("Grab the object?")
				inst_4DBEF125.text_id = "Stove B";
					scr_option("Grab it", "Stove - grab")
					scr_option("Do not", "Stove - do not 2")
					break;
			
					case "Stove - do not 2":
					scr_text("You left the item to burn.");
					inst_4DBEF125.text_id = "Stove";
					break;
						
					case "Stove - grab":
					scr_text("You reach into the stove, the flames lapping against your skin.");
					scr_text("They strangely feel... soothing...");
					scr_text("Picked up the Charred Ring");
					sprite_delete(Spr_Item_Shine)
					break;
		
		case "Stove B":
		scr_text("The ring is gone, but the fires continue to burn.");
		break;
					
		case "Burn Cat Approach 1":
		scr_text("Its... hotter. I don't like this...", "Blek confused");
		break;
		
		case "Burn Cat Approach 2":
		scr_text("It's so hot... what is this feeling? Why do I feel... sick?", "Blek confused");
		break;
		
		case "Burn Cat Approach 3":
		scr_text("WHOA! A burning Ghost Cat! A-And its huge!", "Blek shock");
		scr_text(".....");
		scr_text("Easy...", "Blek shock");
		scr_text("!!!");
		scr_text("BURN CAT BOSSFIGHT");
		break;
		
		case "Burn Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Clover. Died after knocking a jar of oil off the counter onto the lit stove.'");
		scr_text("'One could argue that the murderer was not the one who pushed the jar, but the one who left the stove on.'");
		scr_text("Man...", "Blek base");
		scr_text("Accept the cat into your ranks?");
			inst_34320FDB.text_id = "Cat Grave B";
				scr_option("Accept", "Burn Cat Grave - Accept");
				scr_option("Do not", "Burn Cat Grave - Do not");
				break;
		
				case "Burn Cat Grave - Accept":
				scr_text("Burn Cat joined your ranks.");
				break;
				
				case "Burn Cat Grave - Do not":
				scr_text("You leave them to burn by themselves.");
				inst_34320FDB.text_id = "Burn Cat Grave"
				break;

		case "Lanternhead 1":
		scr_text("Are you lost, child?", "Lanternhead", -1)
		scr_text("Y...", "Blek confused");
		scr_text("Yes...", "Blek confused");
		scr_text("Please... can you tell me where I am? It's so cold here... I...", "Blek confused");
		scr_text("I-I need to find Trout! Or that mushroom guy, or... someone! Please...", "Blek cry");
		scr_text("You do not wish to stay here, in this place? You want to return to the Keep?", "Lanternhead", -1)
			scr_text_color(71, 75, c_grey, c_black, c_black, c_black);
		scr_text("Yes, please! I... hate it here... it's so cold... and dark, and... and quiet, and-", "Blek cry")
			scr_text_shake(42, 46);
			scr_text_shake(54, 58);
			scr_text_shake(71, 76);
		scr_text("The way forward will not be easy. Your will shall be tested time and time again.", "Lanternhead", -1)
		scr_text("Are you sure you want to go back?", "Lanternhead", -1)
		scr_text(".....I am. I need to find someone.", "Blek cry");
		scr_text("Very well. You will find a way forward below. Good luck, child.", "Lanternhead", -1)
		scr_text(".....", "Blek cry");
		instance_destroy(inst_3BACFBFC)
		inst_4822000E.text_id = "Lanternhead 1 B";
		break
	
		case "Lanternhead 1 B":
		scr_text(".....", "Blek cry");
		break;
	
	
		case "Sign 8":
		scr_text("Petrified Forest Lies Below");
		scr_text("Ensure your affairs above are in order, there's no going back after taking the plunge.");
		break;
	
	
	
	
	
	
	
	
	//-------------------------------Area 2--------------------------------------//
	
		case "Sign 6":
		scr_text("Village of Fang and Bone ^");
		scr_text("If you're a friend, we shall pose you no threat,");
		scr_text("Vistors just excite us.")
		break;
		
		case "Dog Scratches":
		scr_text("A mighty warrior has been using this wall to whet their blade");
		scr_text("...as far as you can tell, at least.");
		break;
		
		case "Dog House Sign 1":
		scr_text("'Dixie and Charlie'")
		break;
		
		case "Dog House Sign 2":
		scr_text("'Chloe and Idaho'")
		break;
		
		case "Dog House Sign 3":
		scr_text("'Smalls' Tavern'");
		scr_text("'Enter with an appetite'");
		break
		
		case "Idle Dog 1":
		scr_text("Darn, where is it? I'm looking for something I've buried, you haven't seen it, have you?")
		inst_1E684BF3.text_id = "Idle Dog 1 B";
			scr_option("I have!", "Idle Dog 1 - Yes");
			scr_option("I haven't, sorry", "Idle Dog 1 - No");
		break;
		
			case "Idle Dog 1 - Yes":
			scr_text("What? You better not have! Put it back where you found it!");
			scr_text("Man... I need to step up my buring game...");
			break;
		
			case "Idle Dog 1 - No":
			scr_text("Thank goodness! That means I'm good at what I do!");
			break;
			
		case "Idle Dog 1 B":
		scr_text("There's always room for improvment...");
		break;
			
		case "Idle Dog 2":
		scr_text("Ah! Hello there my fine feline friend! Appreciating a well dug hole, I see!");
			scr_text_float(0,100)
		scr_text("I mean, it's nice, and certainly deep, but... why'd you dig it?", "Blek listen");
		scr_text("Ha ha! Don't be asking questions you don't want the answer to, Cat...");
		scr_text_float(0, 100)
		scr_text("...or you'll be in the hole when all is said and done...");
		scr_text("......", "Blek appalled");
		inst_53432A2.text_id = "Idle Dog 2 B"
		break;
		
		case "Idle Dog 2 B":
		scr_text("Have a good day, cat!")
			scr_text_float(0, 100);
		scr_text("......Right....", "Blek appalled");
		break;
		
		case "Idle Dog 3":
		scr_text("This dog's so good at playing dead, even the flies are starting to believe them!");
		break;
		
		case "Idle Dog 4":
		scr_text("Hello there, friend!");
		scr_text("Awww! So cute, look at your lil hard hat!", "Blek wonder");
		scr_text("Saftey is very important for a roofer like me.");
		inst_2469CDE3.text_id = "Idle Dog 4 B";
		break;
		
		case "Idle Dog 4 B":
		scr_text("Don't ask about where I found all this wood.");
		break;
		
		case "Idle Dog 5":
		scr_text("...", "Blek confused");
		scr_text("A small dog angrily vibrates in front of you.");
		scr_text("Its as if years of hatred has been condensed into one single form.");
		scr_text("You feel the urge to walk the other way.");
		break;
		
		case "Idle Dog 6":
		scr_text("Is there... something wrong?", "Blek concerned");
		scr_text("My wife won't talk to me... not after I got her wedding ring forged in the wrong size...");
		scr_text("Oh no! Well, it was an honest mistake, so-", "Blek shock");
		scr_text("Yeah, it was. I accidently gave Smith the measurments of the dog I was cheating on her with.");
		scr_text("...", "Blek appalled");
		scr_text("You really should have opened with that...", "Blek mad");
		scr_text("You can have the ring, if you want it. I certainly can't use it anymore...");
		inst_8FC0072_1.text_id = "Idle Dog 6 B";
		break;
		
		case "Idle Dog 6 B":
		scr_text("My life... it's over...");
		break;
		
		
		case "Idle Dog 7":
		scr_text("Ah! A new pair of eyes to gaze upon the beauty of my creation!");
		scr_text("You mean that weird stone dog thing? What does it do?", "Blek listen");
		scr_text("It's a device that can open the doors of the Keep! The one's who's handles are-");
			scr_text_color(44, 50, c_grey, c_black, c_black, c_black);
		scr_text("always just out of reach...");
		scr_text("Well good for you! Except... I don't think I've seen any doors in the Keep. Just long hallways.", "Blek base");
			scr_text_color(69, 73, c_grey, c_black, c_black, c_black);
		scr_text("...confound it you're right, cat! There goes my Aristocratic Prize...");
		inst_532068F5.text_id = "Idle Dog 7 B";
		break;
		
		case "Idle Dog 7 B":
		scr_text("And I was so close to a scientific breakthrough...");
		scr_text("Now my only accomplishment is building a robot out of stone...");
		break;
		
		case "Idle Dog 8":
		scr_text("You here for the weekly poker night, cat? 'Fraid you just missed it.");
		scr_text("This place looks like a wreck... what happened?", "Blek confused");
		scr_text("Poker night is taken pretty seriously in Fang and Bone. Especially if all the players have bad paws.");
		scr_text("Feel free to help with the cleanup if you want, cat, I won't stop you.");
		inst_62046C80.text_id = "Idle Dog 8 B";
		break;
		
		case "Idle Dog 8 B":
		scr_text("You should have seen last week's poker night.");
		scr_text("Idaho and Nerves got into a fight and I told them to 'take it outside.'")
		scr_text("That only made ALL of us excited.");
		break;
		
		case "Idle Dog 9":
		scr_text("Whoa... this place is way bigger on the inside.", "Blek base");
		scr_text("I'm glad you think so! It cost just as much as the other houses in the village.");
		scr_text("I'm still paying back the treat loans...");
		inst_21C3A482.text_id = "Idle Dog 9 B";
		break;
		
		case "Idle Dog 9 B":
		scr_text("Don't let the word 'treat' fool you.");
		scr_text("I am in tremendous debt.");
		break;
		
		
		case "Idle Dog 10":
		scr_text("Good afternoon! Are you looking for a weapon, or perhaps, some armor?");
		scr_text("Of course!", "Blek");
		scr_text("Wait... no, actually, I don't think I have any way to pay you.", "Blek base");
		scr_text("Really? Damn... haven't had much buisness since all our treats were stolen...");
		scr_text("Feel free to help yourself to that slag pile over there, you may find something good in it.");
		inst_9AE9968.text_id = "Idle Dog 10 B";
		break;
		
		case "Idle Dog 10 B":
		scr_text("Why do I have a pile of slag metal that large?");
		scr_text("Well, let's just say I've been...");
		scr_text("SLAGGING OFF!");
		scr_text("hehehe....");
		scr_text(".....", "Blek base");
		inst_9AE9968.text_id = "Idle Dog 10 C";
		break;
		
		case "Idle Dog 10 C":
		scr_text("The, uh.... exit's over there...");
		break;
		
		case "Idle Dog 11":
		scr_text("Hey, uh... cat... do you, uh... wanna buy some grapes? They'll... they'll mess you up good...");
		scr_text("Can dogs even have grapes? My memory is a little hazy still, but... I thought they were bad for dogs.", "Blek listen");
		scr_text(".........are you a cop?");
		inst_1C7C8339.text_id = "Idle Dog 11 B";
		break;
		
		case "Idle Dog 11 B":
		scr_text("if you, uh... change your mind... I'm always here...");
		break;
		
		
		case "Idle Dog 12":
		scr_text("Whatever you do, don't roll around on the carpet in here.");
		scr_text("I'm almost certain that I'm a zapping hazard now.");
		break;
		
		case "Idle Dog 13":
		scr_text("When that hooded thief asked if I wanted to go outside, I couldn't refuse...");
		scr_text("Now I'm homeless...");
		inst_1B4FD2A2.text_id = "Idle Dog 13 B";
		break;
		
		case "Idle Dog 13 B":
		scr_text("I wanna go home...");
		break;
		
		case "Idle Dog 14":
		scr_text("He grooves like no other.");
		break;
		
		case "Idle Dog 15":
		scr_text("You have permission from Smalls to enter?");
		scr_text("If not, turn around. But not too fast!");
		scr_text("The last thing you'd want is to be stuck in a gambit with your blasted tail...");
		break;
		
		case "Bonepile":
		scr_text("A large pile of bones, next to a sign reading 'defective'.");
		scr_text("You have no idea what that could mean.");
		break;
		
		case "Dog Hole":
		scr_text("A large, expertly dug hole. If you had a hole-digging trophy, you'd toss it inside.");
		break;
		
		case "Crate Stack 1":
		scr_text("Well isn't this just crate?", "Blek");
		scr_text("You snicker at your horrible joke.");
		scr_text("You should be ashamed of yourself.");
		break;
	
		case "Standing Sign 1":
		scr_text("Smalls Tavern ^");
		scr_text("Blacksmith ^ and then >");
		scr_text("There's a note on the ground, leaning up against the base of the sign.");
		scr_text("'WORK ORDER PLACED: MAKE SIGN LOWER TO THE GROUND'");
		break;
	
		case "Standing Sign 2":
		scr_text("The Poker House");
		break;
		
		case "Standing Sign 3":
		scr_text("Smith's Blacksmith.");
		scr_text("Formerly Jack's.");
		break;
		
		case "Standing Sign 4":
		scr_text("IF YOU SEE SOMETHING, SAY SOMETHING!");
		scr_text("FINDING OUR TREATS WILL NET YOU A MASSIVE TREAT REWARD!");
		scr_text("...JUST AS LONG AS YOU DON'T EAT THEM BEFORE RETURNING THEM!");
		break;
		
		case "Sleep Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Mary. Was always a heavy sleeper. One day, she never woke up'");
		scr_text("Died peacefully.'");
		scr_text("Accept the cat into your ranks?");
		inst_521B5A71.text_id = "Cat Grave B";
				scr_option("Accept", "Sleep Cat Grave - Accept");
				scr_option("Do not", "Sleep Cat Grave - Do not");
				break;
		
				case "Sleep Cat Grave - Accept":
				scr_text("Sleep Cat joined your ranks.");
				break;
				
				case "Sleep Cat Grave - Do not":
				scr_text("You allowed the cat to continue it's peacful slumber.");
				inst_521B5A71.text_id = "Sleep Cat Grave"
				break;
	
		case "Anvil":
		scr_text("An anvil. Perfect for renaming weapons.");
		break;
		
		case "Dead Tree":
		scr_text("An old, dead tree. It smells horrible.");
		break;

		case "Sharpe Note 4":
		scr_text("A note pinned to the side of the house. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 4 - Read");
			scr_option("Do not", "Sharpe Note 4 - Do not");
			break;
			
			case "Sharpe Note 4 - Do not":
			scr_text("You decide not to read the strange note");
			break;
			
			case "Sharpe Note 4 - Read":
			scr_text("'Do not enter, understand? This is my house now! I got it fair and square!'");
			scr_text("'And if that Rudy nerd says anything otherwise, he's lying!'");
			scr_text("The note is signed with a large, unreadable signature.");
			scr_text("It's too high up for the other dogs to read, but the doggy door's been closed off, so");
			scr_text("you guess the point was still gotten across.");
			break;
		
			case "Door of Heartbreak":
			scr_text("You can hear howling behind this door...");
			break;
			
			case "Ring Acquisition of Heartbreak":
			scr_text("There's a ring on the table here, surrounded by small droplets of water..");
			scr_text("You'll probably feel pretty bad about it, but...");
			scr_text("Take the ring?");
			inst_6A36550_1.text_id = "RAoH B"
				scr_option("Take", "Dream Ring - Take");
				scr_option("Do not", "Dream Ring - Do not");
				break;
		
				case "Dream Ring - Take":
				scr_text("You took the Ring of Dreams.");
				sprite_delete(Spr_Item_Shine2);
				break;
				
				case "Dream Ring - Do not":
				scr_text("It's probably for the best...");
				inst_6A36550_1.text_id = "Ring Acquisition of Heartbreak"
				break;
				
			case "RAoH B":
			scr_text("Nothing but tears here.");
			break;
			
		case "Dog Cat Painting 1":
		scr_text("A familiar cat painting. It's been modified to resemble a dog.");
		break;
		
		case "Dog Bed":
		scr_text("A bed covered in dog hair.");
		scr_text("It's comfy sheets... call out to you...");
		scr_text("...");
		scr_text("...you manage to resist the urge to slumber...");
		break;
		
		case "Megaman Reference":
		scr_text("A strange dog-shaped automaton.");
		scr_text("It seems to have been built in a rush.");
		break;
		
		case "Poker Table":
		scr_text("It seems like these dogs know no self control when it comes to playing cards.");
		scr_text("One of them seemingly attempted to bet his own mother's soul.");
		scr_text("It truly is a dog-eat-dog world");
		break
		
		case "Pokior Table":
		scr_text("Among the foul smelling bottles here on this table is a healing potion!");
		scr_text("Take it?");
		inst_7853599F.text_id ="Pokior Table B";
			scr_option("Take", "Pokior Table - Take");
			scr_option("Do not", "Pokior Table - Do not");
			break;
		
				case "Pokior Table - Take":
				scr_text("You took the Healing Potion.");
				sprite_delete(Spr_Item_Shine3);
				break;
				
				case "Pokior Table - Do not":
				scr_text("Probably a good choice, who knows where this has been.");
				inst_7853599F.text_id = "Pokior Table";
				break;
		
		case "Pokior Table B":
		scr_text("You should probably leave the rest of this stuff here.");
		break;
		
		case "Grindstone":
		scr_text("A grindstone.");
		scr_text("Or is ir a sawmill moving really fast?");
		scr_text("You recall the saying about what curiosity does to people like you and resist the urge to touch it.");
		break;
		
		case "Smith Stuff":
		scr_text("Do not drink the forbidden smithing water.");
		scr_text("No matter how refreshing it looks.");
		break;
		
		case "Slagpile":
		scr_text("A pile of slag metal, ready to be forged. There's something shiny amidst the dull metal.");
		scr_text("Take the object?");
		inst_4ABC83F7.text_id = "Slagpile B";
			scr_option("Take", "Slagpile - Take");
			scr_option("Do not", "Slagpile - Do not");
			break;
		
				case "Slagpile - Take":
				scr_text("You took the Iron Ring.");
				sprite_delete(Spr_Item_Shine4)
				break;
				
				case "Slagpile - Do not":
				scr_text("You leave the shiny object to dull.");
				inst_4ABC83F7.text_id = "Slagpile";
				break;
		
		case "Slagpile B":
		scr_text("Nothing else but iron.");
		break;
		
		case "Grape Crate":
		scr_text("The fabled 'Crate o Grapes.'");
		break;
		
		case "The Chair":
		scr_text("The chair...");
		scr_text("You can only imagine what horrible acts someone would have to commit to wind up here...");
		break;
		
		case "Bulletin Board":
		scr_text("A bulletin board, far too high for most of the dogs read, much less reach.");
		scr_text("Covered with requests to reclaim the stolen treats, most citing 'peace of mind for all' as the bounty reward.");
		break;
		
		case "Alacohal":
		scr_text("A bottle of rum marked with three X's. Scandelous!");
		break;
	
		case "Smalls 1":
		scr_text("How goes it, cat?", "Smalls", -1);
		scr_text("Uhmmm... hi? You're not a dog?", "Blek confused");
		scr_text("No, I'm not. Anything else you feel nessesary to add?", "Smalls", -1);
		scr_text("N-Nope! Nothing!", "Blek shock");
		inst_14992E6C.text_id = "Smalls 1 B";
		break;
		
		case "Smalls 1 B":
		scr_text("You want a drink or something, cat? This IS a tavern, after all.", "Smalls", -1);
		scr_text("Nothing with alcohol, please. Do you... have any milk?", "Blek listen");
		scr_text("The hell is 'milk'?", "Smalls", -1);
		scr_text("Like...you know, milk! From a cow? I think?", "Blek base");
		scr_text("........cow?", "Smalls", -1);
		scr_text("I... nevermind. I'm not thirsty anymore...", "Blek confused");
		inst_14992E6C.text_id = "Smalls 1 C";
		break;
		
		case "Smalls 1 C":
		scr_text("Well, if you decide on a real drink, give me a bark.", "Smalls", -1);
		scr_text("Or I guess, shout.", "Smalls", -1);
		scr_text("You know what? Bark all you want, I won't stop you. Heheh heehh...", "Smalls", -1);
		break;
		
		case "Tavern Enter":
		scr_text("-way is blocked? If someone entered the cave with all of our treats then we must pursue!", "Nerves unamused", -1);
		scr_text("If you think you can take down the musician's army all on your own, be my guest.", "Smalls", -1);
		scr_text("Tsk... I certainly couldn't without help...", "Nerves sad", -1);
		break;
	
		case "Rubble Chan":
		scr_text("Rubble chan is strong, vigilant!");
		scr_text("No one gets by her!");
		break;
		
		case "Sign 7":
		scr_text("<- Petrified Forest");
		scr_text("Cave of Hounds ->");
		scr_text("The letter 'H' has been hastily scribbled out and replaced with an 'S'");
		break;
	
		case "Nerves Encounter 2":
		scr_text("Are you ready, Blek? We have an army to take care of in there...", "Nerves unamused", -1);
		scr_text("An army of... what exactly? I don't think I've been told yet.", "Blek listen");
		scr_text("Musical instruments, my friend! And fierce ones at that!", "Nerves base", -1);
		scr_text("Like... living, magical instruments? Is that like a species here?", "Blek listen");
		scr_text("I believe the one in charge of the instruments creates them from nothing, somehow.", "Nerves unamused", -1);
		scr_text("Then gives them life through strange, magical means...", "Nerves base", -1);
		scr_text("They could have given ANYTHING life any they chose... instruments?", "Blek confused");
			scr_text_float(23, 30);
		scr_text("Not something harder to destroy like... I dunno, rocks?", "Blek base");
		scr_text("Let's be thankful that our enemy isn't as intelligent as you or I.", "Nerves unamused", -1);
		scr_text("Fighting rocks would dull my blade...", "Nerves unamused", -1);
		inst_513C6B30.text_id = "Nerves Encounter 2 B";
		break;
	
		case "Nerves Encounter 2 B":
		scr_text("Head on in, Blek! I'll follow behind.", "Nerves base", -1);
		break;
		
		case "Sharpe Ringe":
		scr_text("A strange ring lies here amongst the scattered charts");
		scr_text("Pick up the ring?");
		inst_4A769A8C.text_id = "Sharpe Ringe 2"
			scr_option("Pick it up", "Sharpe Ringe - Pick up");
			scr_option("Leave it be", "Sharpe Ringe - Leave it be");
			break;
		
		case "Sharpe Ringe - Pick up":
		scr_text("Picked up Sharpe's Ringe");
		sprite_delete(graphic_11E5C5D8);
		break;
		
		case "Sharpe Ringe - Leave it be":
		scr_text("You decide to leave the ring where it is.");
		scr_text("Someone's gonna hate cleaning up this mess.");
		inst_4A769A8C.text_id = "Sharpe Ringe"
		break;
		
		case "Sharpe Ringe 2":
		scr_text("Nothing but charts");
		break;
		
		case "Idle Dog 15 2":
		scr_text("Why am I still guarding this door, even if it's been cleared off?");
		scr_text("Don't tell anyone... but I'm getting paid to stay here.");
		scr_text("Was it an oversight? Who's to say, but I'm not complaining!");
		scr_text("Don't... uh, don't tell anyone...");
		inst_1D1D02D2.text_id = "Idle Dog 15 2 2";
		break;
		
		case "Idle Dog 15 2 2":
		scr_text("Please... I need this...");
		break;
		
		case "Rubble Chan Moves! Uwaaa <3!!!":
		scr_text("Rubble Chan's moving up in the world!");
		scr_text("Or, moving down. Depending on where you look.");
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// ---------------------------AREA 3-----------------------------//
		
		case "Mush Point":
		scr_text("Your Ghost Cat is resting peacefully here amongst the glowing mushrooms.");
		scr_text("Perhaps you should do the same.");
		scr_text("Save your game?");
			scr_option("Save", "Mush - Success");
			scr_option("Do not", "Mush - Do not save");
		break;
		
			case "Mush - Success":
			scr_text("Save Successful.")
			scr_text_float(0, 18)
			break;
		
			case "Mush - Do not save":
			scr_text("Another time, then...");
			break;
			
		case "Sharpe Note 5":
		scr_text("A note pinned to the the walls of the cave. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 5 - Read");
			scr_option("Do not", "Sharpe Note 5 - Do not");
			break;
			
			case "Sharpe Note 5 - Do not":
			scr_text("You decide not to read the strange note");
			break;
			
			case "Sharpe Note 5 - Read":
			scr_text("'Alright, just a reminder!'");
			scr_text("'I'm fine with partying but I'm NOT fine with leaving trash everywhere!'");
			scr_text("'If I find another one of your charts on the ground, I swear...'");
			scr_text("'I will stop being so polite.'");
			scr_text("The note is signed with a large, unreadable signature.");
			break;
			
			
			case "Sharpe Note 6":
		scr_text("A note pinned to the the walls of the cave. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 6 - Read");
			scr_option("Do not", "Sharpe Note 6 - Do not");
			break;
			
		case "Sharpe Note 6 - Read":
		scr_text("'A lot of you keep asking me, ''Oh Sharpe!''");
		scr_text("''Why did you make a big piano with teeth if you don't have enough food to feed it?''");
		scr_text("'First, you all don't need to eat, dumbasses! The piano just likes chewing on stuff.'");
		scr_text("'Second, NEVER question my instrument-creating decisions!'");
		scr_text("'A big piano with teeth is tight as hell!'");
		scr_text("The note is signed with a large, unreadable signature.");
		break;
			
			
		case "Sharpe Note 6 - Do not":
		scr_text("You decide not to read the strange note");
		break;
			
		case "Sharpe Note 7":
		scr_text("A note pinned to the the walls of the cave. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 7 - Read");
			scr_option("Do not", "Sharpe Note 7 - Do not");
			break;
			
		case "Sharpe Note 7 - Read":
		scr_text("'Some of you have been asking me about what I plan to do with these paintings.'");
		scr_text("'After all, they aren't worth too much anymore.");
		scr_text("'Since I DID risk my own precious life stealing them, I'm gonna keep 'em!'");
		scr_text("'That artist was a sham, anyway. I went ahead and made some minor adjustments to fix them up!'");
		scr_text("'Who knows, maybe I'll start taking commissions!'");
		scr_text("'Though, I'm not exactly hurting for cash right now...'");
		scr_text("'...unless you count the times I've kicked monsters' asses for money.'");
		scr_text("The note is signed with a large, unreadable signature.");
		break;
	
			
		case "Sharpe Note 7 - Do not":
		scr_text("You decide not to read the strange note");
		break;
		
		case "Sharpe Note 8":
		scr_text("A note pinned to the the walls of the cave. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 8 - Read");
			scr_option("Do not", "Sharpe Note 8 - Do not");
			break;
			
		case "Sharpe Note 8 - Read":
		scr_text("'I've found about 4 dogs trespassing on our property now!'");
		scr_text("'If you see anything, and I mean ANYTHING furry, dispose of them at once!'");
		scr_text("'I JUST finished cleaning up all the dog hair, and I do NOT want to start doing it again!'");
		scr_text("The note is signed with a large, unreadable signature.");
		break;
			
		case "Sharpe Note 8 - Do not":
		scr_text("You decide not to read the strange note");
		break;
		
		case "Sharpe Note 9":
		scr_text("A note pinned to the the walls of the cave. Very poor handwriting is scrawled over it.");
		scr_text("Read the note?");
			scr_option("Read", "Sharpe Note 9 - Read");
			scr_option("Do not", "Sharpe Note 9 - Do not");
			break;
			
		case "Sharpe Note 9 - Read":
		scr_text("'I'm getting real tired of these leadership complaints.'");
		scr_text("'I made YOU, remember? You're the ones who got pulled out of my magic bag, not me!'");
		scr_text("'Since I'm so tired of answering questions that AREN'T THAT IMPORTANT,'");
		scr_text("'I'll be blocking off my room with three locked gates.'");
		scr_text("'Got something to tell me? Decide if its important enough to pull all three levers to get to me.'");
		scr_text("'Because I'm so nice, I'll be leaving the trombones and tubas in charge of handling minor complaints.'");
		scr_text("'So if you have any that aren't worth my time, talk to the brass.'");
		scr_text("The note is signed with a large, unreadable signature.");
		break;
	
			
		case "Sharpe Note 9 - Do not":
		scr_text("You decide not to read the strange note");
		break;
			
			
			case "Graffiti 1":
			scr_text("Graffiti in the shape of a music note.");
			scr_text("Quite on the nose.", "Nerves unamused");
			scr_text("Agreed.", "Blek listen");
			inst_2C1DD119.text_id = "Graffiti 1 B";
			break;
			
			case "Graffiti 1 B":
			scr_text("Apparently everyone's a critic.");
			break;
		
			case "Graffiti":
			scr_text("If only you could read music...");
			scr_text("Maybe then you could understand the message behind this graffiti.");
			break;
			
			case "Graffiti 2":
			scr_text("Ah yes! One of... these things...");
			scr_text("The esoteric knowledge known as ''music theory'' still thoroughly eludes you.");
			break;
			
			case "Super Secret Wall Face":
			scr_text("This wall kind of looks like a face, doesn't it?");
			scr_text("Cool!");
			scr_text("...");
			scr_text("You should probably stop getting side-tracked.");
			break;
			
			
			case "Sounds Ring":
			scr_text("There's a ring on the ground, amidst the mushrooms.");
			scr_text("Pick up the ring?");
			inst_51E34F23.text_id = "Sounds Ring B"
				scr_option("Yes", "Sounds Ring - Yes");
				scr_option("No", "Sounds Ring - No");
			break;
			
			case "Sounds Ring - Yes":
			scr_text("You picked up the Fidget Ring.");
			sprite_delete(Spr_Item_Shine5);
			break;
			
			case "Sounds Ring - No":
			scr_text("You decide to leave the ring to the mushrooms.");
			inst_51E34F23.text_id = "Sounds Ring"
			break;

			case "Sounds Ring B":
			scr_text("Nothing else but 'shrooms.");
			break;
			
			case "Sound Portrait 1":
			scr_text("A portrait of a strange figure with horns and red skin.");
			scr_text("Someone has crudely painted over it with fake eyes and text.");
			scr_text("Do you recognize this guy, Nerves?", "Blek listen");
			scr_text("I don't believe so. I've never seen people like that either.", "Nerves unamused");
			scr_text("Horns... multi-colored skin... all new sights to me.", "Nerves base");
			scr_text("Well, whoever they are, someone doesn't seem to like them very much.", "Blek base");
			inst_13C88100.text_id = "Sound Portrait 1 B";
			break;
			
			case "Sound Portrait 1 B":
			scr_text("A portrait of a strange figure with horns and red skin.");
			scr_text("Someone has crudely painted over it with fake eyes and text.");
			break;
			
			case "Sound Portrait 2":
			scr_text("A portrait of a strange figure with horns and orange skin.");
			scr_text("Someone has crudely painted over it.");
			scr_text("Are those... stink lines?", "Blek listen");
			scr_text("These portraits seem very expensive and quite professional...", "Nerves unamused");
			scr_text("Whoever did this must harbor a deep hatred toward the artist.", "Nerves sad");
			scr_text("Or the people in their paintings...", "Blek base");
			inst_4E595B63.text_id = "Sound Portrait 2 B";
			break;
			
			case "Sound Portrait 2 B":
			scr_text("A portrait of a strange figure with horns and orange skin.");
			scr_text("Someone has crudely painted over it.");
			break;
			
			case "Sound Portrait 3":
			scr_text("A portrait of a strange figure with horns and blue skin.");
			scr_text("Several adjustments have been applied to the painting to give the figure a more 'divine' look.");
			scr_text("Apparently this portrait wasn't worth vandalizing.", "Nerves unamused");
			scr_text("Yeah. Someone committed the opposite of vandalism.", "Blek base");
			scr_text("...protection? Salvage?", "Blek listen");
			scr_text("Restoration. Though, in this context, 'Upgrade' seems to be a better fit.", "Nerves smug");
			inst_1BA29D30.text_id = "Sound Portrait 3 B";
			break;
			
			case "Sound Portrait 3 B":
			scr_text("A portrait of a strange figure with horns and blue skin.");
			scr_text("Several adjustments have been applied to the painting to give the figure a more 'divine' look.");
			break;
			
		case "Mushbone":
		scr_text("Nature is healing...");
		break;
			
		case "Atrophy Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Toast. Spent his life neglected by those he held closest.'");
		scr_text("Strived for attention. He only recieved it when he was too late.'");
		scr_text("Accept the cat into your ranks?");
		inst_4E395671.text_id = "Cat Grave B";
				scr_option("Accept", "Atrophy Cat Grave - Accept");
				scr_option("Do not", "Atrophy Cat Grave - Do not");
				break;
		
				case "Atrophy Cat Grave - Accept":
				scr_text("Atrophy Cat joined your ranks.");
				break;
				
				case "Atrophy Cat Grave - Do not":
				scr_text("You allowed the cat to continue it's peacful slumber.");
				inst_4E395671.text_id = "Atrophy Cat Grave"
				break;
			
		case "Chestnut":
		scr_text("There's a cat here with me... and a dog.");
		scr_text("Hi! You wouldn't happen to know another mushroom named Russell, would you?", "Blek");
		scr_text("It's talking to me now... No, I don't know why. I don't want to ask it.");
		scr_text("Who are they speaking with?", "Nerves base");
		scr_text("Neither of us, looks like.", "Blek listen");
		scr_text("They're asking about you now, Cordy... No, I'm not gonna... whatever. They'll probably be coming your way.");
		scr_text("Uh huh... we'll... just be leaving now.", "Blek confused");
		scr_text("Indeed, this seems to be a waste of time.", "Nerves smug");
		scr_text("Man, this dog is rude too! No wonder the blue chick kicked them all out!");
		inst_290BAC70.text_id = "Chestnut 2";
		break;
			
		case "Chestnut 2":
		scr_text("They're still here... and one of them's giving me a weird look...");
		scr_text(".....", "Blek listen");
		break;
			
		case "Cordy":
		scr_text("A dog... and a cat... one of each...");
		scr_text("Whoa, cool! Another mushroom person! Or, I guess, mushroom people. Hiya!", "Blek");
		scr_text("They speak... yes... have you seen them before, Mike?");
		scr_text("Uhh... hi?", "Blek base");
		scr_text("I'm trying to ignore them... no, they aren't leaving...");
		scr_text("Helloooooo?", "Blek listen");
		scr_text("I believe they don't want us around.", "Nerves unamused");
		scr_text("Yeah, but...", "Blek base");
		scr_text("They didn't have to be so rude about it...", "Blek confused");
		inst_42A6BA28.text_id = "Cordy 2"
		break;
			
		case "Cordy 2":
		scr_text("They are still here... ok, fine, I'll see what they want.");
		scr_text("You there, cat and dog. What are you doing?");
		scr_text("Oh, hi! Right now, figuring out this sound puzzle.", "Blek");
		scr_text("If we help you, will you stop bothing us?");
			scr_option("No promises", "Cordy 2 - Yes");
			scr_option("I don't need help!", "Cordy 2 - No");
		break;	
		
		case "Cordy 2 - Yes":
		scr_text("Fine, we'll take it.");
		scr_text("The door will open if the right five notes are played.");
		scr_text("If you play five, and the door remains shut, then use the candle next to the door.");
		scr_text("And, finally, if you get the puzzle right, don't reenter this room.");
		scr_text("Why's that?", "Blek base");
		scr_text(".......uh... you'll explode.");
		scr_text("We will... explode?", "Nerves unamused");
		scr_text("Yes! No more hints, leave us alone!");
		inst_42A6BA28.text_id = "Cordy 3";
		break;
		
		case "Cordy 2 - No":
		scr_text("Well, I tried, Chestnut...");
		break;
			
		case "Cordy 3":
		scr_text("No more hints! Leave us alone!");
		break;
		
		case "Mike":
		scr_text("They have come, Cordy... and want to speak with me, seemingly.");
		scr_text("I'm assuming 'Cordy' is one of the mushrooms we've passed earlier.", "Nerves unamused");
		scr_text("I'm gonna talk to them... don't you 'Mike' me! They're probably very nice!");
		scr_text("Ok, here goes...");
		scr_text("Hello? Dog and cat? How are you?");
		scr_text("Ah, finally! You can talk to us instead of yourself!", "Blek");
		scr_text("....");
		scr_text("Cordy... Chestnut... you were right... they ARE rude...");
		scr_text("I... did I say something rude?", "Blek confused");
		scr_text("I believe you are experiencing 'culture shock'.", "Nerves smug");
		scr_text("....", "Blek listen");
		inst_E2EC394.text_id = "Mike 2";
		break;
		
		case "Mike 2":
		scr_text("....", "Blek listen");
		break;
		
		case "Nerves Sound Room":
		scr_text("I'll leave this puzzle to you, Blek.", "Nerves base");
		scr_text("Puzzle-solving isn't my forte.", "Nerves smug");
		scr_text("Rest up then, Nerves! And never fear!", "Blek");
		scr_text("I'm a bonefied puzzle master!", "Blek");
		scr_text("Bone?", "Nerves base");
		scr_text("N-no, no bones.", "Blek confused");
		scr_text("Ah, I see.", "Nerves sad");
		inst_1EAA6C1E.text_id = "Nerves Sound Room 2";
		break;
		
		case "Nerves Sound Room 2":
		scr_text("You can do it, Blek!", "Nerves base");
		scr_text("Just try to ignore this blasted song the mushrooms keep humming...", "Nerves unamused");
		break;
		
		case "Piano Room Note":
		scr_text("A note reading 'Do not feed the piano.'");
		scr_text("Underneath this is another note reading,");
		scr_text("'WHY ARE YOU EVEN CONSIDERING FEEDING IT???'");
		scr_text("'NONE OF YOU NEED TO EAT!!!!'");
		scr_text("The scrawlings at the bottom are signed by a large, unreadable signature.");
		break;
		
		case "Sharpe Test":
		scr_text("I'm Sharpe, baby!", "Sharpe base", -1);
		scr_text("Hiya!", "Blek");
		scr_text("I'm gonna...", "Sharpe frown", -1);
		scr_text("FUCKING kill you.", "Sharpe fury", -1);
		scr_text("Oh.", "Blek concerned");
		break;
		
		case "Rudy Post-Sharpe":
		scr_text("Finally... I can go home. That bard gave me back the key...");
		scr_text("I'm... still, uh... muzzle deep in a drink though... I'll clean the house up later.");
		inst_1B4FD2A2_1.text_id = "Rudy Post-Sharpe 2";
		break;
		
		case "Rudy Post-Sharpe 2":
		scr_text("Don't mind me... just wallowing in my joy...");
		break;
		
		case "Tavern Convo Post-Sharpe":
		scr_text("Can't say I'm not impressed, you two. You and Blek went above and beyond getting the treats back.", "Smalls", -1);
		scr_text("I don't say this often, Nerves, but... you're a good boy.", "Smalls", -1);
		scr_text("I'm a good MAN, Smalls.", "Nerves unamused", -1);
		scr_text("And it's Blek you should be thanking. They're the one who managed to put a stop to Sharpe!", "Nerves base", -1);
		scr_text("I did what I had to. I'm just glad we managed to cool her off.", "Blek");
		scr_text("The way should be unblocked now. I wish you luck going further within the Keep, Cat.", "Smalls", -1);
		scr_text("Indeed. And you are welcome to drop by Fang and Bone anytime!", "Nerves base", -1);
		scr_text("Thanks! I hope I can see you all again, after finding Trout of course.", "Blek base");
		scr_text("Wait... cat. I've gotta warn you before you leave the village.", "Smalls", -1);
		scr_text("The Petrified Forest lies before you, and... you need to be on your guard within.", "Smalls", -1);
		scr_text("Keep your wits about you, and whatever you do...", "Smalls", -1);
		scr_text("Don't go into the Groundskeeper's House.", "Smalls", -1);
		scr_text("Wh...why's that?", "Blek confused");
		scr_text("Before we settled here, we lived there, and... we saw some things we didn't want to.", "Smalls", -1);
		scr_text("Just avoid it, and you'll be fine.", "Smalls", -1);
		scr_text("Will do, then. Bye, you two!", "Blek");
		inst_4BA46A1F_1.text_id = "Tavern Convo Post-Sharpe 2";
		asset_add_tags(Obj_Blek, "SmallsTalk2", asset_object);
		break;
		
		case "Tavern Convo Post-Sharpe 2":
		scr_text("They seem to be chatting about the events within the Cave of Hounds.");
		scr_text("Nerves is doing his best to convey grand gestures with his tiny paws.");
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//-----------------AREA 4-------------------//
		
		case "Trout's Gone Baby!":
		scr_text("Dang it... I had her, too...", "Blek concerned");
		scr_text("Next time I won't go so easy on her.", "Blek mad");
		break;
		
		
		case "Heyho Flower 1":
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("H-hey?", "Blek base");
		scr_text("Ho!", "Heyho", -1);
		scr_text("...right ok, hello! My name's Blek! What's your name?", "Blek");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Is it? Or is that all you can say?", "Blek base");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Uhm... got it. Goodbye!", "Blek confused");
		scr_text("Hey ho! Beware the Groundskeeper's House!", "Heyho", -1);
		scr_text("H-huh? What'd you say?", "Blek appalled");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text(".....", "Blek confused");
		inst_74FB432C.text_id = "Heyho Flower 1 B";
		break;
		
		case "Heyho Flower 1 B":
		scr_text("Hey ho!", "Heyho", -1);
		scr_text(".....", "Blek confused");
		break;
		
		case "Heyho Flower 2":
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Another one of you guys. Uh... hey ho!", "Blek base");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Hey ho?", "Blek listen");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Hey ho...", "Blek concerned");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("This conversation feels very one-sided.", "Blek confused");
		scr_text("Hey ho!", "Heyho", -1);
		inst_252B642.text_id = "Heyho Flower 2 B";
		break;
		
		case "Heyho Flower 2 B":
		scr_text("Hey ho!", "Heyho", -1);
		break;
		
		case "Heyho Flower 3":
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Hey, Flower Dude!", "Blek");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("You guys don't seem too talkative, but maybe you're good listeners!", "Blek base");
		scr_text("I've been cooking up some flower jokes while wandering around this place, want to hear them?", "Blek");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("That's the spirit! Although, I should probably start slow...", "Blek base");
		scr_text("I wouldn't want any of my jokes to go 'clover' your head!", "Blek");
		scr_text("Hey... ho...", "Heyho", -1);
		scr_text("Sorry, sorry, I know that was bad. But...", "Blek listen");
		scr_text("I'd be dandeLYING if I said I didn't have any more up my sleeves!", "Blek");
		scr_text("......", "Heyho", -1);
		scr_text("geez, tough crowd...", "Blek confused");
		inst_4E1F92BF.text_id = "Heyho Flower 3 B";
		break;
		
		case "Heyho Flower 3 B":
		scr_text(".....", "Heyho", -1);
		scr_text("Alright, alright, I'm going!", "Blek listen");
		break;
		
		case "Heyho Flower 4":
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("Hey! Kind of a secluded spot for you to be staying, huh little guy?", "Blek");
		scr_text("Don't you want to hang around with some flower friends or something?", "Blek base");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("I don't know why I thought I'd get a usable answer.", "Blek concerned");
		inst_FDD1344.text_id = "Heyho Flower 4 B";
		break;
		
		case "Heyho Flower 4 B": 
		scr_text("Hey ho!", "Heyho", -1);
		break;
		
		case "Heyho Flower 5":
		scr_text("Hey....h-ho...", "Heyho sad", -1);
		scr_text("Oh man! You don't look so good, are you ok little guy?", "Blek shock");
		scr_text("Hey... hey ho!", "Heyho sad", -1);
		scr_text("I'm guessing this is the deer's fault...hmm...", "Blek confused");
		scr_text("Well, as long as you're staying strong!", "Blek concerned");
		scr_text("Hey ho!", "Heyho sad", -1);
		instance_destroy(inst_552660EA);
		break;
		
		case "Heyho Flower 6":
		scr_text(".....", "Heyho sad", -1);
		scr_text("You're injured too... a deer did this, I'm guessing...", "Blek concerned");
		scr_text("Why? What do they want? Why are they doing this?", "Blek confused");
		scr_text("I get they're probably hungry, but they're attacking me too.", "Blek confused");
		scr_text("I don't think deer eat cats. Are they even deer?", "Blek appalled");
		scr_text("Hey ho... beware the God of the Forest...", "Heyho sad", -1);
		scr_text(".....", "Blek shock");
		inst_2476EDCF.text_id = "Heyho Flower 6 B";
		break;
		
		case "Heyho Flower 6 B":
		scr_text("....", "Blek concerned");
		break;
		
		case "Forest Sign Left":
		scr_text("A sign pointing the way to... somewhere to the West.");
		scr_text("The wood has rotted, and the words have faded.");
		break;
		
		case "Forest Sign Right":
		scr_text("A sign pointing the way to... somewhere to the East.");
		scr_text("The wood has rotted, and the words have faded.");
		break;
		
		case "Forest Sign Down":
		scr_text("A sign pointing the way to... somewhere South.");
		scr_text("The wood has rotted, and the words have faded.");
		break;
		
		case "Forest Sign Up":
		scr_text("A sign pointing the way to... somewhere North.");
		scr_text("The wood has rotted, and the words have faded.");
		break;
		
		case "Forest Sign GKH":
		scr_text("A sign pointing the way to a house to the West.");
		scr_text("THE GROUNDSKEEPING FAMILY'S HOME");
		break;
		
		case "Blek View":
		scr_text("Whoa... is this still the Keep? This forest is huge!", "Blek wonder");
			scr_text_color(25, 29, c_grey, c_black, c_black, c_black);
		scr_text("I can see for miles... and barely any walls in sight!", "Blek");
		break;
		
		case "Petrified Tree 1":
		scr_text("A tree covered in strange, familiar bricks.");
		break;
		
		case "Russell Encounter Forest":
		scr_text("Hey, do.", "Russell", -1);
		scr_text("Russell! Good to see you here before me!", "Blek");
		scr_text("Guess you found somewhere in the Keep with plenty of grass after all!", "Blek");
		scr_text("Yeah... it's... pretty great...", "Russell", -1);
		scr_text("You don't sound too pumped, do.", "Blek base");
		scr_text("I'm as pumped as I can be, can't you tell? It's just... the atmosphere here...", "Russell", -1);
		scr_text("Not quite your cup of tea?", "Blek base");
		scr_text("It's oppressive. Too oppressive. Maybe if I move around a bit I can find a better spot to chill.", "Russell", -1);
		scr_text("Maybe I'll see you up ahead, then!", "Blek");
		scr_text("Hope so. But don't feel like you're tethered to me, do. Walk your own path.", "Russell", -1);
		inst_5EE53739.text_id = "Russell Encounter Forest B";
		break;
		
		case "Russell Encounter Forest B":
		scr_text("Walk your own path, do.", "Russell", -1);
		scr_text("And that starts by getting out of here.", "Russell", -1);
		break;
		
		case "GK Note 1":
		scr_text("A discarded journal.");
		scr_text("Read the journal?");
				scr_option("Read", "GK Note 1 - Read");
				scr_option("Do not", "GK Note 1 - Do not");
				break;
		
		case "GK Note 1 - Read":
		scr_text("'This place... this massive forest... it's a huge departure from Duvet's palace grounds, that's for sure.'");
		scr_text("'Our whole house just... moved. And at such a volatile time, too!'");
		scr_text("'I was worried I wouldn't be able to look after the newest member of the house once they were born, with all the work I was doing, but...'");
		scr_text("'Now, I believe my problems have been solved, in a strange round-about way!'"); 
		break;
		
		case "GK Note 1 - Do not":
		scr_text("You leave the journal to sit... for who knows how long.");
		break;
		
		case "GK Note 2":
		scr_text("A discarded journal.");
		scr_text("Read the journal?");
				scr_option("Read", "GK Note 2 - Read");
				scr_option("Do not", "GK Note 2 - Do not");
				break;
		
		case "GK Note 2 - Read":
		scr_text("'Gardening has been a success, despite some complications.'");
		scr_text("'The food is bland, and I keep catching deer digging up my potatoes.'");
		scr_text("'Nell planted a few flowers on her side of the garden.'");
		scr_text("'They're beautiful, but I can't help but worry that they'll be targetted by our furry friends too.'");
		scr_text("'She finds my concerns funny, saying that, if they do eat her flowers, she'll just plant more all over again.'");
		break;
		
		case "GK Note 2 - Do not":
		scr_text("You leave the journal to sit... for who knows how long.");
		break;
		
		
		case "GK Note 3":
			scr_text("A discarded journal.");
		scr_text("Read the journal?");
				scr_option("Read", "GK Note 3 - Read");
				scr_option("Do not", "GK Note 3 - Do not");
				break;
				
		case "GK Note 3 - Read":
		scr_text("'I found this strange mural far into the woods. It depicts a creature similar to a deer...'");
		scr_text("'...at least, the head of one. There were strange instructions underneath it, detailing something.'");
		scr_text("'I wasn't too sure what, though. Something to do with candles, and a hole?'");
		scr_text("'While on my way back to the house, I startled a deer, and it darted away.'");
		scr_text("'For a split second, I could have sworn it was running on two-'");
		scr_text("The rest of the page is missing.'");
		break;
		
		case "GK Note 3 - Do not":
		scr_text("You leave the journal to sit... for who knows how long.");
		break;
		
		case "GK Note 4":
		scr_text("A discarded journal.");
		scr_text("Read the journal?");
				scr_option("Read", "GK Note 4 - Read");
				scr_option("Do not", "GK Note 1 - Do not");
				break;
		
		case "GK Note 4 - Read":
		scr_text("'Nell's getting close to being due. Oh, what a day it'll be!'");
		scr_text("'All these years of trying and finally, we'll have someone to look after!'");
		scr_text("'I've converted the old storage room to their new room, and spent the last four days carving a crib.'");
		scr_text("'All these days spent hunting and gathering will be worth it, soon enough.'");
		scr_text("'I love you Nell. I hope that, if you find these journals I've left on my journies, you'll see this.'");
		break;
		
		
		case "GK Note 5":
		scr_text("A discarded journal.");
		scr_text("Read the journal?");
				scr_option("Read", "GK Note 5 - Read");
				scr_option("Do not", "GK Note 1 - Do not");
				break;
		
		case "GK Note 5 - Read":
		scr_text("'What did I do to deserve this?'");
		scr_text("The rest of the journal is empty.");
		break;
		
		case "Stone Mural":
		scr_text("A mural, carved into a wall. There's text carved in the stone underneath the picture.");
		scr_text("It's mostly unreadable, but seemingly spells out something to do with candles, a hole, and fire.");
		//Are you looking here for answers? 
		//You will not find it.
		//At least not within here. Or the Keep.
		//But maybe soon, you'll find some.
		//The Hole awaits.
		break;
			
		case "Dirt Pile Item":
		scr_text("Something is shining beneath this pile of dirt.");
		scr_text("Pick it up?");
			scr_option("Yes", "Dirt Pile Item - Yes");
			scr_option("No", "Dirt Pile Item - No");
		break;
		
		case "Dirt Pile Item - Yes":
		scr_text("ITEM VALUE DESC");
		instance_destroy(inst_1E344125)
		sprite_delete(Spr_Item_Shine6)
		break;
		
		case "Dirt Pile Item - No":
		scr_text("You recall how hard it is to wash your hands in this forest without being swept away by the flow of the river.");
		scr_text("Probably best that your hands remain clean.");
		break;
		
		case "Deer 1":
		scr_text("...", "Deer", -1);
		scr_text("...", "Blek concerned");
		scr_text("...", "Deer", -1);
		scr_text("...strange. From what I remember, deer tend to be spooked easily.", "Blek confused");
		scr_text("But you'll just let me walk right on up like it's nothing, huh?", "Blek concerned");
		scr_text("...", "Deer", -1);
		scr_text("Not that I'm complaining! You want a pet, big guy?", "Blek");
		scr_text("...", "Deer", -1);
			scr_option("Pet the deer", "Deer 1 - Pet");
			scr_option("Do not", "Deer 1 - Don't");
		instance_destroy(inst_2612D772);
		break;
		
		case "Deer 1 - Pet":
		scr_text("...!", "Blek appalled");
		scr_text("That's not what fur feels like.", "Blek confused");
		scr_text("...", "Deer", -1);
		scr_text("And, like, I should know, you know? Because of my...", "Blek concerned");
		scr_text("...", "Deer", -1);
		scr_text("...my... fur... n-nevermind...", "Blek confused");
		scr_text("...", "Deer", -1);
		break;
		
		case "Deer 1 - Don't":
		scr_text("Might be for the best. You smell kinda funny. Like... old coins.", "Blek base");
		scr_text("No offense! I'm sure your future significant other will be fawning over the smell!", "Blek shock");
		scr_text("Hehehe... fawning...", "Blek");
		scr_text("...", "Deer", -1);
		scr_text("...right...", "Blek concerned");
		scr_text("...", "Deer", -1);
		break;
		
		case "Deer 2":
		scr_text(".....", "Deer", -1);
		scr_text("Uh...", "Blek confused");
		scr_on_close("Deer 2 Empty");
		break;
		
		case "Deer 2 Empty":
		scr_text("..............", "Empty", -1);
		scr_text("!!!", "Blek shock")
		scr_text("DEER FIGHT");
		scr_on_close("Deer 2 Empty B");
		break;
		
		case "Deer 2 Empty B":
		instance_destroy(inst_2D0A2CFC)
		instance_destroy(inst_4DE43184)
		scr_text("What was that thing? It wasn't a deer... right?", "Blek shock");
		scr_text("Most of my ghost cats did barely anything against it...", "Blek concerned");
		scr_text("This isn't good...", "Blek confused");
		break;
		
		case "Petrified Tree 2":
		scr_text("An annoyingly familiar tree covered in bricks.");
		break;
		
		case "Blood Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Grahm Cracker. Went missing one day, was found in a sorry state.'");
		scr_text("'Perhaps the killer was not the one who left the door open, but the one who believed he could live his life alone.'");
		scr_text("Accept the cat into your ranks?");
			scr_option("Accept", "Blood Cat Grave - Accept");
			scr_option("Do not", "Blood Cat Grave - Do not");
			inst_5865AC0F.text_id = "Cat Grave B"
		break;
		
			case "Blood Cat Grave - Accept":
			scr_text("Blood Cat joined your ranks.");
			break;
				
			case "Blood Cat Grave - Do not":
			scr_text("You allowed the cat to continue it's peacful slumber.");
			inst_5865AC0F.text_id = "Blood Cat Grave"
			break;
		
		
		case "Candleberry Bush":
		scr_text("Are those... candles?", "Blek listen");
		scr_text("They're growing out of this bush like fruit. Do all the candles in the Keep grow like this?", "Blek confused");
			scr_text_color(70, 74, c_grey, c_black, c_black, c_black);
		scr_text("I guess it wouldn't hurt to pick one, in case I get cold!", "Blek base");
		asset_add_tags(Obj_Blek, "Candleberry", asset_object)
		scr_on_close("Candleberry Bush 2")
		break;
		
		case "Candleberry Bush 2":
		scr_text("I'll just... hold it at arm's length...", "Blek confused");
		scr_text("You took a candleberry.");	
		instance_destroy(inst_438E53D5);
		instance_create_layer(82, 256, "Instances_1", obj_Candleberry_Empty)
		break;
		
		case "Heyho Lump":
		scr_text("Something beneath the dirt has attempted to trip you.");
		scr_text("It shivers when touched.");
		break;
		
		case "Heyho Cold":
		scr_text("H-h-hey ho...", "Heyho sad", -1);
		scr_text("You look chilly, little guy! Look at you, you're all blue! Hehehe...", "Blek");
		scr_text("H-h-h-hey ho!", "Heyho sad", -1);
		scr_text("Alright alright, sorry! What can I do to help?", "Blek shock");
		scr_text("Hey h-ho...", "Heyho sad", -1);
		scr_text("Right, yeah, I keep making that mistake, don't I?", "Blek confused");
		scr_text("You stay here, I'll look around for some clues!", "Blek base");
		inst_66C4F59C.text_id = "Heyho Cold B";
		break;
		
		case "Heyho Cold B":
		scr_text("H-h-hey h-ho...", "Heyho sad", -1);
		scr_text("Still cold huh? Don't worry, I'm on it!", "Blek");
		break;
		
		case "Roots":
		scr_text("Whoa! Are these the flower's roots? They're so long!", "Blek shock");
		scr_text("And cold too... are they shivering?", "Blek confused");
		scr_text("Maybe that's why the poor guy's so cold... his roots are exposed!", "Blek concerned");
		scr_text("I should try to find a way to warm them up!", "Blek base");
		inst_30976C7E.text_id = "Roots B";
		break;
		
		case "Roots B":
		scr_text("The roots shiver as you run your paw through them.")
		scr_text("They're clearly envious of your warm fur coat.");
		break;
		
		case "Roots 2":
		scr_text("The roots shiver as you run your paw through them.")
		scr_text("They're clearly envious of your warm fur coat.");
		scr_text("Place the candleberries?");
			scr_option("Yes", "Roots 2 - Yes");
			scr_option("No", "Roots 2 - No");
		break;
		
		case "Roots 2 - Yes":
		scr_text("There we go! That outta warm you up!", "Blek");
		scr_text("And... yep! They're far enough away, so they won't burn!", "Blek listen");
		scr_text("I should go see if the flower's feeling better now.", "Blek base");
		inst_30976C7E_1.text_id = "Roots 2 B";
		instance_destroy(inst_4CE585A9_1);
		instance_create_layer(134, 153, "Instances_1", obj_Braizer_Candle)
		asset_add_tags(Obj_Blek, "Rootwarm", asset_object);
		break
		
		case "Roots 2 - No":
		scr_text("You leave the roots to shiver");
		break;
		
		case "Roots 2 B": 
		scr_text("You run your paw through the roots. They feel delightfully warm!");
		break;
		
		
		case "Heyho Cold 2":
		scr_text("H-h-hey ho...", "Heyho sad", -1);
		scr_text("Chilly, right? Don't worry, I've got you!", "Blek");
		scr_text("H-h-h-hey ho!", "Heyho sad", -1);
		inst_66C4F59C_1.text_id = "Heyho Cold 2 B";
		break;
		
		case "Heyho Cold 2 B":
		scr_text("H-h-hey h-ho...", "Heyho sad", -1);
		scr_text("Still cold huh? Don't worry, I'm on it!", "Blek");
		break;
		
		case "Heyho Cold 3":
		scr_text("Hey ho hey ho!", "Heyho", -1);
		scr_text("Feel better? Good! Glad I could help, little guy!", "Blek");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("That ring over there, you wanna give it to me?", "Blek listen");
		scr_text("Hey ho!", "Heyho", -1);
		scr_text("I'm assuming so, but I can't be so sure with you flower guys...", "Blek confused");
		scr_text("...I'll just take the ring, and you can yell at me if I wasn't supposed to. Ok?", "Blek base");
		scr_text("Hey ho!", "Heyho", -1);
		inst_66C4F59C_1_1.text_id = "Heyho Cold 3 B"
		break;
		
		case "Heyho Cold 3 B":
		scr_text("Hey ho!", "Heyho", -1);
		break;
		
		case "Circulation Ring":
		scr_text("That pesky root from before has retreated, leaving this ring behind.");
		scr_text("Take the ring?");
			scr_option("Take the ring", "Circulation Ring - Take");
			scr_option("Do not", "Circulation Ring - Do not");
		break;
		
		case "Circulation Ring - Take":
		scr_text("You picked up the Circulation Ring.");
		sprite_delete(Spr_Item_Shine7);
		instance_destroy(inst_18784D09_1_1)
		break;
			
		case "Circulation Ring - Do not":
		scr_text("Maybe it's better to leave the ring here on the ground.");
		scr_text("Who knows? This could be it's bed, or it's sofa.");
		inst_18784D09_1_1.text_id = "Circulation Ring"
		break;







	
	
	
	
	


















		//-----------------AREA 5-------------------//
		
		case "Wooden Gate":
		scr_text("A gate that refuses to swing open.");
		inst_5872504B.text_id = "Wooden Gate B";
		break;
		
		case "Wooden Gate B":
		scr_text("No amount of pushing can force the gate open...");
		inst_5872504B.text_id = "Wooden Gate C";
		break;
		
		case "Wooden Gate C":
		scr_text("You could very easily fit under this gate, but...");
		scr_text("Would that not be undermining the point of it?");
		inst_5872504B.text_id = "Wooden Gate D";
		break;
		
		case "Wooden Gate D":
		scr_text("The gate's clearly not going anywhere.");
		break;
		
		case "GK House Sign 1":
		scr_text("A hand painted sign.");
		scr_text("Groundskeeper Dorian and Nell. This must be the house that Smalls mentioned.", "Blek listen");
		scr_text("It doesn't look like the way is blocked... I could just leave this place be...", "Blek confused");
		inst_1E751B76.text_id = "GK House Sign 1 B";
		break;
		
		case "GK House Sign 1 B":
		scr_text("A hand painted sign, reading ''Groundskeeper Dorian and Nell''.");
		scr_text("Small scratches underneath the two names indicate that a third has been scribbled out.");
		break;
		
		
		case "GK1 Dining Table":
		scr_text("A table with three chairs, set for two.")
		break;
		
		case "GK1 Barrel":
		scr_text("A group of empty barrels.");
		scr_text("Is a group of barrels called a group? A collection? A mob?", "Blek listen");
		inst_4AFFA4BF.text_id = "GK1 Barrel B";
		break;
		
		case "GK1 Barrel B":
		scr_text("A cornicopia of barrels.");
		break;
		
		case "GK1 Kitchen Note":
		scr_text("A note pinned to the side of the kitchen counter.");
		scr_text("'I think I have a solution for our locked door problem!''");
		scr_text("'I placed the key to the bedroom under your chair, in case you come home late again.'");
		scr_text("'I've tried to sleep with the door unlocked, but I just can't shake the feeling that something's gonna get inside...'");
		scr_text("The note is signed 'Nell,' next to a drawing of a heart.");
		asset_add_tags(Obj_Blek, "KitchenNote", asset_object);
		break;
		
		case "GK1 Cellar Door":
		scr_text("The door is locked, but a small window will allow you to peer inside. Look inside the window?");
			scr_option("Look", "GK1 Cellar Door - Look");
			scr_option("Do not", "GK1 Cellar Door - Do Not");
		break;
		
		case "GK1 Cellar Door - Look":
		scr_text("You peer inside...");
		instance_create_layer(Obj_Blek.x, Obj_Blek.y, "Instances_1", obj_Peephole)
		scr_text("Looks like an empty cellar.", "Blek base");
		scr_text("No use exploring in there, then.", "Blek base");
		break;
		
		case "GK1 Cellar Door - Do Not":
		scr_text("You ignored the door for now...");
		break;
		
		case "GK1 Kitchen Sink":
		scr_text("A pump connected to the kicthen counter.");
		scr_text("Weird... I don't think I've ever seen something like this before. What if I... ", "Blek listen");
		scr_text("Pull the pump's handle?");
			scr_option("Pull it!", "GK1 Kitchen Sink - Pull");
			scr_option("I dunno...", "GK1 Kitchen Sink - No");
		break;
		
		case "GK1 Kitchen Sink - Pull":
		scr_text("Whoa! Water came out!", "Blek listen");
		scr_text("Cool! I guess I am a little thirsty, how did you know? Hehe...", "Blek");
		scr_text("You took a glass of water from the sink. Hopefully it's not too dirty.");
		instance_create_layer(256, 212, "Instances_1", obj_Sink)
		asset_add_tags(Obj_Blek, "Quenched", asset_object);
		inst_7523546.text_id = "GK1 Kitchen Sink B";
		if obj_Sink.image_index < 4
		{
		obj_Sink.image_speed = 1
		}else{
		obj_Sink.image_speed = 0	
		}
		break;
		
		case "GK1 Kitchen Sink - No":
		scr_text("Yeah, probably for the best. How did that saying go again?", "Blek confused");
		scr_text("Curiosity... and cats...", "Blek listen");
		scr_text("Ahh, nevermind.", "Blek base");
		break;
		
		case "GK1 Kitchen Sink B":
		scr_text("I don't want to be greedy.", "Blek base");
		break;
		
		case "GK1 Clock":
		scr_text("A grandfather clock.");
		scr_text("This of course implies the existance of a child and grandchild clock.");
		scr_text("Perhaps they're somewhere nearby...");
		break;
		
		case "GK1 Chairs":
		scr_text("Two armchairs facing the fireplace.");
		scr_text("Thoughts of curling up in front of them, letting the warmth of the fire wash over you, come to mind...");
		scr_text("Ehhh... Maybe not...", "Blek confused");
		break;
		
		case "GK1 Armchair Key":
		scr_text("Two armchairs facing the fireplace.");
		scr_text("You recall reading the note in the kitchen and search under the chairs, finding a key!");
		scr_text("Picked up the Bedroom Key.");
		asset_add_tags(Obj_Blek, "GK1BedroomKey", asset_object);
		instance_destroy(inst_3260732A)
		break;
		
		case "GK1 Plant":
		scr_text("A potted blue flower.");
		scr_text("Hey ho! Hehehe...", "Blek");
		inst_243CDCE4.text_id = "GK1 Plant B";
		break;
		
		case "GK1 Plant B":
		scr_text("Man... I guess some of you don't talk back, huh?", "Blek base");
		break;
		
		case "GK1 Bookshelf":
		scr_text("A collection of books, living as a wonderful community within this firm shelf.");
		scr_text("Pick out a book?");
			scr_option("Grab one!", "GK1 Bookshelf - Grab");
			scr_option("Books are for nerds!", "GK1 Bookshelf - Do not");
		break;
		
		case "GK1 Bookshelf - Grab":
		scr_text("You flip through a book, stopping on a page depicting four red thrones.");
		scr_text("There's a label underneath the thrones, but its been scratched out.");
		scr_text("The word ''thieves'' has been written over it.");
		scr_text("These thrones seem familiar... strange...", "Blek listen");
		inst_102B4587.text_id = "GK1 Bookshelf B"
		break;
		
		case "GK1 Bookshelf - Do not":
		scr_text("You leave the books to their thriving neighborhood.");
		break;
		
		case "GK1 Bookshelf B":
		scr_text("You leave the books be, as to not disrupt their community.")
		break;
		
		case "GK1 Fireplace":
		scr_text("A very warm fireplace that still manages to unnerve you.");
		scr_text("Something within sparkles and catches your eye...");
		scr_text("But touching the fire would prove unwise.");
		break;
		
		case "GK1 Fireplace Water":
		scr_text("A very warm fireplace that still manages to unnerve you.");
		scr_text("Something within sparkles and catches your eye...");
		scr_text("There's no way I'm touching that fire.", "Blek mad");
		scr_text("Use the glass of water?");
			scr_option("Douse that fire!", "GK1 Fireplace Water - Douse");
			scr_option("No thanks...", "GK1 Fireplace Water - No");
		break;
		
		case "GK1 Fireplace Water - Douse":	
		scr_text("There we go! Now, come to Blek!", "Blek");
		scr_text("Picked up the Wedding Ring.");
		instance_destroy(inst_3577C61A)
		instance_create_layer(511, 54, "Instances_1", obj_Fireplace_Out);
		instance_destroy(inst_16114185)
		break;

		case "GK1 Fireplace Water - No":
		scr_text("I may already be tresspassing, but I'm not gonna leave the place cold too!", "Blek mad");
		scr_text("Wait... if this house is abandoned like Smalls said... why are all the candles still lit?", "Blek concerned");
		scr_text("Why hasn't the wood in the fireplace fully burned?", "Blek concerned");
		scr_text("...", "Blek concerned");
		scr_text("Huh...", "Blek confused");
		break;
		
		case "GK1 Fireplace Water B":
		scr_text("You feel so much safer now.");
		break;
		
		case "Locked Door":
		scr_text("It's locked.");
		break;
		
		case "GK1 Painting 1":
		scr_text("A painting of a couple, shrouded in shadows...");
		scr_text("...or, are they made of shadows?");
		scr_text("Maybe these guys are were like Smalls!", "Blek base");
		scr_text("...which doesn't make them any less weird...", "Blek confused");
		break;
		
		case "GK1 Painting 2":
		scr_text("A painting of a castle, shrouded in shadow.");
		scr_text("These paintings are different than the other ones I've seen throughout the Keep.", "Blek base");
		scr_text("I wonder if the Groundskeeper painted them himself!", "Blek");
		inst_1EA7436.text_id = "GK1 Painting 2 B";
		break;
		
		case "GK1 Painting 2 B":
		scr_text("Maybe his wife painted in while he watched!", "Blek");
		scr_text("Maybe he's actually super lazy...", "Blek base");
		scr_text("...", "Blek base");
		scr_text("I'm probably reading too far into this.", "Blek confused");
		break;

		case "GK1 Painting 3":
		scr_text("There sure are a lot of paintings in this house of the Groundskeeper and his wife.", "Blek base");
		scr_text("They must have really loved each other!", "Blek");
		break;
		
		case "GK1 Wall Plant":
		scr_text("You wait for a ''Hey ho!''");
		scr_text("...alas, it never comes...");
		break;
		
		case "GK1 Clock 2":
		scr_text("To the untrained eye, this could be seen as another grandfather clock...");
		scr_text("But actually... it's a son clock.");
		break;
		
		case "GK1 Bed":
		scr_text("Without... whatever that thing that hangs over the side of the bed is called...");
		scr_text("You're able see underneath it!");
		scr_text("Hmm... there something sparking under the bed...", "Blek listen");
		scr_text("I bet I could reach for it!", "Blek base");
			scr_option("Grab it!", "GK1 Bed - Grab");
			scr_option("Leave it!", "GK1 Bed - Leave");
		break;
		
		case "GK1 Bed - Grab":
		scr_text("You slowly reach under the bed.");
		scr_text("Almost... there...", "Blek listen");
		scr_text("...", "Blek listen");
		scr_text("...", "Blek listen");
		scr_text("There! A key!", "Blek");
		scr_text("Picked up the Bathroom Key.");
		asset_add_tags(Obj_Blek, "GK1BathroomKey", asset_object);
		inst_79FC2BEB.text_id = "GK1 Bed B";
		break;
		
		case "GK1 Bed - Leave":
		scr_text("Maybe not. Who knows what could be down there!", "Blek confused");
		break;
		
		case "GK1 Bed B":
		scr_text("As comfy as it looks, I should keep looking around.", "Blek base");
		break;
		
		case "GK1 Towel Basket":
		scr_text("A basket full of towels.");
		scr_text("Sometimes I forget that most people don't just clean themselves.", "Blek base");
		scr_text("It's honestly way easier!", "Blek");
		break;
		
		case "GK1 Bathroom Sink":
		scr_text("Another of these strange water dispensers.");
		scr_text("I'm not too thirsty...", "Blek base");
		inst_5FC52563.text_id = "GK1 Bathroom Sink B";
		break;
		
		case "GK1 Bathroom Sink B":
		scr_text("A mirror sits behind the water dispenser.");
		scr_text("It's me!", "Blek");
		break;
		
		case "GK1 Toilet":
		scr_text("You peer into the strange chair...");
		scr_text("It smells awful... like something's rotting.");
		scr_text("Look further in?");
			scr_option("Look", "GK1 Toilet - Look");
			scr_option("Do not", "GK1 Toilet - Do not");
		break;
		
		case "GK1 Toilet - Do not":
		scr_text("Some things are best left alone.");		
		break;
		
		
		case "GK1 Toilet - Look":
		scr_text("...weird... there's like... a small cave down here...", "Blek concerned");
		scr_text("It stinks though... and not in a ''bathroom'' kind of way.", "Blek confused");
		scr_text("...", "Blek confused");
			scr_option("Jump Down", "GK1 Toilet - Jump");
			scr_option("Absolutly not.", "GK1 Toilet - Do not");
		break;
		
		case "GK1 Toilet - Jump":
		instance_create_layer(144, 105, "Instances_1", obj_warp_block_Unique);
		break;
		
		case "Missing Path":
		scr_text("Guess I'm not going this way...", "Blek confused");
		break;
		
		case "GK2 House Sign":
		scr_text("'Groundskeeper Dorian and Nell.'");
		break;
		
		case "Heyho Flower GK":
		scr_text("H...hey?", "Blek concerned");
		scr_text("Hey ho", "Heyho sad", -1);
		scr_text("Beware the one who wishes to be let in.", "Heyho sad", -1);
		scr_text("What does that-", "Blek concerned");
		scr_on_close("Heyho Flower GK B");
		break;
		
		
		case "Heyho Flower GK B":
		scr_text("H-hey! Wait! What does that mean?!", "Blek shock");
		scr_text("...", "Blek appalled");
		instance_destroy(inst_1F2863B3)
		instance_create_layer(332, 79, "Instances_1", obj_Heyho_Escape)
		instance_destroy(inst_6D815D53)
		break;
		
		case "Ritual Site":
		scr_text("...bones...", "Blek confused");
		scr_text("...deer...bones...", "Blek concerned");
		scr_text("...with a missing skull...", "Blek concerned");
		scr_text("There's a key here in this weird grave...", "Blek confused");
		scr_text("Took the Stained Key.");
		asset_add_tags(Obj_Blek, "GraveKey", asset_object);
		instance_destroy(inst_2F37DD54)
		break;
		
		case "GK2 Cellar Door":
		scr_text("The door is locked, but a small window will allow you to peer inside. Look inside the window?");
			scr_option("Look", "GK2 Cellar Door - Look");
			scr_option("Do not", "GK2 Cellar Door - Do Not");
		break;
		
		case "GK2 Cellar Door - Look":
		scr_text("You peer inside...");
		instance_create_layer(Obj_Blek.x, Obj_Blek.y, "Instances_1", obj_Peephole2)
		break;
		
		case "GK2 Cellar Door - Do Not":
		scr_text("You ignored the door for now...");
		break;
		
		case "GK2 Dining Room Table":
		scr_text("There are both claw and bite marks covering the table.");
		scr_text("...", "Blek concerned");
		break;
		
		case "GK2 Barrel":
		scr_text("Rotting fruits and vegetables fill the barrel.");
		scr_text("Despite your curious nature, you know better than to reach a paw inside.");
		break;
		
		case "GK2 Sink":
		scr_text("You pull the lever, waiting for the water to flow forth.");
		scr_text("...");
		scr_text("Nothing happens.");
		break;
		
		case "GK2 Clock 1":
		scr_text("Time to leave.");
		break;
		
		case "GK2 Armchairs":
		scr_text("One armchair has suffered much more abuse than the other.");
		break;
		
		case "GK2 Fireplace":
		scr_text("Someone's been burning books...", "Blek concerned");
		scr_text("Pick up a stray page?");
			scr_option("Pick up a page.", "GK2 Fireplace - Pick up");
			scr_option("Do not", "GK2 Fireplace - Do not");
		break;
		
		case "GK2 Fireplace - Pick up":
		scr_text("An excerpt from a journal, with familiar handwriting.");
		scr_text("'He will make this right. I know he will.'");
		instance_destroy(inst_25374549)
		break;
		
		case "GK2 Fireplace - Do not":
		scr_text("There's clearly nothing worth reading.");
		break;
		
		case "GK2 Bookshelf 1":
		scr_text("They all tried to flee.");
		scr_text("You can only hope some of them made it out ok...");
		break;
		
		case "GK2 Painting 1":
		scr_text("A painting of a couple, shrouded in shadow.");
		break;
		
		case "GK2 Painting 2":
		scr_text("A painting of a familiar castle.");
		scr_text("No one's seemingly home.");
		break;
		
		case "GK2 Laundry Basket":
		scr_text("A basket of towels, caked in a layer of dust.");
		break;
		
		case "GK2 Bathroom Sink":
		scr_text("The candle wax is blocking the flow of water from this pump.");
		scr_text("Waxy water may not be too refreshing anyway.");
		break;
		
		case "GK2 Toilet":
		scr_text("The toilet's been boarded up... and the smell's way worse.", "Blek concerned");
		scr_text("You'd think all these candles would mask the stench, but...", "Blek confused");
		break;
		
		case "GK2 Bed":
		scr_text("The bed.");
		scr_text("Something is under the bed.");
		scr_text("Reach underneath?")
			scr_option("Reach", "GK2 Bed - Reach");
			scr_option("Do not", "GK2 Bed - Do not");
		break;

		case "GK2 Bed - Reach":
		scr_text("....", "Blek confused");
		scr_text("....", "Blek listen");
		scr_text("There's a... hole... under the bed...", "Blek confused");
		scr_text("Maybe I can...", "Blek base");
		scr_on_close("GK2 Bed - Move");
		break;
		
		case "GK2 Bed - Move":
		global.Bedslide = true
		instance_destroy(inst_7CDF7D8)
		instance_destroy(inst_38211327)
		scr_text("You move the bed.");
		break;
		
		case "GK2 Basement Key":
		scr_text("Picked up a cracked key.");
		instance_destroy(inst_2B07FFD0)
		sprite_delete(Spr_Item_Shine8)
		instance_create_layer(518, 197, "Instances_1", obj_GK_Trigger)
		asset_add_tags(Obj_Blek, "BasementScare", asset_object)
		break;
		
		case "Groundskeeper Pre-Fight":
		scr_text("!!!", "Blek shock");
		scr_text("......", "GK", -1);
			scr_text_shake(0, 20)
		scr_text("H-hello? Are you the, uh... Groundskeeper?", "Blek shock");
		scr_on_close("GK Turn");
		break;
		
		case "GK Turn":
		scr_text(".....", "GK", -1);
			scr_text_shake(0, 20)
		scr_text("Groundskeeper Fight");
		instance_destroy(inst_1F7A3FC8)
		instance_create_layer(223, 56, "Instances_1", obj_GK_Turn)
		break;
		
	
		case "GK Post Fight":
		instance_destroy(obj_GK_Turn)
		scr_text("...", "Blek shock");
		scr_text("Who was-", "Blek confused");
		scr_on_close("GK Teleport");
		break;
		
		case "GK Teleport":
		instance_create_layer(160, 64, "Instances_1", obj_warp_block_Unique_2)
		scr_text("-that?", "Blek confused");
		break;
		
		case "GK Teleport End":
		scr_text("!!!", "Blek shock");
		scr_text("Huh?!", "Blek shock");
		break;
		
		case "GK3 Sign":
		scr_text("'Groundskeeper Dorian");
		scr_text("and Nell.'");
		break;
		
		case "GOTF Outside 1":
		scr_text("Necromancer.", "Empty God");
		scr_text("H-huh?", "Blek shock");
		scr_text("Come no closer to this place. There is nothing of value for you here.", "Empty God");
		scr_text("I'd love to leave, but I can't! I'm stuck here!", "Blek mad");
		break;
		
		case "GOTF Outside 2":
		scr_text("So be it.", "Empty God");
		scr_text("I await your prescence, Necromancer.", "Empty God");
		break;
		
		case "GK3 Gate":
		scr_text("Nowhere else to go.");
		break;
		
		case "GK3 Deer":
		scr_text("It watches.");
		scr_text(".....", "Deer", -1);
		break;
		
		case "GK3 Deer Shelf":
		scr_text("What is this thing?!", "Blek shock");
		scr_text("Is it making books out of its body? Why is it so big?", "Blek confused");
		scr_text("....", "Deer", -1);
		break;
		
		case "GK3 Fireplace Deer":
		scr_text(".....", "Deer", -1);
		scr_text("This one is fusing into the fireplace. Wh-why?!", "Blek confused");
		scr_text("Wait... what if I...", "Blek concerned");
		scr_text("!!!", "Blek shock");
		scr_text("The stone of the fireplace feels like them too...", "Blek shock");
		scr_text("It's not fusing into a fireplace, it's fusing with another deer...", "Blek concerned");
		inst_DA16866.text_id = "GK3 Deer";
		break;
		
		case "GK3 Chair Deer":
		scr_text("A fascimile.");
		scr_text(".....", "Deer", -1);
		inst_490C4C7E.text_id = "GK3 Chair Deer B";
		break;
		
		case "GK3 Chair Deer B":
		scr_text("It can chairly be called a deer.");
		scr_text(".....", "Deer", -1);
		inst_490C4C7E.text_id = "GK3 Chair Deer";
		break;
		
		case "GK3 Weird Deer":
		scr_text("This one isn't even trying to mimic something...", "Blek concerned");
		scr_text("Maybe it's just now starting the mimicking process...", "Blek confused");
		scr_text(".....", "Deer", -1);
		break;
		
		case "GK3 Cellar Door":
		scr_text("The door is locked, but a small window will allow you to peer inside. Look inside the window?");
			scr_option("Look", "GK3 Cellar Door - Look");
			scr_option("Do not", "GK3 Cellar Door - Do Not");
		break;
		
		case "GK3 Cellar Door - Look":
		scr_text("You peer inside...");
		instance_create_layer(Obj_Blek.x, Obj_Blek.y, "Instances_1", obj_Peephole3)
		break;
		
		case "GK3 Cellar Door - Do Not":
		scr_text("You ignored the door for now...");
		break;
		
		case "GK3 Deer Group":
		scr_text("They wait.");
		break;
		
		case "GK3 Deer Soup":
		scr_text("They're becoming the floor now.", "Blek concerned");
		scr_text("Is this even a real cabin? Or...", "Blek confused");
		break;
		
		
		case "Deerlord 1":
		scr_text("I have dealt with your kind before, Necromancer.", "Empty God");
		scr_text("I do not know what compels you to seek me out.", "Empty God");
		scr_text("If you believe things shall be different for you, then step forward.", "Empty God");
		break;
		
		case "Deerlord 2":
		scr_text("I admire your resolve.", "Empty God");
		scr_text("Come, necromancer. I await our meeting.", "Empty God");
		break;
		
		case "Deerlord Post Fight":
		instance_create_layer(103, 39, "Instances_1", obj_warp_block_Unique_4)
		asset_has_tags(Obj_Blek, "SLDead", asset_object)
		asset_has_tags(Obj_Blek, "SLDead2", asset_object)
		break;
		
		case "Shock Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Benny. Sought out shelter from a mighty storm. Chose the wrong place under which to hide.'");
		scr_text("'Misunderstanding what is and isn't safe is a killer of many.'");
		scr_text("'Pursuing something that one knows for a fact isn't safe is a killer of many more.'");
		scr_text("Accept the cat into your ranks?");
			scr_option("Accept", "Shock Cat Grave - Accept");
			scr_option("Do not", "Shock Cat Grave - Do not");
			inst_6ECBAD81.text_id = "Cat Grave B"
		break;
		
			case "Shock Cat Grave - Accept":
			scr_text("Shock Cat joined your ranks.");
			break;
				
			case "Shock Cat Grave - Do not":
			scr_text("You allowed the cat to continue it's peacful slumber.");
			inst_6ECBAD81.text_id = "Shock Cat Grave"
			break;
		
		case "Brittle Cat Grave":
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Joan. Recieved love throughout her long, wonderful life.'");
		scr_text("'Suffered horrible withdrawls once that love stopped coming.'");
		scr_text("'She couldn't have controlled her mistakes, or predicted the effects they'd have on her family.'");
		scr_text("'An insidious killer that strikes a deep, enduring wound.'");
		scr_text("Accept the cat into your ranks?");
			scr_option("Accept", "Brittle Cat Grave - Accept");
			scr_option("Do not", "Brittle Cat Grave - Do not");
			inst_5E796A30.text_id = "Cat Grave B"
		break;
		
			case "Brittle Cat Grave - Accept":
			scr_text("Brittle Cat joined your ranks.");
			break;
				
			case "Brittle Cat Grave - Do not":
			scr_text("You allowed the cat to continue it's peacful slumber.");
			inst_5E796A30.text_id = "Brittle Cat Grave"
			break;
		
		case "Russell Cycle":
		scr_text("The cycle marches on.");
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//--------------------------AREA 6-----------------------//
		
		
		case "Area 6 Approach":
		scr_text("Whew! It's a bit chilly!", "Blek");
		scr_text("And musty...", "Blek");
		scr_text("....", "Blek base");
		scr_text("...", "Blek confused");
		scr_text("...Trout can't be far now. This'll all be over soon.", "Blek concerned");
		break;
		
		case "Flesh Greeter":
		scr_text("...what...is this thing? It looks like it's made out of skin...", "Blek confused");
		scr_text("...weave...", "Flesh");
			scr_text_float(0, 50)
		scr_text("Hello! Can you tell me if you've seen a cat around here? She's like me, but wearing purple.", "Blek");
		scr_text("...weave!", "Flesh");
			scr_text_float(0, 50)
		scr_text("H-huh?!", "Blek shock");
		scr_text("FLESH SPIDER FIGHT");
			scr_on_close("Flesh Greeter 2");
		break;
		
		case "Flesh Greeter 2":
		instance_destroy(inst_78F1CDA)
		scr_text("What WAS that thing?", "Blek shock");
		scr_text("Ugh... I can never catch a break.", "Blek confused")
			scr_text_float(0, 2)
		break;
		
		case "Sixcat Painting 1":
		scr_text("A familiar painting of a very fancy cat holding a pipe.");
		break;
		
		case "Sixcat Painting 2":
		scr_text("A familiar painting of a cat with a very fancy earring.");
		scr_text("The earring looks a bit heavy. It's definetly uncomfortable.");
		break;
		
		case "Flytrap Sign 1":
		scr_text("A sign woven from some kind of silk cloth.");
		scr_text("'Now approaching Flytrap.'");
		scr_text("'Visitors may find it hard to pass on through, as our town's bound to captivate you!'");
		scr_text("Underneath is a more hastily woven message.");
		scr_text("'That's a bit of spider humor. Who doesn't love spider humor?'");
		scr_text("Hey! Maybe this is the break I needed!", "Blek");
		scr_text("I hope they've got a nice, safe fire in Flytrap! I'm freezing!", "Blek confused");
		break;
		
		case "Snowman 1":
		scr_text("A snow pile in the shape of a creature with eight arms and many eyes. Perhaps a spider?");
		scr_text("There's a look of fearful acceptance in its many eyes. It knows its life begins and ends with the falling snow.");
		scr_text("Has it accepted that it will melt? Does it know that melting is an inevitable constant?");
		scr_text("Whether or not it knows will not change its future. Time waits for snow man.");
		break;
		
		case "Snowman 2":
		scr_text("A snowman in the process of weaving something.");
		scr_text("Something is written onto the snowman with black ink.");
		scr_text("''A Snowble!'' -By Hop");
		inst_5E1A172F.text_id = "Snowman 2 B";
		break;
		
		case "Snowman 2 B":
		scr_text("Can't you see it's busy?");
		break;
		
		case "Snowman 3":
		scr_text("A snow pile posed next to a hockey stick.");
		scr_text("It seems like he has snow body to play with.");
		break;
		
		case "Snowman 4":
		scr_text("A family of snow people.");
		scr_text("There really is snow place like home! Hehehe!", "Blek");
		scr_text("You're a monster. You should be ashamed.");
		break;
		
		case "Snowman 5":
		scr_text("A yellow snowman. Something is written onto it in black ink.");
		scr_text("'Snowman Painted Yellow, by Aran.'");
		break;
		
		case "Snowman 6":
		scr_text("A snowman and a snow cake");
		scr_text("Happy birthday, snow dude! Mind if I have some of your ''ice'' cream cake? Hehehe...", "Blek");
		scr_text("...actually, I better not. I have no idea where this snow has been.", "Blek confused");
		break;	
		
		case "Fishing Hole":
		scr_text("An icefishing hole. Or is it a flyfishing hole?");
		scr_text("Nah, that would be stupid. Flies can't swim!", "Blek");
		break;
		
		case "Hop Sign":
		scr_text("A colorful sign spun from webs.");
		scr_text("'Hop's House!'");
		break;
		
		case "Hop Window Painting":
		scr_text("An abstract painting resting in the window sill.");
		scr_text("Someone really likes using color! I like it!", "Blek");
		scr_text("Though it could use a bit more red.", "Blek listen");
		break;
		
		case "Hop Tree Painting":
		scr_text("A crude painting of a tree branch covered in webs.");
		scr_text("The names 'Hop' and 'Aran' are signed at the bottom.");
		scr_text("Way better than anything I could do! Alas, these paws lack artistic talent.", "Blek");
		break;
		
		case "Flytrap Directions 1":
		scr_text("'Noble and Hop'");
		scr_text("'Harry <'");
		scr_text("'Pete and Tulle <^'");
		scr_text("'Aran ^'");
		break;
		
		case "Flytrap Directions 2":
		scr_text("'Harry and Thanph Pond'");
		scr_text("'Noble and Hop >'");
		scr_text("'Pete and Tulle ^'");
		scr_text("'Aran >^'");
		break;
		
		case "Flytrap Directions 3":
		scr_text("'Pete and Tulle'");
		scr_text("'Noble and Hop >V'");
		scr_text("'Harry V'");
		scr_text("'Aran >'");
		break;
		
		case "Flytrap Directions 4":
		scr_text("'Aran'");
		scr_text("'Noble and Hop V'");
		scr_text("'Harry <V'")
		scr_text("'Pete and Tulle <'")
		break;
		
		case "Noble Mail Window":
		scr_text("Letters spill out of this window sill onto the fresh snow.")
		scr_text("Read a letter?");
		scr_option("Just a peek!", "Noble Mail Window - Yes");
		scr_option("That's morally wrong.", "Noble Mail Window - No");
		break;
		
			case "Noble Mail Window - Yes":
			scr_text("You feel a weight on your shoulders as you open the letter.");
			scr_text("'Hey Noble! I was wondering if you could find me that replacment part I asked for a few days ago.'");
			scr_text("'Loom won't run without it, after all. Just... get it to me soon.'");
			scr_text("'-Harry'");
			inst_6AABD9C0.text_id = "Noble Mail Window B"
			break;
		
			case "Noble Mail Window - No":
			scr_text("I'm not a monster. The letters stay closed.", "Blek mad");
			instance_destroy(inst_6AABD9C0)
			break;
		
		case "Noble Mail Window B":
		scr_text("One letter is enough. Let your soul rest.");
		break;
		
		case "Noble Banner":
		scr_text("A large purple banner hangs over the doorway.")
		scr_text("That's either a big spider or a cool design.", "Blek base");
		scr_text(".....", "Blek listen");
		scr_text("Yep, as I thought! Just a design!", "Blek");
		scr_text("...or a really convincing big spider.", "Blek confused");
		scr_text("......", "Blek listen");
		break;
		
		case "Pond Sign":
		scr_text("'Thanph Pond. The opposite of a web'");
		scr_text("I mean yeah, I guess... but that's a weird way to describe a slippery pond.", "Blek base");
		break;
		
		case "Harry Mailbox":
		scr_text("A mailbox with a few slips of paper inside.");
		scr_text("They all have requests for various items written on them.");
		scr_text("'An orange sweater, a green toboggan, a cool eyepatch', and so on.");
		scr_text("Even if they're sitting in a mailbox, they aren't sealed within envelopes.");
		scr_text("Thus, it isn't morally wrong to read them.");
		scr_text("You're on thin ice, though.");
		break;
		
		case "Harry Sign":
		scr_text("'Harry's Workshop.'");
		break;
		
		case "Graveyard Sign":
		scr_text("'Western Graveyard'");
		scr_text("'IMPORTANT NOTE! DO NOT under ANY circumstances disturb these graves!'");
		scr_text("'I shouldn't have to tell you all this, but they were here when we moved in!'");
		scr_text("'Last thing we want is a bunch of angry spirits causing us trouble!'");
		scr_text("Spirits, you say?", "Blek base");
		scr_text("Maybe... a cat spirit?", "Blek");
		break;
		
		case "Weapon Barrel":
		scr_text("A barrel of iron-tipped spears.");
		scr_text("...", "Blek confused");
		scr_text("You contemplate licking one of the blades, to see if your tounge will stick to the tip.");
		scr_text("There's no shortage of bad ideas in that brain of yours.");
		break;
		
		case "Pete Door Sound":
		audio_play_sound(snd_Glass_Smash, 10, false)
		scr_text("!!!", "Blek shock");
		scr_text("What was that!?", "Blek shock");
		break;
		
		case "Pete House Sign":
		scr_text("A sign spun from webs.");
		scr_text("'Pete's House.'");
		break;
		
		case "Snow Struggle":
		scr_text("Looks like a struggle.", "Blek confused");
		scr_text("Someone was attacked, and dragged outside through the snow.", "Blek concerned")
		scr_text("Did another flesh monster do this?", "Blek concerned");
		break;
		
		case "Tulle House Sign":
		scr_text("A sign spun from webs.");
		scr_text("'Tulle's House.'");
		break;
		
		
		case "Fang Ring Aquisition":
		scr_text("Something sparkles admist the fresh snow.");
		scr_text("Pick it up?");
			scr_option("Pick it up.", "Fang Ring Aquisition - Yes");
			scr_option("Do not", "Fang Ring Aquisition - No");
		break;
		
			case "Fang Ring Aquisition - Yes":
			scr_text("Picked up the Fang Ring.");
			instance_destroy(inst_4F44012C)
			sprite_delete(Spr_Item_Shine9)
			break;
		
		
			case "Fang Ring Aquisition - No":
			scr_text("You left the object to chill.");
			break;
		
		case "Aran House Sign":
		scr_text("A sign spun from webs.");
		scr_text("'Aran's House'");
		break;
		
		case "Museum Pre-Sign":
		scr_text("A sign spun from webs.");
		scr_text("'Art Gallery ^'");
		scr_text("'CURRENTLY OFF LIMITS!!!'");
		break;
		
		case "Sewing Circle 1":
		scr_text("A set of chairs arranged into a sewing circle.");
		scr_text("An orange toboggan sits atop this chair. The end is black, giving it a burnt look.");
		scr_text("Stylish!", "Blek");
		break;
		
		case "Sewing Circle 2":
		scr_text("A set of chairs arranged into a sewing circle.");
		scr_text("A red scarf is draped over this chair.");
		scr_text("What a great scarf! Befitting of only the coolest of dudes.", "Blek");
		break;
		
		case "Sewing Circle 3":
		scr_text("A set of chairs arranged into a sewing circle");		
		scr_text("Sewing needles have been abandoned at the base of this chair.");
		scr_text("Perhaps one day they'll be pulled from the ground, and weilded to create a mighty sweater.");
		break;
		
		case "Sewing Circle 4":
		scr_text("A set of chairs arranged into a sewing circle.");	
		scr_text("Unfinished purple cloth lies in the snow next to this chair.");
		scr_text("....", "Blek depressed");
		break;
		
		case "Sewing Circle 5":
		scr_text("A set of chairs arranged into a sewing circle.");		
		scr_text("Without a nearby sewing project, one would assume this chair was simply tagging along.");
		break;
		
		case "Sewing Circle 6":
		scr_text("A set of chairs arranged into a sewing circle.");		
		scr_text("An incomplete set of three mittens lies beneath this chair.");
		scr_text("Someone out there has been cursed with horribly clammy hands.");
		break;
		
		case "Graveyard Gate":
		scr_text("An iron gate blocks off the graveyard.");
		scr_text("Hmmm... I don't see a Ghost Cat anywhere in there...", "Blek concerned");
		scr_text("But it looks like one of the graves sunk below the ground. Maybe...", "Blek base");
		break;
		
		case "Art Gallery Door":
		scr_text("A very auspicious door.");
		scr_text("You can't see inside past the frosted glass.");
		scr_text("Pushing against it reveals that its frozen shut.");
		break;
		
		case "Art Gallery Entrance Sign":
		scr_text("A sign spun from webs.");
		scr_text("'CAUTION! DO NOT ENTER!'");
		scr_text("'IF YOU SEE ANYTHING TRYING TO ESCAPE THE GALLERY, REPORT IT TO PETE IMMEDIATLY!'");
		break;
		
		case "Hop Tea Table":
		scr_text("A couple drinks have been left out on this webbed up table.");
		scr_text("They've all frozen over.");
		inst_7FE5F87E.text_id = "Hop Tea Table B";
		break;
		
		case "Hop Tea Table B":
		scr_text("Bottles sit on this table, filled with everything nessesary for the perfect tea time!");
		scr_text("Tea, sugar, honey, tiny spiders, mint, etc.");
		break;
		
		case "Hop Drawing Table":
		scr_text("Oooo! Look at all these!", "Blek wonder");
			scr_text_float(0, 5);
		scr_text("Looks like the result of a long painting session!", "Blek");
		scr_text("Wish I could find who drew this stuff...", "Blek base");
		break;
		
		case "Hop Bed":
		scr_text("A hammock made from webs.");
		scr_text("It could turn a power nap into an eternally-stuck slumber.");
		break;
		
		case "Dancing Spider 1":
		scr_text("Wow! Look at you go!", "Blek");
		scr_text("I'm guessing you're not the owner of this house, huh? All the furniture's a bit too big for you...", "Blek base");
		scr_text("Can you tell me where the owner is, little spider?", "Blek base");
		scr_text("...", "Blek base");
		scr_text("...right...", "Blek confused");
		inst_30D6BB06.text_id = "Dancing Spider 1 B";
		break;
		
		case "Dancing Spider 1 B":
		scr_text("He schmooves like no other.");
		break;
		
		case "Hop Letter":
		scr_text("A partially completed note made from silk. Read the note?");
			scr_option("Stick around!", "Hop Letter - Yes");
			scr_option("Not interested!", "Hop Letter - No");
		break;
		
		case "Hop Letter - Yes":
		scr_text("'Aran, it's Hop. I know you've been a bit of a recluse for the past couple of days, but I'd love to see you again!'");
		scr_text("'You never finished teaching me how to shade using acryllics.'");
		scr_text("'I tried copying the style with Harry's loom, but it just ended up making my toboggan look burnt, hehehe...'");
		scr_text("'I know what Noble said to you during the sewing circle session hurt your feelings, but I wish you'd forgive him.'");
		scr_text("'He may put up an angry front, but trust me, he's worried about you. We all are!'");
		scr_text("'I think he just needs a bit more convincing before he finally sees how interesting your art can be.'");
		scr_text("'It's better than anything the loom can create!'");
		scr_text("The rest of the note is torn off.");
		break;
		
		
		case "Hop Letter - No":
		scr_text("You leave the note to it's fly-catching duties.");
		break;
		
		case "Noble Mail Pile":
		scr_text("A pile of letters litter the ground.");
		scr_text("None of them are for you.");
		scr_text("Don't even think about it.");
		inst_2E87E5D2.text_id = "Noble Mail Pile B";
		break;
		
		case "Noble Mail Pile B":
		scr_text("You should really stop stepping on mail that doesn't belong to you.");
		break;
		
		case "Noble Desk":
		scr_text("Looks like someone was weaving a note. They barely started on it too...", "Blek base");
		scr_text("I wonder what caused them to abondon it?", "Blek base");
		scr_text("I hope I don't find it myself...", "Blek confused");
		inst_5161B0ED.text_id = "Noble Desk B";
		break;
		
		case "Noble Desk B":
		scr_text("A drawer silently calls your name.");
		scr_text("I guess I can snoop a little bit... but no taking!", "Blek base");
		scr_text("Look in the drawer?");
			scr_option("Snoop!", "Noble Desk B - Yes");
			scr_option("Don't snoop!", "Noble Desk B - No");
		break;
		
		
		case "Noble Desk B - Yes":
		scr_text("There isn't much inside, other than a small painting of six spiders sitting folded up in the back.");
		scr_text("How sweet!", "Blek");
		break;
		
		case "Noble Desk B - No":
		scr_text("On second thought, I'm no looter! The drawer stays closed.");
		break;
		
		case "Noble Table":
		scr_text("Someone left their breakfast abandoned.");
		scr_text("Its getting cold at an unsurprisingly rapid pace.");
		break;
		
		case "Noble Web Chair":
		scr_text("What's even the point of webbing this chair up? Was the spider who did this planning to eat it later?", "Blek listen");
		break;
		
		
		case "Noble Letter":
		scr_text("A partially completed note made from silk. Read the note?");
			scr_option("Stick around!", "Noble Letter - Yes");
			scr_option("Not interested!", "Noble Letter - No");
		break;
		
		case "Noble Letter - Yes":
		scr_text("'It feels like every day is something different.'");
		scr_text("'First was the Aran fiasco, and now the barricade on the Gallery doors is broken!'");
		scr_text("'I told Pete to keep a close eye on it, but he's already stretched so thin.'");
		scr_text("'Maybe I should learn to pick up a sword...'");
		scr_text("'...that kid. I bet he knows what happened to the barricade.'");
		break;
		
		case "Noble Letter - No":
		scr_text("You leave the note to it's fly-catching duties.");
		break;
		
		case "Moon Ring Aquisition":
		scr_text("Something shiny is sitting amongst the discarded silk.");
		scr_text("Pick it up?");
			scr_option("Pick it up", "Moon Ring - Yes");
			scr_option("Do not", "Moon Ring - No");
		break;
		
			case "Moon Ring - Yes":
			scr_text("Picked up the Woven Moon Ring");
			instance_destroy(inst_474126AE)
			sprite_delete(Spr_Item_Shine10)
			break;
			
			case "Moon Ring - No":
			scr_text("You left the ring to reside alone in it's sticky new home.");
			break;
		
		case "Harry Loom":
		scr_text("Before you stands a massive loom, being fed spider silk.");
		scr_text("Whoa! Is this how the denizens of the Keep make all their clothes?", "Blek wonder");
			scr_text_float(0, 4);
		scr_text("Maybe this is where the cloth for MY clothes came from! If I ever see Smalls again, I'll let him know!", "Blek");
		scr_text("He'll be so shocked! ''Whoa, you actually remember how your clothes are made? That's crazy, cat''", "Blek listen");
		scr_text("It IS crazy, I have such a good memory! Hehehe...", "Blek");
		scr_text("He he... hmm...", "Blek base");
		break;
		
		case "Harry Letter":
		scr_text("A partially completed note made from silk. Read the note?");
			scr_option("Stick around!", "Harry Letter - Yes");
			scr_option("Not interested!", "Harry Letter - No");
		break;
		
		case "Harry Letter - Yes":
		scr_text("'Order 1: Purple Cloth, Blue Cloth, Keep Carpet should work.'");
		scr_text("'Order 2: Orange Cloth, Red Cloth. Keep Carpet should work for Red.'");
		scr_text("'Orange proves to be a bit harder to obtain. May need a ladder.'");
		scr_text("'Order 3: Black Cloth. Candle Ash should work.'");
		scr_text("NOTE! IF YOU USE UP ALL MY MATERIALS, LET ME KNOW, DAMMIT! I RUN A TIGHTLY WOUND SCHEDULE HERE!'");
		break;
		
		case "Harry Letter - No":
		scr_text("You leave the note to it's fly-catching duties.");
		break;

		case "Harry Table":
		scr_text("An unpainted silk sweater sits atop this table, waiting for color that shall never come.");
		scr_text("This looks so comfy! I want a sweater with four arms!", "Blek");
		scr_text("I could tie the bottom two sleeves around my waist and be hugged all the time!", "Blek");
		break;

		case "Harry Paint Bucket":
		scr_text("A paint bucket.");
		break;

		case "Tulle Desk":
		scr_text("A desk covered with scraps of multiple different Keep banners.");
		scr_text("This must be why the banners seem so different around Flytrap. Someone's been repairing them!", "Blek base");
		scr_text("I guess the monsters from this area must not like the banners too much.", "Blek base");
		scr_text("Maybe they just don't like the color red...", "Blek concerned");
		scr_text("...nah, red's a great color!", "Blek");
		break;

		case "Tulle Letter":
		scr_text("A partially completed note made from silk. Read the note?");
			scr_option("Stick around!", "Tulle Letter - Yes");
			scr_option("Not interested!", "Tulle Letter - No");
		break;
		
		case "Tulle Letter - Yes":
		scr_text("'Thank you once again for the banners, Tulle.'");
		scr_text("'I can't say this enough, but this place is finally starting to feel like home.'");
		scr_text("'You do good work. Enjoy the flowers Hop gathered for you, and keep it up!'");
		break;
		
		case "Tulle Letter - No":
		scr_text("You leave the note to it's fly-catching duties.");
		break;
		
		case "Tulle Flower":
		scr_text("This little guy is Hey-Ho-ing no more.");
		break;

		case "Tulle Panic Room":
		scr_text("A frozen trap door lies below your feet. Just looking at it makes you shiver.");
		scr_text("If my shoddy memory is correct, cold basements normally have food in them!", "Blek");
		scr_text("Maybe its a giant freezer, and the food inside has been chilled to perfection! I've got to see!", "Blek wonder");
		scr_text("You're up, Burn Cat!", "Blek");
			scr_option("Conduct a controlled burn!", "TPR Unfreeze");
			scr_option("I'd rather stay cool.", "TPR - No");
		break;
		
		case "TPR Unfreeze":
		scr_text("Burn Cat unthawed the trap door with gusto!");
		instance_create_layer(12, 48, "Instances_1", obj_Iced_Cover)
		instance_destroy(inst_10E3E0DD)
		instance_destroy(inst_6B483B62);
		instance_destroy(inst_3CB5A294);
		break;

		case "TPR - No":
		scr_text("On second thought... maybe I won't risk setting the house on fire.", "Blek concerned");
		scr_text("Nothing good can come from a house fire...", "Blek confused");
		break;

		case "Tulle Money":
		scr_text("This place already looked ransacked... but I thought it was due to a monster attack?", "Blek base");
		scr_text("Why does a monster need money? I don't think I've ever seen money used while in the Keep, especially not by monsters...", "Blek confused");
		break;

		case "Tulle Struggle":
		scr_text("Some kind of struggle...", "Blek concerned");
		break;

		case "Sharpe Bag":
		scr_text("A bag of things that absolutley do not belong to Sharpe.");
		scr_text("Hey! No touching!", "Sharpe frown", -1);
		break;

		case "Pete Dummy":
		scr_text("Some kind of training dummy.");
		scr_text("Looks like this is modelled after one of those flesh things. It's been used a bunch, too.", "Blek base");
		scr_text("Someone's been whacking it with gusto!", "Blek");
		break;

		case "Pete Weapon Rack":
		scr_text("A rack of various weapons, including a few four-handed swords.");
		scr_text("These could also just be spears.");
		break;
		
		case "Pete Letter":
		scr_text("A partially completed note made from silk. Read the note?");
			scr_option("Stick around!", "Pete Letter - Yes");
			scr_option("Not interested!", "Pete Letter - No");
		break;
		
		case "Pete Letter - Yes":
		scr_text("'Day 35. The monsters to the East have all but stopped coming.'");
		scr_text("'Plants cannot survive in the snow, and the deer go where the plants go, so they're a non-issue.'");
		scr_text("'I know that Hop considered starting a garden, but that may not be the best idea given our cirumstances.'");
		scr_text("'I don't want to be fighting off deer every day... not after the last time one nicked me.'");
		scr_text("'Our main concern right now should be the Gallery, and keeping it's doors closed.'");
		scr_text("'With the safe room frozen over, I can't garuntee we'll all be safe from those flesh monsters if they ambush us again.'");
		scr_text("'Maybe we should move camp...'");
		break;
		
		case "Pete Letter - No":
		scr_text("You leave the note to it's fly-catching duties.");
		break;

		case "Aran Pre Interaction":
		scr_text("A locked door sits before you. Who knows what could be inside?");
		scr_text("Open the door?");
			scr_option("Maybe knock first.", "Aran Pre Interaction - Knock");
			scr_option("Ehhh...", "Aran Pre Interaction - No");
		break;

		case "Aran Pre Interaction - Knock":
		scr_text("Scram you flesh freaks!", "Aran gone");
		scr_text("Huh?!", "Blek shock");
		scr_text("Flesh freak? I have fur, does that count?", "Blek confused");
		scr_text("...wh-what? I...", "Aran gone");
		scr_text("Hold on!", "Aran gone");
			scr_on_close("Aran Pre Interaction 2");
		break;
		
		case "Aran Pre Interaction 2":
		scr_text("Alright! No sudden moves, hear me?!", "Aran gone");
		instance_destroy(obj_Door_Aran)
		instance_destroy(inst_3D60F615)
		break;

		case "Aran Pre Interaction - No":
		scr_text("As you were, door!", "Blek");
		break;

		case "Aran Painting 1":
		scr_text("A painting mounted on the wall, depicting six figures.");
		scr_text("One of them is slightly obscured.");
		scr_text("Like that one? I call it ''Home.''", "Aran base", -1);
		inst_6307B86B.text_id = "Aran Painting 1 B";
		break;
		
		case "Aran Painting 1 B":
		scr_text("Underneath the first painting is another depicting a strange blue creature.");
		scr_text("What inspired this one, Aran?", "Blek base");
		scr_text("I... don't remember drawing that...", "Aran narrow", -1);
		break;
		
		case "Aran Painting 2":
		scr_text("A painting depicting a red spider on a blue background.");
		scr_text("That's actually modelled after one of my...", "Aran base", -1);
		scr_text("...uhm...", "Aran narrow", -1);
		scr_text(".....imaginary friends, I had when I was younger...", "Aran shame", -1);
		scr_text("Awww! You had a lil spider as your imaginary friend? That's so sweet!", "Blek");
		scr_text("Little? Nah, it was massive! As big as our old village!", "Aran shock", -1);
		scr_text("It's one of the few things I actually remember from before the Keep, so I wanted to paint it.", "Aran sad", -1);
		scr_text("It's called ''Giant Friendly Spider.''", "Aran base", -1);
		inst_5D83B52A.text_id = "Aran Painting 2 B";
		break;
		
		case "Aran Painting 2 B":
		scr_text("Hey, no touching!", "Aran narrow", -1);
		break;
		
		case "Aran Painting 3":
		scr_text("A painting depicting a purple humanoid creature.");
		scr_text("That's my own creation. No stealing.", "Aran base", -1);
		break;
		
		case "Aran Table":
		scr_text("Wow... these all look great! You're a great artist, Aran!", "Blek base");
		scr_text("...", "Aran shock", -1);
		scr_text("...yeah...", "Aran shock", -1);
		break;
		
		case "Aran Dialouge 1 B":
		scr_text("I like your bat! Did you paint it yourself?", "Blek");
		scr_text("Yeah, but not in the traditional way.", "Aran base", -1);
		scr_text("What does that mean?", "Blek base");
		scr_text("I covered a bunch of snowmen in paint and pummelled them with it. It looked like this after.", "Aran base", -1);
		scr_text("...I see...", "Blek shock");
		inst_1624A314.text_id = "Aran Dialouge 1 C";
		break;
		
		case "Aran Dialouge 1 C":
		scr_text("Every house I've seen has had a bunch of weaving stuff inside. Where's all yours?", "Blek base");
		scr_text("You've been snooping in other people's homes?", "Aran narrow", -1);
		scr_text("N-no! Or I guess, yes, but-", "Blek confused");
		scr_text("Relax, Blek. It's not like we have anything of value, anyway. Not any more.", "Aran base", -1);
		scr_text("Oh... sorry to hear that.", "Blek appalled");
		scr_text("Now, we can all find ''value in each other'' or whatver Noble said.", "Aran sad", -1);
		inst_1624A314.text_id = "Aran Dialouge 1 D";
		break;
		
		case "Aran Dialouge 1 D":
		scr_text("So, what's your deal, huh?", "Aran base", -1);
		scr_text("My deal?", "Blek confused");
		scr_text("Yeah, you know. How are you gonna pitch in when it comes to beating up flesh monsters?", "Aran narrow", -1);
		scr_text("I've got my bat. What do you have?", "Aran base", -1);
		scr_text("Oh! Well, I'm a Caliconjourer! I summon cats from beyond the grave to help me fight?", "Blek");
		scr_text("Ghost cats? Why not something powerful, like Ghost Dragons, or something more durable, like ghost rocks?", "Aran base", -1);
		scr_text("I don't think rocks have souls, Aran.", "Blek base");
		scr_text("Yeah, as far as you know.", "Aran base", -1);
		inst_1624A314.text_id = "Aran Dialouge 1 E";
		break;
		
		case "Aran Dialouge 1 E":
		scr_text("Will you hurry up? Who knows what those Flesh Freaks are doing to my village!", "Aran narrow", -1);
		break;
		
		case "Aran Bed":
		scr_text("A hammock made from webs.");
		scr_text("It's as comfortable as it looks.", "Aran base", -1);
		break;
		
		case "Aran Dialouge 2":
		scr_text("Hey Blek, check it out. I made an entrance.", "Aran base", -1);
		scr_text("I mean, that entrance works, but... what if we can't beat those flesh things? Now they can freely come and go!", "Blek confused");
		scr_text("Yeah, well...", "Aran shame", -1);
		scr_text("We just won't get our asses kicked!", "Aran mad", -1);
		scr_text("Hehe... got it!", "Blek");
		inst_1F5933C3.text_id = "Aran Dialouge 2 B";
		break;
		
		case "Aran Dialouge 2 B":
		scr_text("You first, Blek.", "Aran base", -1);
		break;
		
		case "Ice Cave Blek":
		scr_text("No sign of food so far!", "Blek base");
		scr_text("But man, is it ever chilly...", "Blek confused");
		break;
		
		case "Ice Cave Spider":
		scr_text("A small spider dancing on top of a note.");
		scr_text("Move the spider and read the note?");
			scr_option("Excuse me!", "Ice Cave Spider - Yes");
			scr_option("I wouldn't dare ruin the dance!", "Ice Cave Spider - No");
		break;
		
		case "Ice Cave Spider - Yes":
		scr_text("'Trying to move diagonally on ice? I wouldn't if I were you!'");
		scr_text("'Unsafe skating is the primary cause of tailbone fractures all over the Keep!'");
		scr_text("'Don't sacrifice the saftey of your butt to cross a frozen pond a few seconds faster!'");
		scr_text("'Stick to the four cardinal directions to maximize caution!'");
		scr_text("'Remember: Never Walk Sideways, Ever'!");
		scr_text("...noted.", "Blek base");
		break;
		
		case "Ice Cave Spider - No":
		scr_text("Keep doing you, buddy! I won't stop you!", "Blek");
		break;
		
		
		case "Ice Ring Aquisition":
		scr_text("Something sparkles amidst the clear blue ice.");
		scr_text("Pick it up?");
			scr_option("Pick it up.", "Ice Ring - Yes");
			scr_option("Do not.", "Ice Ring - No");
		break;
		
		case "Ice Ring - Yes":
		scr_text("Picked up the Frozen Silver Ring.");
		instance_destroy(inst_5EE073A9)
		sprite_delete(Spr_Item_Shine11)
		break;
		
		case "Ice Ring - No":
		scr_text("You left the object to chill... for possibly a long time...");
		break;
		
		case "Freeze Cat Grave":		
		scr_text("A resting place for a cat.");
		scr_text("'Here lies Tofu, loved dearly by his owners, _____ and _____.'");
		scr_text("'The door was left open, the cool air outside was inviting.'");
		scr_text("'The winds carved a path along the frozen winter roads, never meant to be followed.'");
		scr_text("'Was never found by his owners. Wandered his way onto his own grave.'");
		scr_text("Accept the cat into your ranks?");
		inst_1E27F8D6.text_id = "Cat Grave B";
		scr_option("Accept", "Freeze Cat Grave - Accept");
		scr_option("Do not", "Freeze Cat Grave - Do not");
		break;
				
		case "Freeze Cat Grave - Accept":
		scr_text("Freeze Cat joined your ranks.");
		break;
				
		case "Freeze Cat Grave - Do not":
		scr_text("You left them to rest.");
		inst_1E27F8D6.text_id = "Freeze Cat Grave";
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//-----------------------------AREA 7-------------------------------//
		
		
		
		case "Entrance Sign":
		scr_text("...", "Blek listen");
		scr_text("I... can't read this sign...", "Blek confused");
		scr_text("Its some kind of greeting. It's probably an introduction to the gallery.", "Aran base");
		scr_text("My guess is that it says, ''Welcome to the (so and so) Art Gallery. Come visit (whatever) and (proper noun).''", "Aran narrow");
		scr_text("Cool! So you can read the stuff written in the flesh things' language?", "Blek");
		scr_text("Huh? No, I'm just using context clues. You should try it sometime.", "Aran base");
		inst_683AD240.text_id = "Entrance Sign B";
		break;
		
		
		case "Entrance Sign B":
		scr_text("''Welcome to the (so and so) Art Gallery. Come visit (whatever) and (proper noun).''", "Aran base");
		break;
		
		case "Grave Painting":
		scr_text("A painting of a ghost cat hangs above the polished floor.");
		scr_text("The painted ghost cat is having a nice, pleasant rest.");
		scr_text("Perhaps you should do the same.");
		scr_text("Save your game?");
			scr_option("Save", "Success");
			scr_option("Do not", "Do not save");
		break;
		
		case "Flartist Painting 1":
		scr_text("What's this thing? Another flesh creature?", "Blek listen");
		scr_text("I, uh... ok... this is weird...", "Aran narrow");
		scr_text("What do you mean?", "Blek confused");
		scr_text("The painting's different. The flesh thing in the foreground is bigger.", "Aran narrow");
		scr_text("Are you sure?", "Blek shock");
		scr_text("Pretty sure. It was smaller the last time I was here. No clue why it's bigger now...", "Aran base");
		scr_text(".....", "Blek shock");
		inst_441CC4D4.text_id = "Flartist Painting 1 B";
		break;
		
		case "Flartist Painting 1 B":
		scr_text(".....", "Blek shock");
		break;
		
		case "Gallery Hub Enter":
		scr_text("Whoa! This place is huge!", "Blek shock");
		scr_text("How are we supposed to find your buds in a Gallery this big?", "Blek confused");
		scr_text("I say we keep exploring until we find them, or something to help us beat the monsters back.", "Aran base");
		scr_text("There's a door near the back that I haven't gone past yet. That might be worth checking out.", "Aran base");
		break;
		
		case "Gallery Hub Sign 1":
		scr_text("Another sign with jumbled letters.");
		scr_text("There's stautues and sculptures this way. Sign's probably trying to explain that. And failing.", "Aran base");
		break;
		
		case "Gallery Hub Sign 2":
		scr_text("Another sign with jumbled letters.");
		scr_text("I think there's natural history stuff down this way. Like nature displays..", "Aran narrow");
		scr_text("Hey! Maybe they'll help me remember some of my past!", "Blek");
		scr_text("Heh... You might recognize a few of the animals...", "Aran happy");
		break;
		
		
		case "Statue 1":
		scr_text("Looks like flesh creatures are a big part of these exibits...", "Blek confused");
		scr_text("Yeah... but imagine if this was actually a self portrait of a really ugly guy instead.", "Aran base");
		scr_text("Would that not be hilarious?", "Aran base");
		scr_text("...", "Blek confused");
		scr_text("...", "Blek concerned");
		scr_text("...", "Blek listen");
		break;
		
		case "Statue 2":
		scr_text("What's this supposed to be?", "Blek listen");
		scr_text("Beats me. But check this out. Give it a whack.", "Aran base");
		scr_text("A whack?", "Blek base");
		scr_text("...huh. It sounds hollow...", "Blek listen");
		instance_destroy(inst_12E18B77);
		break;
		
		
		case "Statue 3":
		scr_text("RIP this statue. Wonder if its soul passed on peacfully.", "Aran sad");
		scr_text("Rocks don't have souls Aran.", "Blek concerned");
		scr_text("That's what you think. Reguardless, whoever destroyed it's a real asshole.", "Aran base");
		scr_text("Art's meant to be perserved!", "Aran mad");
		scr_text("For, uh... later smashing, I guess...", "Aran shame");
		break;
		
		case "Statue 4":
		scr_text("You know this guy, Blek?", "Aran base");
		scr_text("Hush.", "Blek listen");
		break;
		
		case "Statue Real":
		scr_text("...the heck is this?", "Blek shock");
		scr_text("This... is one of the greatest pieces here!", "Aran shock");
		scr_text("Huh? W-we're staring at the same statue, right?", "Blek confused");
		scr_text("Yeah?! Look at that texture, that definition, the hidden emotional meaning...", "Aran base");
		scr_text("All I see is a mess of stone", "Blek concerned");
		scr_text("Then you clearly don't get it.", "Aran narrow");
		inst_14A70510.text_id = "Statue Realer";
		break;
		
		case "Statue Realer":
		scr_text("You feel as if you could stare at it for hours...");
		scr_text("...but why would you?");
		break;
		
		case "Label 1":
		scr_text("'Familiarity'.");
		scr_text("Hey! I can actually read this text.", "Blek");
		scr_text("Yeah, most of the labels in the Gallery are readable. No clue why, though.", "Aran base");
		scr_text("Maybe it just happened randomly, like a monkey-typewriter situation.", "Aran narrow");
		scr_text("What's a monkey?", "Blek base");
		scr_text("Forget it.", "Aran base");
		break;
		
		case "Label 2":
		scr_text("'Noodle Man'");
		break;
		
		case "Label 3":
		scr_text("'Powder'");
		scr_text("Oh, well that explains things.", "Blek base");
		break;
		
		case "Label 4":
		scr_text("'Veneration'");
		break;
		
		case "Label 5":
		scr_text("'Visualize'");
		break;
		
		case "Label 6":
		scr_text("'Divine Animals'");
		break;
		
		case "Label 7":
		scr_text("'Emmissaries of the Deep'");
		break;
		
		case "Label 8":
		scr_text("'Beloved Mirage'");
		break;
		
		
		case "Flesh Spider Miniboss 1":
		scr_text("Whoa! That thing's huge!", "Blek shock");
		scr_text("And it kind of looks like-", "Blek concerned");
		scr_text("HOP! DON'T MOVE, I'LL GET YOU OUT OF THERE!", "Aran mad");
			scr_text_float(0, 70);
		scr_text("Aran, hold on!", "Blek shock");
		scr_text("FLESH SPIDER MINI BOSS");
			scr_on_close("Flesh Spider Miniboss 1 B");
		break;
		
		case "Flesh Spider Miniboss 1 B":
		instance_destroy(inst_1293B328)
		scr_text("Damn... she got away...", "Aran sad");
		scr_text("You knew that flesh thing?", "Blek shock");
		scr_text("That was my... my friend. From the village.", "Aran base"); 
		scr_text("Hop got taken by those flesh assholes, and I guess that's what they did to her.", "Aran sad");
		scr_text("We'll find her again! Wait... she dropped something...", "Blek confused");
		scr_text("Picked up a Skin Scrap.");
		break;
		
		case "Flesh Patron 1":
		scr_text("...Ponder...", "Flesh");
			scr_text_float(0, 40)
		break;
		
		case "Flesh Patron 2":
		scr_text("...Critique...", "Flesh");
			scr_text_float(0, 30)
		break;
		
		case "Natural Entrance":
		scr_text("...", "Blek confused");
		scr_text("...what...?", "Blek confused");
		scr_text("Look! Cats! Your favorite!", "Aran happy");
		scr_text("These things both do and don't look like cats.", "Blek concerned");
		scr_text("Yeah, heh. Like the artist saw a cat once and had to recreate it from memory.", "Aran confused");
		scr_text("Maybe we can give 'em a reminder of what they look like when you and I beat them up.", "Aran base");
		scr_text("We don't know that the artist is the one behind the Flesh Monsters.", "Blek confused");
		scr_text("Maybe it's the Gallery owner, or a ghost that haunts the place?", "Blek base");
		scr_text("In that case then... whatever's doing this is probably enslaving the painter.", "Aran narrow");
		scr_text("What an awful thing to do!", "Blek shock");
		scr_text("Yeah! We work hard enough as it is!", "Aran mad");
		scr_text("I mean... the artist does...", "Aran shame");
		break;
		
		case "Terrarium 1":
		scr_text("These things kind of look like cats. More so than the others, at least.", "Blek listen");
		scr_text("Hmmm....", "Aran narrow");
		scr_text("...hmm?", "Blek base");
		scr_text("....", "Aran narrow");
		scr_text("...Aran? Why are you staring at me?", "Blek confused");
		scr_text("...", "Aran narrow");
		scr_text("Aran?", "Blek confused");
		scr_text("Nope, I don't see the resemblance.", "Aran base");
		scr_text("It took you that long to come to that conclusion?!", "Blek mad");
		inst_AB2CEE5.text_id = "Terrarium 1 B";
		break;
		
		case "Terrarium 1 B":
		scr_text("...still don't see it.", "Aran narrow");
		break;
		
		case "Terrarium 2":
		scr_text("Man, these fish are huge!", "Blek shock");
		scr_text("I wonder how they taste...", "Aran happy");
		scr_text("Aran, don't joke about eating cats. That's gross.", "Blek concerned");
		scr_text("What? They're not cats, they're fish! Fish cats!", "Aran base");
		inst_CF249C7.text_id = "Terrarium 2 B";
		break;
		
		case "Terrarium 2 B":
		scr_text("Do you recognize any of these fish, by the way? Ignoring the cat heads.", "Aran confused");
		scr_text("Not really. They just look like bigger, weirder fish you'd find in a water table or cave pond.", "Blek listen");
		scr_text("That's what I thought. Guess the artist was feeling inspired...", "Aran base");
		break;
		
		case "Terrarium 3":
		scr_text("...", "Aran happy");
		scr_text("Aran...", "Blek base");
		scr_text("...", "Aran happy");
		scr_text("Don't you say it...", "Blek mad");
		scr_text("Cat-ti.", "Aran happy");
		scr_text("Ugh... it's like looking in a mirror.", "Blek mad");
		scr_text("Because of the cats?", "Aran confused");
		scr_text("Because of the bad jokes.", "Blek mad");
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//--------------------------Major Dialouge-----------------------//
			
		case "Lumen":
		scr_text("Hey, Lumen! Just who I needed to see! How are you holding up?", "Blek");
		scr_text("Oh, uh...", "Lumen shame", -1);
		scr_text("I'm ok... that's weird of you to ask though...", "Lumen", -1);
		scr_text("What do you mean?", "Blek base");
		scr_text("Well, normally you're only nice to me when you have an ulterior motive...", "Lumen shame", -1);
			scr_option("what? Nooooo...", "Lumen - no job");
			scr_option("Right you are!", "Lumen - job");
			break;
			
		case "Lumen - no job":
		scr_text("Ok, that's a relief.", "Lumen", -1);
		scr_text("Yeah, n... n-nothing big...", "Blek confused");
		scr_text("...just that the entire castle was trashed during the party last night...", "Blek confused");
		scr_text("...and you need to fix it up before the party TOMORROW night.", "Blek confused");
		scr_text(".......", "Lumen fear", -1);
		scr_text("...why did I take this job...", "Lumen cry", -1);
		scr_text("Thanks Lumen! You're the best!", "Blek");
		break;
			
		case "Lumen - job":
		scr_text(".....I'm afraid to ask, but...", "Lumen shock", -1);
		scr_text("The, uh, castle was trashed after the party last night, sooooo...", "Blek base");
		scr_text("I need you to go do your groundskeeping duty", "Blek");
		scr_text("and clean it before the second party tomorrow", "Blek");
		scr_text(".......", "Lumen fear", -1);
		scr_text("...why did I take this job...", "Lumen cry", -1);
		scr_text("Thanks Lumen! You're the best!", "Blek");
			break;
			
		case "Trout Beckon":
		scr_text("You...you're here...");
		scr_text("Huh? Hey! There you are!", "Blek shock");
		break;
		
		case "Trout First Meet":
		scr_text("You're... awake...", "Trout Sad", -1);
		scr_text("I guess... Can you help me? I'm sort of lost.", "Blek base");
		scr_text("I suppose you're angry with me then...", "Trout Sad", -1);
		scr_text("No...? Why would I be mad at you, I just met you?", "Blek confused");
		scr_text("You... don't remember what happened?", "Trout Sad", -1);
		scr_text("I don't think so...", "Blek base");
		scr_text("I... don't remember anything, actually.", "Blek confused");
		scr_text("Not even who I am? Who YOU are?", "Trout Sad", -1);
		scr_text("I'm sorry... I wish I did...", "Blek confused");
		scr_text("...hehehe...heh heh... heAHHAHAHAHA!", "Trout Laugh", -1);
		scr_text("...!", "Blek shock");
			scr_on_close("Trout First Meet Music")
		break;
		
		case "Trout First Meet Music":
		audio_play_sound(snd_Something_Fishy_This_Way_Comes, 10, true);
		scr_text("F-FOOL! You truly don't remember your own rival? Pathetic!", "Trout Laugh", -1);
		scr_text("What are you-", "Blek confused");
		scr_text("Let me fill you in! Your name is Blek, and MY name is Trout!", "Trout Base", -1);
			scr_text_color(33, 37, c_maroon, c_aqua, c_white, c_yellow);
			scr_text_color(54, 59, c_fuchsia, c_black, c_black, c_black);
		scr_text("Blek...?", "Blek confused");
		scr_text("How foolish. Confused by your own name, as a toddler might be!", "Trout Laugh", -1);
		scr_text("Our kind is named after our very first words, no matter HOW insignificant!", "Trout Unamused", -1);
		scr_text("From what I heard, YOU were named after the sound you made when you", "Trout Base", -1);
		scr_text("ate something gross, while MY glorious name comes from when I politely requested my father for some of his dinner!", "Trout Base", -1);
		scr_text("...it sounds like you just yelled 'Trout' at him...", "Blek shock");
		scr_text("The ends justify the means!", "Trout Angry", -1);
		scr_text("So... where are we?", "Blek concerned");
		scr_text("I'm-I'm getting to that!", "Trout Sad", -1);
		scr_text("You and I were both enrolled at a magic academy for budding caliconjourers.", "Trout Base", -1);
		scr_text("Both of us were at the top of our summoning class, but no matter how hard I tried, I could never surpass you...", "Trout Angry", -1);
		scr_text("No matter how much natural talent I possess! I had enough one day, so I used a powerful spell to...", "Trout Angry", -1);
		scr_text("-uh-", "Trout Shock", -1);
		scr_text("-whisk us away to a place without any living thing! That way, we can finally battle it out,", "Trout Laugh", -1);
		scr_text("without the consequences of our immense power going head to head!", "Trout Laugh", -1);
		scr_text("You want us to fight? But... but I don't-", "Blek shock")
		scr_text("Prepare yourself, Blek! Because I am NOT holding back!", "Trout Laugh", -1);
		scr_text("TROUT BOSSFIGHT 1");
		inst_6EDA19F5.text_id = "Trout First Meet B";
		scr_on_close("Trout First Meet Music End");
		break;
		
		case "Trout First Meet Music End":
		audio_stop_sound(snd_Something_Fishy_This_Way_Comes);
		instance_destroy(Obj_textbox);
		break;
		
		
		case "Trout First Meet B":
		scr_text("Owwwww....,", "Blek concerned");
		scr_text("I can't believe this! L-look, I'm gonna go, b-but! Remember this defeat!", "Trout Angry", -1);
		scr_text("You should use the time I'm giving you to get stronger! When you do, find me, and give me what I deserve!", "Trout Angry", -1);
		scr_on_close("Trout Fucking Runs");
		break;
		
		case "Trout Fucking Runs":
		scr_text("Until then, enjoy wandering the endless halls of the... uh... Keep Dimension!", "Trout Laugh", -1);
		scr_text_color(62, 66, c_grey, c_black, c_black, c_black);
		instance_destroy(inst_3411564F)
		instance_destroy(inst_6EDA19F5)
		instance_create_layer(354, 46, "Instances", obj_Trout_Fucking_Books_It)
		break;
		
		case "Russell Encounter 1":
		scr_text("Wh-hello? Are you... alive?", "Blek shock");
		scr_text("Are any of us really alive?", "Russell", -1);
		scr_text("I uh... dunno... but listen, I thought there were no living things in this place!", "Blek confused")
		scr_text("Not besides me, the dogs, and everyone else.", "Russell", -1);
		scr_text("Well then, maybe you can help me!", "Blek shock");
		scr_text("I need to find another cat person, who looks a bit like me. Can you tell me if you've seen her?", "Blek base")
		scr_text("No can dude, do. I'm a bit too... blind... to see anything.", "Russell", -1)
		scr_text("Like, metaphorically? Or physically?", "Blek confused");
		scr_text("Do you see any eyes on me?", "Russell", -1);
		scr_text("No, I don't.", "Blek confused");
		scr_text("Well, I guess I'll keep searching, then. I'm bound to run into someone else.", "Blek base");
		scr_text("Be careful, do. People past this point aren't as chill as they outta be.", "Russell", -1);
		scr_text("I'll keep that in mind. See you around, do!", "Blek");
		inst_2BFC5303.text_id = "Russell Encounter B";
		break;
		
		case "Russell Encounter B":
		scr_text("He continues to dance, ignoring your presence.");
		break;
		
		
		case "Russell Encounter 2":
		scr_text("Hey, mushroom guy! How'd you get here before me?", "Blek base");
		scr_text("Can't spill the secrets, little do. Fast travelling's an art.", "Russell", -1);
		scr_text("And I go by Russell, by the way. Sometimes.", "Russell", -1);
			scr_text_color(12, 20, c_olive, c_white, c_white, c_white);
		scr_text("Russell, got it.", "Blek base");
		scr_text("Were are we, Russell?", "Blek");
		scr_text("Right outside a village. I'll be honest with you, do, they may not be your 'people'", "Russell", -1);
		scr_text("What's that supposed to mean?", "Blek base");
		scr_text("Just take my word for it. And go in with an open mind.", "Russell", -1);
		scr_text("The village is down... one of these hallways.", "Russell", -1);
		scr_text("Thanks, I think. Later, do!", "Blek");
		inst_63642DC5.text_id = "Russell Encounter B";
		break;
	
		case "Nerves Encounter 1":
		scr_text("Stop fiend! Draw no closer!", "Nerves unamused", -1);
		scr_text("...!!!!!", "Blek shock");
		scr_text("I see my powerful physique has left you at a loss for words. That is quite common for most,", "Nerves unamused", -1)
		scr_text("as wittnessing my unbeatable warrior spirit may leave one speechless-", "Nerves unamused", -1)
		scr_text("AWWWWWWWWWW!", "Blek wonder");
			scr_text_float(1,13)
		scr_text("I...beg your pardon?", "Nerves base", -1)
		scr_text("YOU'RE SO CUTTTTTTEEEEE!", "Blek wonder")
			scr_text_float(1,24)
		scr_text("Please, fiend, flattery will get you nowhere-", "Nerves sad", -1);
		scr_text("And you even have a little eyepatch, AHHHH! So cute!", "Blek wonder");
			scr_text_float(37, 43)
		scr_text("Are you a pirate? Huh? Are you a little pirate?", "Blek");
		scr_text("You will soon discover my cause to be far more just than that of a common buccaneer!", "Nerves unamused", -1);
		scr_on_close("Nerves Encounter 1 Sword");
		break;
			
		case "Nerves Encounter 1 Sword":
		scr_text("I protect this village from danger like yourself! Ready yourself, fiend!", "Nerves unamused", -1);
		scr_text("I...oh... that's a big sword...", "Blek shock")
		scr_text("And you shall find yourself very accustomed to it's edge! Prepare yourself, cat!", "Nerves unamused", -1);
		scr_text("NERVES BOSSFIGHT");
		if obj_Nerves_Weapon.image_index < 9
		{
		obj_Nerves_Weapon.image_speed = 1
		}else{
		obj_Nerves_Weapon.image_speed = 0	
		}
		break;
		
		
		
		case "Nerves Post - Fight":
		scr_text("tch... you have bested me.", "Nerves sad", -1);
		scr_text("Do your worst, but please... leave my village alone...", "Nerves sad", -1);
		scr_text("Wait! Why would I attack your village? I'm just passing through!", "Blek base");
		scr_text("You... are? I see...", "Nerves sad", -1);
		scr_text("I must apologize then, I jumped to conclusions far sooner than I should have.", "Nerves base", -1);
		scr_text("My honor as a knight has been undoubtedly dashed...", "Nerves sad", -1);
		scr_text("Well, I know how you can make it up to me. I'm looking for a black cat, dressed in purple.", "Blek");
		scr_text("Have you seen anyone like that pass by?", "Blek base");
		scr_text("I'm afraid not. And... if they passed through recently, there's no way to go after them anymore.", "Nerves base", -1);
		scr_text("All of our treat reserves have been stolen by a hooded figure and their army.", "Nerves base", -1);
		scr_text("Without the treat funds to pay our workers, we cannot find the motivation to clear the rubble blocking the exit.", "Nerves sad", -1);
		scr_text("Maybe I can help you find the- wait, did you say treats?", "Blek listen");
		scr_text("Is your WHOLE VILLAGE made up of DOGS?!?!", "Blek wonder");
			scr_text_float(9, 21);
			scr_text_float(34, 45);
		scr_text("Indeed. We are a proud and friendly-", "Nerves base", -1);
		scr_text("Let's go! Hurry!", "Blek wonder");
		scr_text("Wait! I must know the name of the one who bested me!", "Nerves base", -1);
		scr_text("Oh, right! My name's Blek!", "Blek base");
		scr_text("Blek... a fine name for a powerful summoner like yourself.", "Nerves base", -1);
		scr_text("I am Nerves. Knight of Fang and Bone!", "Nerves unamused", -1);
			scr_text_color(5, 12, c_black, c_black, c_black, c_black);
		scr_text("Well met, Sir Nerves. Now... let's go, hurry!", "Blek");
		inst_41555D39.text_id = "Nerves Post - Fight B";
		break;
		
		case "Nerves Post - Fight B":
		scr_text("Go on ahead, Blek. I'll catch up. I'm still licking my wounds...", "Nerves sad", -1);
		break
		
		
		case "Tavern Convo 1":
		scr_text("Ah, Blek! Welcome.", "Nerves base", -1);
		scr_text("I take it you've been enjoying our humble village thus far?", "Nerves base", -1);
		scr_text("It's super nice, yeah. I was wondering though... where'd you get the wood for all the houses?", "Blek");
		scr_text("The Keep is mostly stone, from what I've seen.", "Blek base");
			scr_text_color(4, 8, c_grey, c_black, c_black, c_black);
		scr_text("That's a weird question, cat. Where'd you get the cloth for your clothes?", "Smalls", -1);
		scr_text("Well obviously I...", "Blek base");
		scr_text("-uh...", "Blek confused");
		scr_text("...ok, I could totally answer that if I had my memory back.", "Blek listen");
		scr_text("Well, nevertheless, we won't be constructing anything any time soon.", "Nerves sad", -1);
		scr_text("Without treats to pay our workers, we cannot cover the funds to build, much less to clear the rubble that blocks the town exit.", "Nerves unamused", -1);
		scr_text("You mentioned before that someone stole them right? Do you have any leads?", "Blek base");
		scr_text("Maybe another cat dressed in purple?", "Blek");
		scr_text("Hardly. There was a hooded thing with an army who marched into town and claimed Rudy's house.", "Smalls", -1);
		scr_text("Not too long after, all of our treats went missing, and the army was spotted entering the Cave of Hounds to the North.", "Smalls", -1);
		scr_text("And now, nobody is allowed into the cave, despite plentiful probable cause.", "Nerves base", -1);
			scr_text_float(49, 58);
		scr_text("Nobody can enter the cave because of how dangerous it is, Nerves. You're certainly not going in by yourself.", "Smalls", -1);
		scr_text("Hey, wait! I know a bit of Caliconjouring, maybe I can help Nerves!", "Blek");
		scr_text("Ah yes! Blek here bested me in one on one combat with their powerful ghost cats!", "Nerves base", -1);
		scr_text("I have no doubt that, with their help, we will be able to defeat this thief!", "Nerves unamused", -1);
		scr_text("Hmmm... well... if you think you're capable.", "Smalls", -1);
		scr_text("Go get stocked up on supplies from around town if you haven't already. I'll let the guards know you're coming.", "Smalls", -1);
		scr_text("Smalls, my good man, you won't regret this.", "Nerves unamused", -1);
		scr_text_color(0, 5 ,c_aqua, c_aqua, c_aqua, c_aqua);
		inst_4BA46A1F.text_id = "Tavern Convo B";
		asset_add_tags(Obj_Blek, "SmallsTalk", asset_object)
		break;
		
		case "Tavern Convo B":
		scr_text("Don't let me down, you two.", "Smalls", -1);
		break;
		
		case "Russell Encounter 3":
		scr_text("Hey, it's Russell! What's up, do?", "Blek");
		scr_text("You know this mushroom, Blek?", "Nerves base");
		scr_text("Yep! We go way back!", "Blek");
		scr_text("Like we've known each other for at least a couple of hours!", "Blek base");
		scr_text("He visits our village from time to time for... some reason...", "Nerves unamused");
		scr_text("What can I say? I like the grass.", "Russell", -1);
		scr_text("Mostly because of what your village does IN the grass.", "Russell", -1);
		scr_text("Gross.", "Blek concerned");
		scr_text("'Helps me grow stronger. I don't judge you for drinking milk, do.", "Russell", -1);
		scr_text("Even if it came from a cow's udder.", "Russell", -1);
		scr_text("You... got me there, I guess.", "Blek confused");
		scr_text("What is a cow?", "Nerves base");
		inst_6F83C36.text_id = "Russell Encounter 3 B";
		break;
		
		case "Russell Encounter 3 B":
		scr_text("I'm sure there's a larger area with grass somewhere in the Keep.", "Russell", -1);
			scr_text_color(59, 63, c_grey, c_black, c_black, c_black);
		scr_text("Indeed there is! But it's blocked off right now.", "Nerves base");
		scr_text("We're putting all of our efforts into getting the way cleared,", "Nerves unamused");
		scr_text("starting with defeating this musical army.", "Nerves unamused");
		scr_text("You should lend us your strength, mushroom man!", "Nerves base");
		scr_text("No can dog, do. I've sworn off violence.", "Russell", -1);
		scr_text("But... we're fighting for a valiant cause! I assure you, our efforts are just!", "Nerves sad");
		scr_text("", "Russell", -1);
		scr_text("I think he's ignoring you, Nerves.", "Blek base");
		scr_text("Confound it, fine! I'll leave you to your dancing!", "Nerves unamused");
		scr_text("Later, do!", "Blek");
		inst_6F83C36.text_id = "Russell Encounter 3 C";
		break;
		
		case "Russell Encounter 3 C":
		scr_text("He's in his element.");
		break;
		

		case "Jackson":
		scr_text("Hey! You two! Dog and cat!");
		scr_text("Look out Nerves! It's a Wall Wight!", "Blek shock");
		scr_text("Indeed, but speaking with such unnatural... articulation. Strange...", "Nerves base");
		scr_text("Eyyyy! What, is my speech patterns not not good enough for ya?", "Jackson", -1);
		scr_text("Needs me to add a lil 'walllllll' in there from time to time, huh?", "Jackson", -1);
		scr_text("Weird... I thought wall wights were all just mindless zombies...", "Blek listen");
		scr_text("That hurts, cat...truly... but nah, I forgive your acusations.", "Jackson", -1);
		scr_text("Names' Jackson. And, for your information...", "Jackson", -1);
			scr_text_color(6, 14, c_grey, c_black, c_black, c_black);
		scr_text("Wall wights get that way by eating brains. As you can see, I...", "Jackson", -1);
		scr_text("well, I ain't exactly fit for chasing the brain-having folk.", "Jackson", -1);
		scr_text("You do appear to be stuck, yes...", "Nerves base");
		scr_text("Exactly, dog. Stuck with nothing to do, for that matter.", "Jackson", -1);
		scr_text("I've been stuck here for about... eh, 30 years now.", "Jackson", -1);
		scr_text("Stuck for so long that my body's become part of the wall.", "Jackson", -1);
		scr_text("It must be pretty boring, just sitting here inside the walls of the Keep.", "Blek base");
			scr_text_color(68, 80, c_grey, c_black, c_black, c_black);
		scr_text("Yeah... hey, wait! Howsa' bout this?!", "Jackson", -1);
		scr_text("I know of a way to help you lot, while giving me some much needed entertainment!", "Jackson", -1);
		scr_text("I'll quiz you about the stuff in this cave, and if you get all the questions right...", "Jackson", -1);
		scr_text("I'll let you through a secret area next to me. Sound good?", "Jackson", -1);
		scr_text("A... quiz?", "Blek listen");
			scr_option("Let's do it!", "Jackson - Quiz");
			scr_option("Nevermind...", "Jackson - No Quiz");
			inst_6D708DC1.text_id = "Jackson 2"	
			break;
			
		case "Jackson - Quiz":
		scr_text("Alright then! Question 1:", "Jackson", -1);
		scr_text("What's the name the dogs gave to this cave?", "Jackson", -1);
			scr_option("Cave of Sounds", "Jackson - incorrect");
			scr_option("The Keep Depths", "Jackson - incorrect");
			scr_option("Cave of Hounds", "Jackson - Question 2");
			scr_option("The 'Backyard'", "Jackson - incorrect");
			scr_option("Cave of Fang and Bone", "Jackson - incorrect");
		break;
		
		case "Jackson - Question 2":
		scr_text("That's right! Question 2:", "Jackson", -1);
		scr_text("Which of these is NOT the name of a mushroom person growing here?", "Jackson", -1);
			scr_option("Mike", "Jackson - incorrect");
			scr_option("Cordy", "Jackson - incorrect");
			scr_option("Matt", "Jackson - Question 3");
			scr_option("Chestnut", "Jackson - incorrect");
			scr_option("Russell", "Jackson - incorrect");
		break;
		
		case "Jackson - Question 3":
		scr_text("Correctumundo! Question 3:", "Jackson", -1);
		scr_text("How long have I been trapped in this damn wall?", "Jackson", -1);
			scr_option("A few days", "Jackson - incorrect");
			scr_option("10 months", "Jackson - incorrect");
			scr_option("10000 years!", "Jackson - incorrect");
			scr_option("30 years", "Jackson - Question 4");
			scr_option("250 years", "Jackson - incorrect");
		break;
		
		case "Jackson - Question 4":
		scr_text("Yep yep! Question 4:", "Jackson", -1);
		scr_text("What's the name of the dog who got his house stolen by that treat thief?", "Jackson", -1);
			scr_option("Charlie", "Jackson - incorrect");
			scr_option("Smalls", "Jackson - incorrect");
			scr_option("Nerves", "Jackson - incorrect");
			scr_option("Smith", "Jackson - incorrect");
			scr_option("Rudy", "Jackson - Question 5");
		break;
		
		case "Jackson - Question 5":
		scr_text("Poor guy... alright, finally! Question 5:", "Jackson", -1);
		scr_text("What's the name of the treat theif?", "Jackson", -1);
			scr_option("Chris", "Jackson - incorrect");
			scr_option("Flatt", "Jackson - incorrect");
			scr_option("Aran", "Jackson - incorrect");
			scr_option("Sharpe", "Jackson - Finish");
			scr_option("Jackson", "Jackson - incorrect");
			break;
			
		case "Jackson - Finish":
		scr_text("Damn, you got it! And without cheatin' too, I bet!", "Jackson", -1);
		scr_text("Alright, the way should be open now. I dunno if it is or not, I can't turn my head too good anymore.", "Jackson", -1);
		scr_text("What about you? Do we just... leave you here?", "Blek confused");
		scr_text("I mean... you can come visit... if you want...", "Jackson", -1);
		scr_text("We, uh... have a job to do.", "Nerves unamused");
		scr_text("Right, no yeah, I get it. I've got thick skin, you know? Stone thick...", "Jackson", -1);
		inst_6D708DC1.text_id = "Jackson 3";
		instance_destroy(obj_Pillar_Cave)
		break;
		
		case "Jackson 3":
		scr_text("Come back whenever you can!", "Jackson", -1);
		scr_text("Please...", "Jackson", -1);
		break;
		
		
		case "Jackson - incorrect":
		scr_text("Sorry, but no. I could see how that one got ya, though.", "Jackson", -1);
		scr_text("Come back again when you're ready!", "Jackson", -1);
		break;
		
		case "Jackson - No Quiz":
		scr_text("Well, if you change your mind, you know where to find me!", "Jackson", -1);
		scr_text("I won't be leaving anytime soon, heh...", "Jackson", -1);
		break;
		
		case "Jackson 2":
		scr_text("Back for more?", "Jackson", -1);
			scr_option("Let's do it!", "Jackson - Quiz");
			scr_option("Nevermind...", "Jackson - No Quiz");
			break;
		


		case "Sharpe Pre-Boss":
		scr_text("Well well, look what the cat dragged in!", "Sharpe smile", -1);
		scr_text("That's them Blek! Those are our treats!", "Nerves unamused");
		scr_text("Why'd you take all these dog treats, anyway? You aren't a dog, so why do you need them?", "Blek mad");
		scr_text("Dog, schmog! Someone told me that they had value, and you don't need to be a dog to appreciate monetary value!", "Sharpe base", -1);
		scr_text("I'm gonna sell these and be rich! Ol' Sharpe will finally get what's coming to her! Money!!!", "Sharpe smug smile", -1);
			scr_text_color(38, 44, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("No! You can't, our economy will tank!", "Nerves base");
		scr_text("What are you gonna do about it, dog?", "Sharpe smug smile", -1);
		scr_text("I'm up here, and you're down there! I have an army, and you have...", "Sharpe smug", -1);
		scr_text("...the, uh, cat, I guess...", "Sharpe narrow", -1);
		scr_text("We're more than enough to take you down!", "Blek mad");
			scr_option("Give back the treats, please!","Sharpe Pre-Boss Ready");
			scr_option("Hand them over, loser!", "Sharpe Pre-Boss Readier");
		break;
		
		case "Sharpe Pre-Boss Ready":
		scr_text("Hell...no??? What???", "Sharpe shock", -1);
		scr_text("I stole these fair and square! You want 'em? Come take 'em!", "Sharpe smile", -1);
		scr_text("It seems there is no room for persuasion. Prepare yourself, fiend!", "Nerves sad");
		scr_text("The hero of Fang and Bone and the mighty Caliconjourer stand before you!", "Nerves unamused");
		instance_destroy(Obj_Sharpe_Treat_Pile_Still)
		instance_create_layer(708, 451, "Instances_1", Obj_Sharpe_Treat_Pile_2);
		if Obj_Sharpe_Treat_Pile_2.image_index < 22
		{
		Obj_Sharpe_Treat_Pile_2.image_speed = 1
		}else{
		Obj_Sharpe_Treat_Pile_2.image_speed = 0	
		}
		break;
		
		case "Sharpe Pre-Boss Readier":
		scr_text("You think you can stir me up with your insults, cat?", "Sharpe base", -1);
		scr_text("In front of all my instruments, no less!? Yeah right!", "Sharpe frown", -1);
		scr_text("You can't get under my skin, you hear me!?!?", "Sharpe frown", -1);
		scr_text("I'M FAMOUSLY COOL-HEADED WHEN I FIGHT! COME ON, I'LL TAKE YOU BOTH ON!!!", "Sharpe fury", -1);
			scr_text_float(0, 100);
		scr_text("It seems there is no room for persuasion. Prepare yourself, fiend!", "Nerves sad");
		scr_text("The hero of Fang and Bone and the mighty Caliconjourer stand before you!", "Nerves unamused");
		instance_destroy(Obj_Sharpe_Treat_Pile_Still)
		instance_create_layer(708, 451, "Instances_1", Obj_Sharpe_Treat_Pile_2);
		if Obj_Sharpe_Treat_Pile_2.image_index < 22
		{
		Obj_Sharpe_Treat_Pile_2.image_speed = 1
		}else{
		Obj_Sharpe_Treat_Pile_2.image_speed = 0	
		}
		break;
		
		case "Sharpe Post-Boss":
		scr_text("Damn... guess the shoe's on the other cat, now...", "Sharpe hurt", -1);
		scr_text("You ready to give up?!", "Blek mad");
		scr_text("Is that a challenge?! If so, then no!", "Sharpe frown", -1);
		scr_text("I can go all day! Come on, put up your paws! I'm not giving up the money I can make from this!", "Sharpe fury", -1);
		scr_text("Such insolence! Referring our supply of treats as a payout...", "Nerves sad");
		scr_text("wwwWait, wait wait. Who's... gonna buy all those treats off you?", "Blek listen");
		scr_text("Well... obviously, someone who likes dog treats!", "Sharpe shock", -1);
		scr_text("Like the dogs you stole from? They don't use currency in the village though, they use dog treats!", "Blek base");
		scr_text("And there aren't any other colonies of our kind anywhere else in the keep, as far as I know...", "Nerves base");
		scr_text("I... well... I... I'll just ransom them!", "Sharpe base", -1);
		scr_text("If the dogs want their precious treats back, then... then they'll have to ransom me! HA!", "Sharpe smug", -1);
		scr_text("You're... ransoming dog treats to get more dog treats that the dogs don't even have?", "Blek listen");
		scr_text("...well...shoot.", "Sharpe shock", -1);
		scr_text("Didn't quite think this through, huh?", "Blek base");
		scr_text("Quiet! The other cat said that this was a good idea, before she blocked the passage to the forest!", "Sharpe frown", -1);
		scr_text("Other cat? I never saw one enter the village...", "Nerves sad");
		scr_text("That's gotta be Trout! She must've tricked you and your instruments into taking the dogs' treats...", "Blek appalled");
		scr_text("...so the dogs wouldn't have the motivation to clear the way, and I wouldn't be able to follow her!", "Blek appalled");
		scr_text("You mean... me and my instruments... got taken advantage of?", "Sharpe narrow", -1);
		scr_text("It does indeed seem like it...", "Nerves base");
		scr_text("........", "Sharpe base", -1);
		scr_text("Can we... have the treats back now?", "Blek concerned");
		scr_text("GAH! Go ahead, what the hell else am I gonna use these stupid things for?!", "Sharpe frown", -1);
		scr_text("Huzzah! Let's make haste and inform Smalls. We need a lot of dogs with...", "Nerves base");
		scr_text("...a good deal of self-control...", "Nerves sad");
		scr_text("...to haul these back to town!", "Nerves base");
		instance_destroy(Obj_Sharpe_Treat_Pile_2);
		instance_create_layer(708, 476, "Instances_1", Obj_Sharpe_Treat_Pile_Grounded);
		inst_20A6D330.text_id = "Sharpe Post-Boss 2";
		asset_add_tags(Obj_Blek, "SharpeBeaten", asset_object);
		break;
	
		case "Sharpe Post-Boss 2":
		scr_text(".......", "Sharpe base", -1);
		scr_text("You ok, Sharpe?", "Blek base");
		scr_text("Course I am, shut it!", "Sharpe frown", -1);
		break;
		

		case "Sharpe Tavern":
		scr_text("Hello, cat", "Sharpe base", -1);
		scr_text("Heya! Looks like you decided to stay in the village.", "Blek");
		scr_text("I've got nowhere else to go, and they pay me to play music here.", "Sharpe base", -1);
		scr_text("With... dog treats?", "Blek listen");
		scr_text("Hey, I'm getting what I can with what I have!", "Sharpe frown", -1);
		scr_text("Right... oh! You said you have nowhere else to go, so are you not from the Keep?", "Blek base");
			scr_text_color(75, 80, c_grey, c_grey, c_grey, c_grey)
		scr_text("Nope. I woke up here a while ago, with nothing but my instruments to keep my company.", "Sharpe base", -1);
		scr_text("Then, do you mind if I ask you some questions?", "Blek listen");
		scr_text("It's really, really important.", "Blek base");
			scr_text_float(13, 19);
		scr_text("Fire away. It's not like I can ignore you... maybe...", "Sharpe base", -1);
			scr_option("What do you remember before waking up?", "Sharpe Tavern Question 1");
			scr_option("Did you meet anyone else before coming here?", "Sharpe Tavern Question 2");
			scr_option("How do you command so many instruments?", "Sharpe Tavern Questions 3");
			scr_option("What's with those paintings in the cave?", "Sharpe Tavern Questions 4");
			scr_option("That's all, for now.", "Sharpe Tavern End");
			inst_315AD46F.text_id = "Sharpe Tavern 2";
		break;
		
		case "Sharpe Tavern 2":
		scr_text("Back for more? Make it quick, just being around you gives me chills.", "Sharpe base", -1);
		scr_text("Like I can feel every cold touch from your cats, all at once, all over again...", "Sharpe narrow", -1);
		scr_text("....egh...", "Sharpe frown", -1);
			scr_option("What do you remember before waking up?", "Sharpe Tavern Question 1");
			scr_option("Did you meet anyone else before coming here?", "Sharpe Tavern Question 2");
			scr_option("How do you command so many instruments?", "Sharpe Tavern Questions 3");
			scr_option("That's all, for now.", "Sharpe Tavern End");
		break;

		case "Sharpe Tavern Question 1":
		scr_text("Ugh, it's still hazy. I was escaping a mansion with some paintings I earned fair and square,", "Sharpe base", -1);
		scr_text("When the owner of the mansion hit me with something hot! I think it was a spell... maybe, I'm not an expert.", "Sharpe narrow", -1);
		scr_text("I could feel myself getting weaker, so I drug myself away from the mansion, fell into a big pit, and woke up here.", "Sharpe base", -1);
		scr_text("You were... escaping with paintings you... earned???", "Blek listen");
		scr_text("Yeah? Did I stutter?", "Sharpe frown", -1);
		scr_text("It seems to me like you stole the paintings, Sharpe, and got hit by a spell while fleeing.", "Blek appalled");
		scr_text("Maybe the spell slowly sent you here, same as-", "Blek base");
		scr_text("Stole them?! Hardly! The title of 'Best Classical Musician' was taken from me!", "Sharpe frown", -1);
		scr_text("I DESERVED the first place cash prize, or at the very least, the second place one!", "Sharpe fury", -1);
		scr_text("All third place gets is a stupid consolation trophy! It's barely worth anything!", "Sharpe frown", -1);
		scr_text("So... you stole the paintings and were transported here... because you lost a music competition?", "Blek confused");
		scr_text("YOU WEREN'T THERE, CAT!", "Sharpe fury", -1);
			scr_text_float(0, 100);
		scr_text("If you knew how much was at stake, you wouldn't be talking!", "Sharpe frown", -1);
			scr_option("Did you meet anyone else before coming here?", "Sharpe Tavern Question 2");
			scr_option("How do you command so many instruments?", "Sharpe Tavern Questions 3");
			scr_option("That's all, for now.", "Sharpe Tavern End");
		break;

		case "Sharpe Tavern Question 2":
		scr_text("Yeah, this annoying ass mushroom who kept ignoring me.", "Sharpe frown", -1);
		scr_text("I swear, I must have yelled at it for hours before being the better person and walking away.", "Sharpe smug smile", -1);
		scr_text("Oh, you mean Russell? I met him to!", "Blek");
		scr_text("He told you his NAME?!?!", "Sharpe shock", -1);
			scr_option("What do you remember before waking up?", "Sharpe Tavern Question 1");
			scr_option("How do you command so many instruments?", "Sharpe Tavern Questions 3");
			scr_option("That's all, for now.", "Sharpe Tavern End");
		break;

		
		case "Sharpe Tavern Questions 3":
		scr_text("Ha! You mean, ''how do I give orders to a bunch of dumbasses!''", "Sharpe smug", -1);
		scr_text("Because seriously, they make a game out of not listening to me.", "Sharpe base", -1);
		scr_text("''Oh Sharpe, we're bored!'', ''Oh Sharpe, we're hungry!''", "Sharpe base", -1);
		scr_text("NO YOU'RE NOT! YOU DON'T NEED TO EAT!!!", "Sharpe fury", -1);
			scr_text_float(0, 100);
		scr_text("But, do you create them? Or did you just find a huge collection of living instruments?", "Blek base");
		scr_text("I can't give things life, cat.", "Sharpe base", -1);
		scr_text("If I could, I'd have an army of something strong, like... I dunno, rocks.", "Sharpe narrow", -1);
		scr_text("Nah, one of the things I woke up with was my bag, which has a supply of infinite living instruments inside.", "Sharpe base", -1);
		scr_text("I just have to pull em out.", "Sharpe base", -1);
		scr_text("I see. Where'd you get something like that?", "Blek base");
		scr_text("Glad you asked, I-", "Sharpe smug", -1);
		scr_text("You stole it?", "Blek listen");
		scr_text("No! I was given it! After threatening it's owner...", "Sharpe shock", -1);
		scr_text("Sharpe...", "Blek concerned");
		scr_text("They weren't using it! It was just sitting in a glass case collecting dust in a...a...", "Sharpe frown", -1);
		scr_text("A museum?", "Blek mad");
		scr_text("That's the spice. I'm doing the bag a favor, giving it some purpose!", "Sharpe smug smile", -1);
		scr_text("And it's not like I can put it back. Not now, at least.", "Sharpe base", -1);
			scr_option("What do you remember before waking up?", "Sharpe Tavern Question 1");
			scr_option("Did you meet anyone else before coming here?", "Sharpe Tavern Question 2");
			scr_option("That's all, for now.", "Sharpe Tavern End");
		break;

		case "Sharpe Tavern End":
		scr_text("Good. I've told you just about everything at this point.", "Sharpe narrow", -1);
		scr_text("Then I guess I'll see you around!", "Blek");
		scr_text("Ugh... I hope not.", "Sharpe narrow", -1);
		break;


		case "Trout 2nd Encounter":
		scr_text("Trout! There you are!", "Blek mad");
		scr_on_close("Trout 2nd Encounter Music");
		break;
		
		case "Trout 2nd Encounter Music":
		audio_play_sound(snd_Something_Fishy_This_Way_Comes, 10, true);
		scr_text("Well well, looks like you missed me!", "Trout Base", -1);
		scr_text("Did you like the blockade I set up for you? Hehehe...", "Trout Laugh", -1);
		scr_text("I knew that was you! Why'd you tell Sharpe to steal those treats? You caused a lot of problems, Trout!", "Blek mad");
		scr_text("You're right, hehehe! I did! What are YOU gonna do about it, Blek? Fight me?", "Trout Laugh", -1);
		scr_text("I... I don't know... m-maybe!", "Blek confused");
		scr_text("Maybe?! You had no problem fighting all those creatures before! Why am I being treated differently?!?", "Trout Angry", -1);
		scr_text("Well... all the monsters I've fought so far have been... well, monsters! They wanted to hurt me!", "Blek shock");
		scr_text("You just kind of want to... inconvience me.", "Blek concerned");
		scr_text("What? I want to fight you! I want to hurt you too! Like, so bad!", "Trout Shock", -1);
		scr_text("But if that were true, why'd you leave me after our first fight? Why does it seem like you're running from me?", "Blek base");
		scr_text("Sh... shut up! I'll show you, damn it! Fight me, here and now!", "Trout Angry", -1);
		scr_text("TROUT BOSSFIGHT 2");
		instance_destroy(inst_249C48C2);
		scr_on_close("Trout 2nd Encounter Music End");
		break;
		
		case "Trout 2nd Encounter Music End":
		audio_stop_sound(snd_Something_Fishy_This_Way_Comes);
		instance_destroy(Obj_textbox);
		inst_456E299.text_id = "Trout 2nd Encounter 2";
		break;
		
		case "Trout 2nd Encounter Auto":
		scr_text("H-hey! Don't just walk past me!", "Trout Angry", -1);
		scr_text("Oh, sorry! I just-", "Blek confused");
		scr_text("I-tch, nevermind!", "Trout Angry", -1);
		scr_text("What was I gonna say... oh, right!", "Trout Sad", -1);
		scr_on_close("Trout 2nd Encounter Auto Music");
		break;
		
		case "Trout 2nd Encounter Auto Music":
		audio_play_sound(snd_Something_Fishy_This_Way_Comes, 10, true);
		scr_text("Did you like the blockade I set up for you? Hehehe...", "Trout Laugh", -1);
		scr_text("I knew that was you! Why'd you tell Sharpe to steal those treats? You caused a lot of problems, Trout!", "Blek mad");
		scr_text("You're right, hehehe! I did! What are YOU gonna do about it, Blek? Fight me?", "Trout Laugh", -1);
		scr_text("I... I don't know... m-maybe!", "Blek confused");
		scr_text("Maybe?! You had no problem fighting all those creatures before! Why am I being treated differently?!?", "Trout Angry", -1);
		scr_text("Well... all the monsters I've fought so far have been... well, monsters! They wanted to hurt me!", "Blek shock");
		scr_text("You just kind of want to... inconvience me.", "Blek concerned");
		scr_text("What? I want to fight you! I want to hurt you too! Like, so bad!", "Trout Shock", -1);
		scr_text("But if that were true, why'd you leave me after our first fight? Why does it seem like you're running from me?", "Blek base");
		scr_text("Sh... shut up! I'll show you, damn it! Fight me, here and now!", "Trout Angry", -1);
		scr_text("TROUT BOSSFIGHT 2");
		inst_456E299.text_id = "Trout 2nd Encounter 2";
		scr_on_close("Trout 2nd Encounter Music End");
		break;
		
		case "Trout 2nd Encounter 2":
		scr_text("Wait... what? Why?!", "Trout Angry", -1);
		scr_text("Because! You have some explaining to do, Trout. So start talking!", "Blek mad");
		scr_text("How do we get back home? How do I get my memories back?", "Blek appalled");
		scr_on_close("Trout Fucking Books It");
		break;
		
		case "Trout Fucking Books It":
		instance_destroy(Obj_Trout)
		scr_text("NO! This... isn't how this is supposed to go!", "Trout Angry", -1);
		scr_text("How what is supposed to go? Trout, just talk to me!", "Blek concerned");
		instance_create_layer(1003, 301, "Instances_1", obj_Trout_Fucking_Books_It)
		scr_text("H-hey! Come back!", "Blek shock");
		instance_destroy(inst_456E299)
		break;
		
		
		case "Sharpe Forest Encounter":
		scr_text("Oh... it's you...", "Sharpe base", -1);
		scr_text("Sharpe! I thought I left you in Fang and Bone. Where are you heading?", "Blek");
		scr_text("According to that weird ass barkeep, there's another town through these woods.", "Sharpe base", -1);
		scr_text("I'm going there. I think... I'm allergic to dogs.", "Sharpe base", -1);
		scr_text("Cats too?", "Blek base");
		scr_text("...if I say yes, will you leave me alone?", "Sharpe frown", -1);
		inst_4FC83381.text_id = "Sharpe Forest Encounter 2";
		break;
		
		case "Sharpe Forest Encounter 2":
		scr_text("Whaaat? What do you want now?", "Sharpe frown", -1);
			scr_text_float(0, 7);
		scr_text("Where are all your instruments? I haven't seen you use them since our fight in the Cave.", "Blek base");
		scr_text("Ugh, don't bring up that fight. The dog with the eyepatch told me that I needed to ''pay my debt.''", "Sharpe frown", -1);
		scr_text("So, I had to leave the bag in the Village. Now all my instruments are helping out around town.", "Sharpe base", -1);
		scr_text("Pay your ''debt?'' But I thought you returned all the dog treats? What debt?", "Blek listen");
		scr_text("I... may have gotten hungry in the Cave...", "Sharpe shock", -1);
		scr_text("..........", "Blek shock");
		scr_text("Don't give me that look! Food options are limited in a big stone cave!", "Sharpe frown", -1);
		scr_text("The mushrooms made me dizzy and the moss made my stomach hurt!", "Sharpe frown", -1);
		scr_text("Yeah but... nevermind. So you just left your bag there?", "Blek concerned");
		scr_text("Heh... they'll be begging me to take it back soon, trust me.", "Sharpe smug", -1);
		scr_text("Once they realize how my instruments are incapable of taking orders.", "Sharpe smug smile", -1);
		scr_text("Right...", "Blek base");
		inst_4FC83381.text_id = "Sharpe Forest Encounter 3";
		break;
		
		case "Sharpe Forest Encounter 3":
		scr_text("Don't you have a tree to be staring at?", "Sharpe frown", -1);
		break;
		
		
		
		
		case "Russell Admires the View":
		scr_text("Hey... do...", "Russell View", -1);
		scr_text("RUSSELL!!!", "Blek mad");
		scr_text("Missing a piece of me. Always knew I was. It just took a few deer to prove it to me.", "Russell View", -1);
		scr_text("Hold on, maybe I can help you! I think I have a healing potion on me, j-just hold on!", "Blek sob");
		scr_text("No point, do. The cycle's at an end.", "Russell View", -1);
		scr_text("B-b-but I can fix this! Those damn deer... I can help you, I just need... I just need to figure out how...", "Blek cry");
		scr_text("If the Keep thinks it's time I returned to the ground, then who are we to argue?", "Russell View", -1);
		scr_text(".....", "Blek sob");
		scr_text("I've got a good view from here... Don't have any eyes but... I can still appreciate it.", "Russell View", -1);
		scr_text(".....", "Blek resigned");
		scr_text("Give me a second, would you do? I want to enjoy this. Or, better yet, come back and enjoy it with me.", "Russell View", -1);
		inst_43C35D0E.text_id = "Russell View 2";
		break;
	
		case "Russell View 2":
		scr_text("The view's... the view's great... don't you think do? M...maybe you can enjoy it with me...", "Russell View", -1);
			scr_option("Enjoy the view", "Russell View 2 - Proceed");
			scr_option("Not yet...", "Russell View 2 - Do not");
		break;
		
		case "Russell View 2 - Proceed":
		instance_destroy(obj_Russell_View);
		instance_create_layer(72, 51, "Instances_1", obj_Russell_View2);
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("Good... I slowed you down. Made you appreciate nature.", "Russell View", -1);
		scr_text("...", "Blek resigned");
		scr_text("That's... a win... to me...", "Russell View", -1);
		scr_on_close("Russell Collapse");
		instance_destroy(inst_43C35D0E);
		break;
		
		case("Russell View 2 - Do not"):
		scr_text("It isn't going anywhere...", "Russell View", -1);
		break;

		case("Russell Collapse"):
		instance_destroy(obj_Russell_View2);
		instance_create_layer(72, 51, "Instances_1", obj_Russell_View3);
		break;


		case "Russell Body":
		scr_text("A mushroom with several bite marks taken out of it.");
		scr_text(".....", "Blek sob");
		scr_text(".....", "Blek sob");
		scr_text(".....", "Blek sob");
		scr_text("...Russell...?", "Blek sob");
		inst_43C35D0E.text_id = "Russell Body 2";
		break;
		
		case "Russell Body 2":
		scr_text("...", "Blek sob");
		scr_text("...", "Blek resigned");
		scr_text("...", "Blek resigned");
		scr_text("I'm sorry, do...", "Blek depressed");
		instance_destroy(inst_43C35D0E)
		break;

		case "Nerves Heart 1":
		scr_text("So Blek. Tell me about the land which you originate.", "Nerves base");
		scr_text("Sorry to disappoint you Nerves, but I don't remember anything about my life before coming here.", "Blek base");
		scr_text("You've lost your memories? That... must be dreadful.", "Nerves sad");
		scr_text("I could never imagine losing such an integral part of yourself.", "Nerves sad");
		scr_text("Yeah...", "Blek concerned");
		scr_text("Do you have any clues as to how to get them back?", "Nerves base");
		scr_text("My only lead right now is Trout, who seems to know me.", "Blek confused");
		scr_text("If I find her, I might learn more about about myself, and who I was before the Keep.", "Blek base");
		scr_text("Then... after we stop this treat thief, I shall dedicate my life to helping you hunt down this loathsome ''Trout''", "Nerves smug");
		scr_text("Wh-what?! Come on Nerves, I appreciate the offer, but you have a town to look after!", "Blek shock");
		scr_text("Nonsense. It's the least I can do, after attacking you as recklessly as I did before.", "Nerves unamused");
		scr_text("All is forgiven Nerves, honest. Your towwn needs its protector.", "Blek");
		scr_text("I'll be fine on my own! I have been thus far, at least.", "Blek");
		scr_text("...I suppose you are right. Besides, I do not believe the bounty hunting role would suit me well...", "Nerves sad");
		scr_text("You make a much better knight! I, meanwhile...", "Blek base");
		scr_text("...if I have to become a bounty hunter to get my memories back...", "Blek depressed");
		scr_text("This ''Trout'' will certainly see reason, Blek. If not, then you're strong enough to make her see.", "Nerves base");
		scr_text("...thanks, Nerves.", "Blek");
		break;
		
		case "Nerves Heart 2":
		scr_text("What about you Nerves? Where does your kind come from?", "Blek");
		scr_text("Well... its a bit foggy. Like you, bits and pieces of my memories disappeared when I woke up here.", "Nerves sad");
		scr_text("Though, some of us knew more than others. Smalls seemed to know the most, and he filled us in.", "Nerves unamused");
		scr_text("And?", "Blek listen");
		scr_text("We were all a part of a dog shelter, and Smalls was our caretaker.", "Nerves unamused");
		scr_text("He looked after the lot of us while we waited for new homes.", "Nerves base");
		scr_text("You were all from a dog shelter? That's so sad! Did any of you ever find owners?", "Blek appalled");
		scr_text("Hm? No, of course not! There was a housing shortage in the nearby city, and we were waiting for some units to open up.", "Nerves base");
		scr_text("Oh. W-well, what else do you remember?", "Blek confused");
		scr_text("Hmm... well, even through the house we were sharing was a bit cramped, I remember very high ceilings.", "Nerves base");
		scr_text("Anything else? Maybe... a colony of cat people?", "Blek base");
		scr_text("I remember a flea epidemic. Those were dark times...", "Nerves sad");
		scr_text("Yikes...", "Blek appalled");
		break;
		
		case "Russell Heart 1":
		scr_text("You here that, do?", "Russell", -1);
		scr_text("You mean the song the mushrooms keep humming?", "Blek listen");
		scr_text("It'd be hard not to hear it.", "Nerves sad");
		scr_text("It's the song of my people. The song of me, and all of us.", "Russell", -1);
		scr_text("What does the song mean?", "Blek base");
		scr_text("It signifies decay. The cycle we all shuffle along.", "Russell", -1);
		scr_text("Eventually, the nutrients run out, and we succumb to the stone.", "Russell", -1);
		scr_text("A song about death, huh?", "Blek base");
		scr_text("To thing, I've been humming along to it this whole time.", "Blek confused");
		scr_text("It is rather catchy.", "Nerves base");
		scr_text("It's worth singing, do. Even if you succumb, the cycle doesn't stop.", "Russell", -1);
		scr_text("We muchrooms know that all too well... dying is just the birth of another good soul.", "Russell", -1);
		scr_text("I guess when you eat dead things, your outlook on death is pretty bright.", "Blek base");
		scr_text("Glad you see things the way I dude, do.", "Russell", -1);
		inst_602C5207.text_id = "Russell Heart 1 B";
		break;
		
		case "Russell Heart 1 B":
		scr_text("You've got somewhere to be, right do? Don't let me keep you.", "Russell", -1);
		scr_text("I'll be here for a while.", "Russell", -1);
		break;
		
		
		case "Stag Lord":
		scr_text("At last.", "GotF", -1);
		scr_text("You! Are you the one who did all this?!", "Blek mad");
		scr_text("Who burned this house down and made the owner go crazy?!", "Blek mad");
		scr_text("...", "GotF", -1);
		scr_text("Answer me!", "Blek mad");
		scr_text("...you have troubled my kin, Necromancer.", "GotF", -1);
		scr_text("Your kin... those things that look like deer?", "Blek mad");
		scr_text("And yet, I have given you ample opportunity to leave this place.", "GotF", -1);
		scr_text("What keeps bringing you back, I wonder?", "GotF", -1);
		scr_text("I need... I need to figure out what happened here!", "Blek depressed");
		scr_text("I was told that this house was a waking nightmare. I'm starting to understand why...", "Blek confused");
		scr_text("...", "GotF", -1);
		scr_text("It's your fault! You-", "Blek mad");
		scr_text("I reverse tragedy, for a price. But as most come to find, I cannot do it all.", "GotF", -1);
		scr_text("He's talking over me, like he's not even listening. Should I even fight this guy?", "Blek confused");
		scr_text("Do I even have a chance against him? Will fighting him even solve anything?", "Blek concerned");
		scr_text("You're not the first Necromancer to summon me, child. Another found his way to my grave, and took me up on a deal.", "GotF", -1);
		scr_text("Another cat... does he mean Trout? N-no... this thing said ''he''... so there must be another Nekomancer in the Keep!", "Blek confused");
		scr_text("I was unable to give him what he wanted... an escape. A way out of this place.", "GotF", -1);
		scr_text("Our desires were one in the same, after all. The minute I was summoned, I became trapped within these walls as well.", "GotF", -1);
		scr_text("So, of course, I could not help him. When I tried to take my end of the bargain, he overwhelmed me with spirits, and I was sealed away.", "GotF", -1);
		scr_text("Spirits stopped him? So this thing can be beaten...", "Blek appalled");
		scr_text("I remained in that shallow grave until the Groundskeeper let me in. And now, finally unsealed, I find myself still trapped.", "GotF", -1);
		scr_text("Perhaps I am to remain here until I complete a deal with a Necromancer.", "GotF", -1);
		scr_text("So, Necromancer... shall you help me? Let me in... let me make a deal with you...", "GotF", -1);
		scr_text("No way! You're going back into that grave where you belong!", "Blek mad");
		scr_text("...so be it.", "GotF", -1);
		scr_text("STAG LORD BOSS FIGHT");
		break;
		
		case "Sharpe Shock":
		scr_text("Oh... it's you. 'Need to find a bell to put on you...", "Sharpe base", -1);
		scr_text("What are you doing here? You scared me half to death!", "Blek mad");
		scr_text("Only half? Damn...", "Sharpe narrow", -1);
		scr_text("What's in that bag? You're not looting, are you?", "Blek mad");
		scr_text("So what if I am? I don't see anyone around here using this stuff.", "Sharpe frown", -1);
		scr_text("Still, it isn't yours!", "Blek mad");
		scr_text("What are you going to do with all that stuff anyway? Who's gonna buy it off you if you try to sell it?", "Blek concerned");
		scr_text("Look, I've been thinking, and I might have a lucrative buisness strategy in mind...", "Sharpe smug smile", -1);
		scr_text("What, are you going to sell this stuff to Fang and Bone in exchange for dog treats?", "Blek listen");
		scr_text("...", "Sharpe narrow", -1);
		scr_text("I... you...", "Blek confused");
		scr_text("L-look, just put the stuff back, ok? I don't want to have to fight you again.", "Blek mad");
		scr_text("Whatever! Not like you'd win! Even without my instruments, I'd still kick your ass!", "Sharpe frown", -1);
		scr_text("...", "Blek mad");
		scr_text("But... I... don't really need this stuff, I guess... who cares.", "Sharpe narrow", -1);
		scr_text("Good.", "Blek base");
		break;
		
		case "Sharpe Pete House":
		scr_text("Whaaat?", "Sharpe frown", -1);
			scr_text_float(0, 7);
		scr_text("So is this town everything you hoped for?", "Blek base");
		scr_text("It's completly lifeless, so it's a start. BUT! It's way too cold.", "Sharpe base", -1);
		scr_text("I need somewhere warmer to kick my feet up. Maybe a beach house...", "Sharpe smug smile", -1);
		scr_text("Beach...?", "Blek concerned");
		scr_text("Yeah? A beach? With sand? Next to the ocean? A huge body of water?", "Sharpe shock", -1);
		scr_text("Oooooh, like a water table!", "Blek");
			scr_text_float(0, 6);
		scr_text("How do you know what a water table is, and not a beach?", "Sharpe narrow", -1);
		inst_51A83ACD.text_id = "Sharpe Pete House B";
		break;

		case "Sharpe Pete House B":
		scr_text("By the way, do you have any food? I'm starving.", "Sharpe base", -1);
		scr_text("I've been mostly eating whatever I find around the Keep. Monsters usually carry snacks with them.", "Blek base");
		scr_text("You've been beating up monsters and stealing their lunch? And you call ME the thief...", "Sharpe shock", -1);
		scr_text("Whu-i-its different! I'm not even really stealing, just picking up what the monsters drop!", "Blek shock");
		scr_text("You're stealing from those who can't defend themselves!", "Blek mad");
		scr_text("Those dogs weren't defensless! One of them had a sword!", "Sharpe frown", -1);
		scr_text("You had an army Sharpe. They were defensless.", "Blek appalled");
		scr_text("Whatever! Just know that you're not the little moral lighthouse you claim to be!", "Sharpe frown", -1);
		scr_text("...lighthouse?", "Blek listen");
		scr_text("ITS A BEACH THING, DAMMIT! READ AN ENCYCLOPEDIA!", "Sharpe fury", -1);
			scr_text_float(0, 99);
		inst_51A83ACD.text_id = "Sharpe Pete House C";
		break;
		
		case "Sharpe Pete House C":
		scr_text("Ugh... even without the dogs around, I'm still sniffling... so cold...", "Sharpe narrow", -1);
		break;
		
		case "Aran First Meet":
		scr_text("Alright, that's close enough! Start talking!", "Aran mad", -1);
		scr_text("Whoa, take it easy! I'm just passing through, I'm not one of those weird flesh things!", "Blek shock");
		scr_text("I can see that! What's your deal? Why are you ''passing through'' Flytrap, huh?", "Aran narrow", -1);
		scr_text("I'm following someone's trail! A cat like me, dressed in purple!", "Blek shock");
		scr_text("...a cat in purple...?", "Aran narrow", -1);
		scr_text("Yeah! Have you seen her?", "Blek appalled");
		scr_text("No, but I've seen plenty of other cats. Even one that dresses like you.", "Aran base", -1);
		scr_text("Really?! That's got to be Trout in disguise! Where did you see her?", "Blek");
		scr_text("Why should I tell you, huh? What, are you gonna follow me to that spot and leave me there?!", "Aran mad", -1);
		scr_text("Why would I do that?", "Blek appalled");
		scr_text("That's just... how things have been shaking up in my life as of recent. Being left in places you don't belong, you know?", "Aran sad", -1);
		scr_text("Tell me about it! I woke up here without any memories of how I got here, who I was, or... anything else, really!", "Blek base");
		scr_text("For real? You're not from the Keep?", "Aran shock", -1);
		scr_text("Nope! I'm from... somewhere else. I still can't fully remember where, though.", "Blek base");
		scr_text("That's what me and the rest of my village are dealing with. Noble remembers the most of all of us, but...", "Aran base", -1);
		scr_text("I was gonna ask about that, what happened to everyone? Can't have a spider village without more spiders, you know?", "Blek base");
		scr_text("...", "Aran sad", -1);
		scr_text("...well, do you know where they are now?", "Blek concerned");
		scr_text("I... yeah. There's a weird Art Gallery to the North. It's pretty cool, if you're into that sort of thing.", "Aran shame", -1);
		scr_text("I've been there a few times, and every time I visit, I catch these weird flesh things watching me.", "Aran base", -1);
		scr_text("The last time I went, Pete, er, one of the villagers beat it back inside and locked the door.", "Aran base", -1);
		scr_text("But I guess... the door was unlocked... somehow...", "Aran shame", -1);
		scr_text("They must have escaped and attacked your village! So, you're the only one left?", "Blek shock");
		scr_text("Yeah. Beat a few of those assholes back and barricaded my door. 'Been hearing them scratching now and then ever since.", "Aran base", -1);
		scr_text("I bet Trout opened the Gallery, trying to stop me from getting to her. She's got a track record for causing trouble in small villages.", "Blek mad");
		scr_text("Yeah... yeah! So your purple cat friend is behind this, huh? Let's go take her out!", "Aran mad", -1);
		scr_text("Whoa, I don't know about that...", "Blek appalled");
		scr_text("She's the reason my village was attacked! It's not like she doesn't deserve it!", "Aran narrow", -1);
		scr_text("I mean, yeah, but...", "Blek depressed");
		scr_text("I'm coming with you, cat. We'll show her what it means to piss off a spider. What's your name, by the way?", "Aran base", -1);
		scr_text("It's Blek. What about you, Spider Dude?", "Blek base");
		scr_text("Aran. 'S all you need to know.", "Aran base", -1);
		scr_text("Right, yeah... I'll explore a bit, then I'll meet you over at the Art Gallery.", "Blek depressed");
		scr_text("To the North. I'll be waiting.", "Aran base", -1);
		inst_1624A314.text_id = "Aran Dialouge 1 B";
		asset_add_tags(Obj_Blek, "AranTalk", asset_object);
		break;

		
}



}