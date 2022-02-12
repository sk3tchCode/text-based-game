%
%Filename       : <AbdAhsTAG(procedures)>
%Program        : Word based game(procedures).
%Outline        : program. one or more sentences
%Programmer     : <Ahsan Abdullah>
%Class          : Class/Section (Mr.Sze
%Due Date       : <11/14/2018>
%

%ALL THE PROCEDURES ARE HERE

%ALL IMPORTANT VALUES, THIS TELLS THE GAME IF THE USER HAS OBTAINED SOMETHING OR NOT
var keyvalue, chestvalue, swordvalue, dragonvalue, orbvalue1, orbvalue2, orbvalue3, orbvalue4 : int := 0
%related to the key
var keyexit, keyanswer : string := " "
%related to the chest
var chestanswer, chestexit : string := " "
%related to the sword
var swordanswer, swordexit, swordquestionanswer : string := " "
%related to the dragon fight
var dragonanswer, dragonanswervalue : string := " "
%Related to orbs
var orbanswer1, orbanswer2, orbanswer3, farmeranswer : string := " "
%Related to orbs
var orbquestionanswer1, orbquestionanswer2, orbquestionanswer3 : string := " "
%Related to orbs
var orbexit1, orbexit2, orbexit3, farmerexit : string := " "
%LETTER IN THE BEDROOM
var letteranswer, letterexit : string := " "
%LARGE TREE NOTE (Shows the inventory)
var treenoteanswer, treeexit : string := " "
%FOR THE VOLCANO NOTE
var volcanoexit, volcanonoteanswer : string := " "




%FOR THE CHEST
procedure chest
    loop
	chestexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	get chestanswer
	if chestanswer = "yes" then
	    chestexit := "exitchest"
	    if keyvalue = 1 then
		put "You opened the chest and found a teleporter!"
		put " "
		put "go back home and you will win and beat the game,"
		put "then show the wizard that you are smart!"
		chestvalue := 1
	    else
		put "You do not have the key."
	    end if
	else
	    if chestanswer = "no" then
		chestexit := "exitchest"
		put "You did not open the chest..."
	    else
		put "Incorrect Answer"
	    end if
	end if
	exit when chestexit = "exitchest"
    end loop
end chest

%FOR PICKING UP THE SWORD
procedure sword
    if swordvalue = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    swordexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get swordanswer
	    if swordanswer = "yes" then
		swordexit := "exitsword"
		put "You found a magical sword!"
		put "The sword is alive!"
		put "It asks you a question"
		put "otherwise it won't let you pick it up"
		put " "
		put "What is the most played PC game right now? (don't put any spaces or capitals)"
		get swordquestionanswer
		if swordquestionanswer = "leagueoflegends" then
		    swordvalue := 1
		    put "You picked up the sword!"
		else
		    put "Incorrect!"
		end if
	    else
		if swordanswer = "no" then
		    swordexit := "exitsword"
		    put "Well you didnt search further..."
		else
		    put "Incorrect Answer"
		end if
	    end if
	    exit when swordexit = "exitsword"
	end loop
    else
	put "you already collected the sword!"
    end if
end sword

%FOR THE DRAGON FIGHT
procedure dragon
    if dragonvalue = 0 then %SO THE GAME ONLY ASKS YOU TO FIGHT THE DRAGON IF YOU HAVEN'T ALREADY
	loop
	    dragonanswervalue := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get dragonanswer
	    if dragonanswer = "yes" then
		dragonanswervalue := "exitdragon"
		if swordvalue = 1 then
		    put "You scared the dragon with your sword and defeated it"
		    put "the dragon probably won't be a threat in the future"
		    dragonvalue := 1
		else
		    put "You don't have a weapon"
		    put "how can you possibly think of defeating the dragon"
		end if
	    else
		if dragonanswer = "no" then
		    dragonanswervalue := "exitdragon"
		    put "You did not stop the dragon..."
		else
		    put "Incorrect Answer"
		end if
	    end if
	    exit when dragonanswervalue = "exitdragon"
	end loop
    else
	put "you already defeated the dragon!"
    end if
end dragon

%FOR THE FIRST ORB
procedure kitchenorb1
    if orbvalue1 = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    orbexit1 := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get orbanswer1
	    if orbanswer1 = "yes" then
		orbexit1 := "orbexit1"
		put "You found a mysterious orb!"
		put "however you must answer this question first to collect it:"
		put "Which chess piece can move one step in any direction. (no spaces or capitals)"
		get orbquestionanswer1
		if orbquestionanswer1 = "king" then
		    put "You collected the orb!"
		    orbvalue1 := 1
		else
		    put "Incorrect!"
		end if
	    else
		if orbanswer1 = "no" then
		    orbexit1 := "orbexit1"
		    put "You did not search further"
		else
		    put "Incorrect Answer"
		end if
	    end if
	    exit when orbexit1 = "orbexit1"
	end loop
    else
	put "you already collected the orb!"
    end if
end kitchenorb1

%FOR THE SECOND ORB
procedure forestorb2
    if orbvalue2 = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    orbexit2 := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get orbanswer2
	    if orbanswer2 = "yes" then
		orbexit2 := "orbexit2"
		put "You found a mysterious orb!"
		put "however you must answer this question first to collect it:"
		put "Which country produces the most forestry? (no spaces or capitals)"
		get orbquestionanswer2
		if orbquestionanswer2 = "canada" then
		    put "You collected the orb!"
		    orbvalue2 := 1
		else
		    put "Incorrect!"
		end if
	    else
		if orbanswer2 = "no" then
		    orbexit2 := "orbexit2"
		    put "You left the orb alone..."
		else
		    put "Incorrect Answer"
		end if
	    end if
	    exit when orbexit2 = "orbexit2"
	end loop
    else
	put "you already collected the orb!"
    end if
end forestorb2

%FOR THE FOURTH ORB
procedure farmerorb4
    if orbvalue4 = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    farmerexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get farmeranswer
	    if farmeranswer = "yes" then
		farmerexit := "farmexit4"
		if dragonvalue = 1 then
		    put "Wow you defeated the dragon!? As a token of appreciation"
		    put "here's is a magical orb I found this morning when I was harvesting"
		    orbvalue4 := 1
		else
		    put "I hope someone stops the dragon..."
		end if
	    else
		if farmeranswer = "no" then
		    put "You did not further talk to the farmer"
		    farmerexit := "farmexit4"
		else
		    put "Incorrect answer"
		end if
	    end if
	    exit when farmerexit = "farmexit4"
	end loop
    else
	put "you already collected the orb!"
    end if
end farmerorb4

%FOR THE THIRD ORB
procedure barnorb3
    if orbvalue3 = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    orbexit3 := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get orbanswer3
	    if orbanswer3 = "yes" then
		orbexit3 := "orbexit3"
		put "You found a mysterious orb!"
		put "however you must answer this question first to collect it:"
		put "What is the planet in fifth place from the sun? (no spaces or capitals)"
		get orbquestionanswer3
		if orbquestionanswer3 = "jupiter" then
		    put "You collected the orb!"
		    orbvalue3 := 1
		else
		    put "Incorrect!"
		end if
	    else
		if orbanswer3 = "no" then
		    put "You left the box alone..."
		    orbexit3 := "orbexit3"
		else
		    put "Incorrect answer"
		end if
	    end if
	    exit when orbexit3 = "orbexit3"
	end loop
    else
	put "you already collected the orb!"
    end if
end barnorb3

%FOR THE BEDROOM LETTER/NOTE
procedure bedroomletter
    loop
	letterexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	get letteranswer
	if letteranswer = "yes" then
	    letterexit := "exitletter"
	    put "********************************"
	    put "There is only one way to get out of this world..."
	    put "you must find all four orbs..."
	    put "the key lies in a haystack, however the key is surrounded by a forcefield..."
	    put "the key is only visible to those who have collected all four of the mysterious"
	    put "orbs..."
	    put "once you get the key, find and open the chest..."
	    put "inside you'll find......"
	    put " "
	    put "********************************"
	    put "HERE ARE THE RULES IF YOU FORGOT!"
	    put "Press 'n' to go north"
	    put "Press 'e' to go east"
	    put "Press 's' to go south"
	    put "Press 'w' to go west"
	    put " "
	    put "some places might ask you a yes or no question"
	    put "with instances like these, you will be told to"
	    put "type 'yes' or 'no'"
	    put " "
	    put "do not answer in capitals"
	    put "don't put any spaces"
	    put " "
	    put "(THERE IS A SIMILAR NOTE NEAR A VOLCANO"
	    put " "
	    put "********************************"
	else
	    if letteranswer = "no" then
		letterexit := "exitletter"
		put "you did not read the letter"
	    else
		put "Incorrect Answer"
	    end if
	end if
	exit when letterexit = "exitletter"
    end loop
end bedroomletter


%FOR FINDING THE KEY IN THE HAYSTACK
procedure haystackkey
    if keyvalue = 0 then %SO THE GAME ONLY ASKS YOU TO SEARCH FURTHER/PICK SOMETHING UP IF YOU HAVEN'T ALREADY
	loop
	    keyexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	    get keyanswer
	    if keyanswer = "yes" then
		keyexit := "keyexit"
		if orbvalue1 = 1 then
		    if orbvalue2 = 1 then
			if orbvalue3 = 1 then
			    if orbvalue4 = 1 then
				keyvalue := 1
				orbvalue1 := 4
			    end if
			end if
		    end if
		end if
		if orbvalue1 = 4 then
		    put "Although with difficulty, you somehow found a key!"
		    put " "
		else
		    put "You didn't find anything..."
		    put "maybe you should come back later"
		end if
	    else
		if keyanswer = "no" then
		    keyexit := "keyexit"
		    put "You did not search inside the haystack"
		else
		    put "Incorrect Answer"
		end if
	    end if
	    exit when keyexit = "keyexit"
	end loop
    else
	put "You have already searched the haystack"
	put "and found the key!"
    end if
end haystackkey

%FOR THE NOTE AT THE LARGE TREE (IT SHOWS YOU THE USER'S INVENTORY
procedure largetreenote
    loop
	treeexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	get treenoteanswer
	if treenoteanswer = "yes" then
	    put "********************************"
	    put "YOUR INVENTORY:"
	    put " "
	    treeexit := "treeexit"
	    if orbvalue1 >= 1 then
		put "Mysterious Orb #1"
		put " "
	    end if
	    if orbvalue2 >= 1 then
		put "Mysterious Orb #2"
		put " "
	    end if
	    if orbvalue3 >= 1 then
		put "Mysterious Orb #3"
		put " "
	    end if
	    if orbvalue4 >= 1 then
		put "Mysterious Orb #4"
		put " "
	    end if
	    if keyvalue = 1 then
		put "Key"
		put " "
	    end if
	    if swordvalue = 1 then
		put "Sword"
		put " "
	    end if
	    put "********************************"
	    put "(The note shows you your inventory, (what you have) )"
	else
	    if treenoteanswer = "no" then
		treeexit := "treeexit"
		put "You did not read the note..."
	    else
		put "Incorrect Answer"
	    end if
	end if
	exit when treeexit = "treeexit"
    end loop
end largetreenote


%FOR THE NOTE AT THE VOLCANO
procedure volcanonote
    loop
	volcanoexit := " " %SO THE PROCEDURE DOES NOT AUTOMATICALLY EXIT THE SECOND TIME YOU RUN IT
	get volcanonoteanswer
	if volcanonoteanswer = "yes" then
	    volcanoexit := "volcanoexit"
	    put "********************************"
	    put "There is only one way to get out of this world..."
	    put "you must find all four orbs..."
	    put "the key lies in a haystack, however the key is surrounded by a forcefield..."
	    put "the key is only visible to those who have collected all four of the mysterious"
	    put "orbs..."
	    put "once you get the key, find and open the chest..."
	    put "inside you'll find......"
	    put " "
	    put "********************************"
	    put "HERE ARE THE RULES IF YOU FORGOT!"
	    put "Press 'n' to go north"
	    put "Press 'e' to go east"
	    put "Press 's' to go south"
	    put "Press 'w' to go west"
	    put " "
	    put "some places might ask you a yes or no question"
	    put "with instances like these, you will be told to"
	    put "type 'yes' or 'no'"
	    put " "
	    put "do not answer in capitals"
	    put "don't put any spaces"
	    put " "
	    put "(THERE IS A SIMILAR NOTE IN THE BEDROOM OF AN ABANDONED HOUSE)"
	    put "********************************"
	else
	    if volcanonoteanswer = "no" then
		volcanoexit := "volcanoexit"
		put "You did not read the note..."
	    else
		put "Incorrect Answer"
	    end if
	end if
	exit when volcanoexit = "volcanoexit"
    end loop
end volcanonote







