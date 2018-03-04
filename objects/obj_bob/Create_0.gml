/// @description Initialise Bob
event_inherited();

randomize();
p1 = x;
p2 = x+106;
move = 1;


//-------DIALOGUE STUFF

myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "BOB";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue