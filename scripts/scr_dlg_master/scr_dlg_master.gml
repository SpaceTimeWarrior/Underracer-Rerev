// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dlg_master(dlgt=0,dlg2 = 0){
	switch(language){
		//add language codes here US english and default is below on how it is structured
		case "en_US":
		default:
		switch(dlgt){//this tells which dialog to get
			case 0://obj_dlg_alwaysfacing
				return "* Weird how it's always&facing you, right?";
			break;
			case 1://obj_dlg_blookbossintro
				if(dlg2 == 0){
					return "*let's race then........&*......i guess./";
				}else{
					return "*..........ready?/";
				}
			break;
			case 2://obj_dlg_blookloses
				if(dlg2 == 0){
					return "*oh....i lost...&*again.../";
				}else if(dlg2 == 1){
					return "*well...&*...it doesn't matter./";
				}else if(dlg2 == 2){
					return "*you're pretty good.&*here's a little thanks&for racing with me./"
				}else{
					return "*You obtained 50G.";
				}
			break;
			case 3://obj_dlg_blookwins
				if(dlg2 == 0){
					return "*oh....i won......./";
				}else if(dlg2 == 1){
					return "*sorry........&*i feel bad now...../";
				}else if(dlg2 == 2){
					return "*thanks for racing with me&anyways......../";
				}
			break;
			case 4://obj_dlg_doghouse
				if(dlg2 == 0){
					return "* Looks like a dog house,&smells like a dog house,&there is a carved dog on it...";
				}else if(dlg2 == 1){
					return "* Yep, it's a dog house.";
				}
			break;
			case 5://obj_dlg_errormsg
				return "*bepis.&*uh, i mean...&*error./"
			break;
			case 6://obj_dlg_floweybossintro
				if(dlg2 == 0){
					return "*Good luck, buddy!/";
				}else if(dlg2 == 1){
					return "*You're gonna need it./"
				}
			break;
			case 7://obj_dlg_floweyintro_hakd
				if(dlg2 == 0){
					return "*What!? Don't look at&me like that!/";
				}else if(dlg2 == 1){
					return "*I swear, it wasn't me!&*Not this time!/";
				}else if(dlg2 == 2){
					return "*I'm going to find the&absolute idiot who did&this and.../";
				}else if(dlg2 == 3){
					return "*Wait, is that...&*Someone over there...?";
				}
			break;
			case 8://obj_dlg_floweyjudgement
				if(dlg2 == 0){
					return "*Heheh, you really thought&we were going to do&this all again?";
				}else if(dlg2 == 1){
					return "*Don't you think i've&learned from my&mistakes?/";
				}else if(dlg2 == 2){
					return "*I know who you are.";
				}else if(dlg2 == 3){
					return "*I know what you did./";
				}else if(dlg2 == 4){
					return "*I know what you are&capable of./";
				}else if(dlg2 == 5){
					return "*This world you are&about to enter.../";
				}else if(dlg2 == 6){
					return "*It's not like the others./";
				}else if(dlg2 == 7){
					return "*Those who you thought&were friends.../";
				}else if(dlg2 == 8){
					return "*They don't know who you&are. You're a stranger./";
				}else if(dlg2 == 9){
					return "*All your sins, past,&present or future, will be&shown for all to see.../";
				}else if(dlg2 == 10){
					return "*And then?/";
				}else if(dlg2 == 11){
					return "\\R*YOU'LL JUST END UP&LIKE THE OTHERS.\\W/"
				}
			break;
			case 9://obj_dlg_floweyjudgement_end
				if(dlg2 == 0){
					return "*One last thing./";
				}else if(dlg2 == 1){
					return "*Don't think you'll&get your happy ending&as easy as last time./";
				}else if(dlg2 == 2){
					return "\\W*IT TAKES A LOT OF&\\RDETERMINATION\\W TO SAVE&SOMETHING YOU&DON'T KNOW./"
				}
			break;
			case 10://obj_dlg_floweypellets_intro
				if(dlg2 == 0){
					return "*Time to DIE!/";
				}else if(dlg2 == 1){
					return "*...Wait...&*Did you hear that?/";
				}
			break;
			case 11://obj_dlg_floweypostruins
				if(dlg2 == 0){
					return "* Howdy!&It's me again!"
				}else if(dlg2 == 1){
					return "*Nice work! You really&did a good race&against Toriel,&didn't you?";
				}else if(dlg2 == 2){
					return "* Okay, let's cut the&polite talk."
				}else if(dlg2 == 3){
					return "* We both know you've&done this before."
				}else if(dlg2 == 4){
					return "* Why wouldn't it? It's&just everyone you know&and love..."
				}else if(dlg2 == 5){
					return "* Racing around in karts,&having a grand old time!"
				}else if(dlg2 == 6){
					return "* ...at least, that's what&you think it is, right?/"
				}else if(dlg2 == 7){
					return "* Despite that, though,&there's actually an&entirely different&element..."
				}else if(dlg2 == 8){
					return "*...that you're&completely unaware of./"
				}else if(dlg2 == 9){
					return "* Something that could&change the entire&fate of this world."
				}else if(dlg2 == 10){
					return "* I mean, have you even&considered why they chose&YOU as the one to explore&the underground again..."
				}else if(dlg2 == 11){
					return "* ...instead of someone&else who did the&exact same thing?"
				}else if(dlg2 == 12){
					return "* Is it determination?&* Is it fate?"
				}else if(dlg2 == 13){
					return "* OR IS IT BECAUSE YOU'RE&FOOLISH ENOUGH TO&FALL FOR THE GIMMICK?!"
				}else if(dlg2 == 14){
					return "* Opportunity is knocking&at the doorstep, Frisk."
				}else if(dlg2 == 15){
					return "* But don't worry,&it won't be the same&as last time."
				}else if(dlg2 == 16){
					return "* After all, it takes&a lot of determination&to SAVE what you don't&know."
				}
			break;
			case 12://obj_dlg_floweyrace_friskloses
				if(dlg2 == 0){
					return "*Yes, as i expected.&*I won!/"
				}else if(dlg2 == 1){
					return "*And you lost...&*Because you're weak...&*Fragile.../"
				}else if(dlg2 == 2){
					return "*And stupid enough...&to race me!/"
				}else if(dlg2 == 3){
					return "*You really ARE an IDIOT./"
				}
			break;
			case 13://obj_dlg_floweyrace_friskwins
				if(dlg2 == 0){
					return "*...How?&*This can't be...&This can't.../"
				}else if(dlg2 == 1){
					return "*Nobody WON!&*Everybody LOST!&*It wasn't FAIR!/"
				}else if(dlg2 == 2){
					return "*You know what's going on.&*Don't you?/";
				}else if(dlg2 == 3){
					
				}
			break;
			case 14://obj_dlg_floweyracetut
				if(dlg2 == 0){
					return "\\W*This is a \\YKART\\W.&It's your main means&of transportation&and your \\RWEAPON\\W./"
				}else if(dlg2 == 1){
					return "\\W*How does it work?&*Easy! \\YSOUL POWER\\W!/"
				}else if(dlg2 == 2){
					return "*You don't need&anything else! Except for&one thing, maybe.&*Items!/"
				}else if(dlg2 == 3){
					return "*Items can do a bunch&of different things.&You should try 'em all&out sometime!"
				}else if(dlg2 == 4){
					return "\\W*But there's one golden&rule, you use them&by pressing \\Y"+string(chr(global.control_pl1use_kb))+"\\W./"
				}else if(dlg2 == 5){
					return "\\W*Also, you can use&\\BSPECIAL ATTACKS\\W with the&power of \\BMAGIC\\W!"
				}else if(dlg2 == 6){
					return "But I think that should&be enough information&for you."
				}else if(dlg2 == 7){
					return "\\W*...Hey, how about a&*\\YQUICK RACE\\W?&*Just follow me!/"
				}else if(dlg2 == 8){
					return "*You feel like you've seen this&before. But it feels...&...different."
				}
			break;
			case 15://obj_dlg_froggit_torielalert
				if(dlg2 == 0){
					return "*Ribbit, Ribbit.&*(Careful there, human!)/"
				}else if(dlg2 == 1){
					return "*Ribbit, Ribbit.&*(Ahead lies Toriel's Raceway.)/"
				}else if(dlg2 == 2){
					return "*Ribbit, Ribbit, Ribbit.&*(She is very skilled.)/"
				}else if(dlg2 == 3){
					return "*Ribbit. Ribbit.&*(If you want to exit the RUINS...)/"
				}else if(dlg2 == 4){
					return "*Ribbit.&*(You'll have to win a race&against her.)/"
				}else if(dlg2 == 5){
					return "*Ribbit!&*(Good luck!)/"
				}
			break;
			case 16://obj_dlg_hfrisk_snowsecret
				if(dlg2 = 0){
					return "* How did you..."
				}else if(dlg2 = 1){
					return "* ...anyways....&* Hi! And bye!"
				}else if(dlg2 = 2){
					return "* Heheheheheheh&eheheheheheh!"
				}
			break;//obj_dlg_hfriskintro was moved to case 59(I messed up on making this)
			case 17://obj_dlg_hiya
				if(dlg2 = 0){
					return "*Hiya~/"
				}
			break;
			case 18://obj_dlg_introflowey
				if(dlg2 = 0){
					return "\\W*Howdy! I'm \\YFLOWEY\\W!&*\\YFLOWEY\\W the \\YFLOWER\\W!/"
				}else if(dlg2 = 1){
					return "\\W*Hmmm...&*You're new to&the \\YRACING CIRCUIT\\W,&aren'tcha?\\W/"
				}else if(dlg2 = 2){
					return "*Golly, you must be&so confused."
				}else if(dlg2 = 3){
					return "*Someone ought to&teach you how things&work around here!/"
				}else if(dlg2 = 4){
					return "*I guess little old me&will have to do.&*Ready? Here we go!/"
				}
			break;
			case 19://obj_dlg_introflowey2
				if(dlg2 = 0){
					return "*Hello again!&I guess i don't need&to introduce myself&again, do i?/"
				}else if(dlg2 = 1){
					return "*Just follow me, buddy./"
				}
			break;
			case 20://obj_dlg_introhaked
				if(dlg2 = 0){
					return "*What happened...!?&*...Who was that?/"
				}
			break;
			case 21://obj_dlg_meetsans
				if(dlg2 = 0){
					return "*..."
				}else if(dlg2 = 1){
					return "*H u m a n."
				}else if(dlg2 = 2){
					return "*D o n ' t  y o u  k n o w& h o w  t o  g r e e t& a  n e w  p a l ?"
				}else if(dlg2 = 3){
					return "*T u r n  y o u r  k a r t ,& a n d  l o o k  m e& i n  t h e  e y e ."
				}
			break;
			case 22://obj_dlg_meetsansalt
				if(dlg2 = 0){
					return "*...i would tell you to& turn around...&*but it looks like you& beat me to it."
				}else if(dlg2 = 1){
					return "*..."
				}
			break;
			case 23://obj_dlg_mk_racestart
				if(dlg2 = 0){
					return "* Yo, nice!&* Let's race!"
				}
			break;
			case 24://obj_dlg_papybossintro
				if(dlg2 = 0){
					return "*HUMAN! IT IS TIME!&*RACING TIME!"
				}else if(dlg2 = 1){
					return "*ARE YOU READY?  WEW!&*BECAUSE I AM!/"
				}
			break;
			case 25://obj_dlg_papybridge
				if(dlg2 = 0){
					return "*STOP WHERE YOU ARE,&HUMAN! FOR THIS..."
				}else if(dlg2 = 1){
					return "*IS THE JUMP PAD OF&ULTIMATE TERROR!/"
				}else if(dlg2 = 2){
					return "*YOU WON'T BE ABLE TO&REACH SNOWDIN TOWN..."
				}else if(dlg2 = 3){
					return "*WITHOUT JUMPING THROUGH&TWO CLIFFS!"
				}else if(dlg2 = 4){
					return "*TWICE THE DANGER!&TWICE THE FALL!"
				}else if(dlg2 = 5){
					return "*ARE YOU DETERMINED&ENOUGH TO GET PAST MY&EXPERT TRAPS?"
				}else if(dlg2 = 6){
					return "*GO ON...&*IF YOU DARE!"
				}
			break;
			case 26://obj_dlg_papybridge_completed
				
			break;
			case 27://obj_dlg_papygate
			
			break;
			case 28://obj_dlg_papyloses
			
			break;
			case 29://obj_dlg_papywins
			
			break;
			case 30://obj_dlg_raceahead
			
			break;
			case 31://obj_dlg_raceicecapduo
			
			break;
			case 32://obj_dlg_racelose
			
			break;
			case 33://obj_dlg_racemk
			
			break;
			case 34://obj_dlg_racestart
			
			break;
			case 35://obj_dlg_racewin
			
			break;
			case 36://obj_dlg_ruins_blookyrace1
			
			break;
			case 37://obj_dlg_ruins_blookyrace2
			
			break;
			case 38://obj_dlg_sansfrisk1
			
			break;
			case 39://obj_dlg_sanspap1
			
			break;
			case 40://obj_dlg_sanspapracetip
			
			break;
			case 41://obj_dlg_sansrevealed
				if(dlg2==0){
					return "*heheheh, the ol' whoopee& cushion as a horn trick.";
				}else if(dlg2 == 1){
					return "*it's ALWAYS funny.";
				}else if(dlg2 == 2){
					return "*anyways, you're a human,& right?";
				}else if(dlg2 == 3){
					return "*that's hilarious.";
				}else if(dlg2 == 4){
					return "*i'm sans.&*sans the skeleton.";
				}else if(dlg2 == 5){
					return "*i'm actually supposed to& be on watch for any& fast racers right now.";
				}else if(dlg2 == 6){
					return "*but... y'know...";
				}else if(dlg2 == 7){
					return "*i don't really care about& racing anybody.";
				}else if(dlg2 == 8){
					return "*now my brother,& papyrus...";
				}else if(dlg2 == 9){
					return "*he's a racing FANATIC.";
				}else if(dlg2 ==10){
					return "*hey, actually, i think& that's him over there.";
				}else if(dlg2 == 11){
					return "*i have an idea.&*drive through this gate& thingy."
				}else{
					return "*yeah, drive right& through.&*my bro made the bars too& wide to stop anyone.";
				}
			break;
			case 42://obj_dlg_snowdinlowriders_1
				if(dlg2 == 0){
					return "* This is nice and all,but...";
				}else if(dlg2 == 1){
					return "* I'm feeling...^2terrible....";
				}else if(dlg2 ==2){
					return "* Please stop the car.&* ...s-stop.";
				}
			break;
			case 43://obj_dlg_snowdinlowriders_2
				if(dlg2 == 0){
					return "* I can't turn it off!";
				}else if(dlg2 == 1){
					return "* I-i just can't!";
				}
			break;
			case 44://obj_dlg_snowdinlowriders_3
				return "* Well...&* This is my life now."
			break;
			case 45://obj_dlg_snowdogbossintro
				if(dlg2 == 0){
					return "*something moved I will make sure it&will never drive again/";
				}else if(dlg2 == 1){
					return "*woof woof woof & (you don't know what was said but likely let's&race)/";
				}else if(dlg2 == 2){
					return "*don't know how I ended  &in this race I guess I will take a nap and have&my kart on autopilot/";
				}
			break;
			case 46://obj_dlg_sorryrock
				return "*.....oh no.......&*i'm so sorry....../";
			break;
			case 47://obj_dlg_threedots
				return "* ...";
			break;
			case 48://obj_dlg_tori_intro
				if(dlg2 == 0){
					return "*What a terrible creature,&torturing such a poor,&innocent youth.../";
				}else if(dlg2 == 1){
					return "\\W*Ah, do not be afraid.&*I am \\BTORIEL\\W, caretaker&of the \\RRUINS.\\W/";
				}else if(dlg2 == 2){
					return "*I pass through this place&every day to see if&anyone was racing nearby./";
				}else if(dlg2 == 3){
					return "*You are the first human&to come here in....&a long time./";
				}else if(dlg2 == 4){
					return "*I will do my best to&ensure your protection&during your time here./";
				}else if(dlg2 == 5){
					return "*Come!&*I will guide you through the catacombs./"
				}
			break;
			case 49://obj_dlg_torielbossintro
				if(dlg2 == 0){
					return "* I am sorry, child,&that it has come to this.";
				}else if(dlg2 == 1){
					return "* But there is no turning&back now!";
				}else if(dlg2 == 2){
					return "* I see you have been&busy but you still need&to prove yourself.";
				}
			break;
			case 50://obj_dlg_torielloses
				if(dlg2 == 0){
					return "* Well then.&I was defeated.../";
				}else if(dlg2 == 1){
					return "* You are trully skilled,&my child.";
				}else if(dlg2 == 2){
					return "* Come! I'll guide you&to the Ruins exit.&Also, take this.";
				}else{
					if(!hardmode){
						return "*You obtained 200G."
					}else{
						return "*You obtained 200G...&and a turbocharger?&campaign top speed up"
					}
				}
			break;
			case 51://obj_dlg_torielpreintro
				if(dlg2 == 0){
					return "* Hello my child! Where&were you? You've been&driving for quite&some time...";
				}else if(dlg2 == 1){
					return "* You decide to confront Toriel&to leave the Ruins and&continue your adventure.";
				}else if(dlg2 == 2){
					return "* ^1.^1.^1./";
				}else if(dlg2 == 3){
					return "* You wish to leave the&Ruins so badly?/";
				}else if(dlg2 == 4){
					return "* Very well...&but you must prove&yourself to me!";
				}else if(dlg2 == 5){
					return "* Prove you are skilled&enough by beating me&in a race...";
				}
			break;
			case 52://obj_dlg_torielruinsexit
				if(dlg2 == 0){
					return "* Ahead lies the exit&of the Ruins.";
				}else if(dlg2 == 1){
					return "* ^1.^1.^1./";
				}else if(dlg2 == 2){
					return "* Be good my child.&Remember to take care,&always.";
				}
			break;
			case 53://obj_dlg_torielwins
				if(dlg2==0){
					return "* You're not skilled.&Not enough.../";
				}else if(dlg2 == 1){
					return "* But one day maybe& i'll teach you some&racing tips...";
				}else if(dlg2 == 2){
					return "* Now go back to&playing in the Ruins,&my child.";
				}
			break;
			case 54://obj_dlg_vgtoid_rockalert
				if(dlg2 == 0){
					return "*Hello, child!&*Are you eating your&greens?/";
				}else if(dlg2 == 1){
					return "*Anyways...&*Do you see that big dude&right there?/";
				}else if(dlg2 == 2){
					return "*If not, you should eat more&carrots then./";
				}else if(dlg2 == 3){
					return "*As i was saying, be careful if&you see a rock during your&races./";
				}else if(dlg2 == 4){
					return "*They will stun you if you&collide with them.&Sometimes they even move!&I don't know how, though./";
				}else{
					return "*So take care!&*Good luck racing!&*Always eat your greens!/";
				}
			break;
			case 55://obj_dlg_whatwasthat
				return "* What was that!?";
			break;
			case 56://obj_dlg_younohere
				return "* You're not supposed to&be here...";
			break;
			case 57://obj_froggit_mobracealert
				if(dlg2 == 0){
					return "*Ribbit, Ribbit.&*(I'm sorry, but it seems&our racers are busy.)";
				}else if(dlg2 == 1){
					return "*Ribbit, Ribbit.&*(They didn't even&prepare themselves.)";
				}else if(dlg2 == 2){
					return "*Ribbit, Ribbit, Ribbit.&*(So i suggest you wait&until you can race them.)";
				}else if(dlg2 == 3){
					return "*Ribbit.&*(I told them to&prepare for racing...)/";
				}else{
					return "*Ribbit!&*(But it's like no one&understands what i say!)/";
				}
			break;
			case 58:
			  if(dlg2 ==0){
				 return "Shop closed maybe try after beating \\BTORIEL\\W." 
			  }
			  break;
			case 59:
				if(dlg2 == 0){
					return "* Hey there!/";
				}else if(dlg2 == 1){
					return "* Sorry about the mess.&Getting you guys here&was quite hard./"
				}else if(dlg2 == 2){
					return "*................&*Wh-what......../"
				}else if(dlg2 == 3){
					return "* Hm? What's with that&expression?/"
				}else if(dlg2 == 4){
					return "* I thought you would be&able to figure out&about..."
				}else if(dlg2 == 5){
					return "* ...but.....&....h-how..."
				}else if(dlg2 == 6){
					return "* Anyway, I should show&you a little area I&have set up for you!/"
				}else if(dlg2 == 7){
					return "* Enjoy!/"
				}
				break;
		}
	}
}