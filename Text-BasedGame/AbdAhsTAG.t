%
%Filename       : <AbdAhsTAG>
%Program        : Word based game. You can go north, east, south and west.
%Outline        : program. one or more sentences
%Programmer     : <Ahsan Abdullah>
%Class          : Class/Section (Mr.Sze
%Due Date       : <11/14/2018>
%


include "AbdAhsTAG(functions).t"
include "AbdAhsTAG(procedures).t"

%FOR ERROR TRAPPING
const cunderstand := "Incorrect Answer"
%FOR THE USER INPUT (Only 5 are used)
var sanswer : array 1 .. 10 of string
%FOR THE EXITS
var iexit, iexit2, iexit3, iexit4, iexit5, iexitfinal : int := 0
var iexitspecial : int := 0
%FOR THE INTRO
var sfirstanswer : string := " "
%FOR THE INTRO RULES
var srulesanswer : string := " "
%FOR THE PICTURES
var ipicture : int := Pic.FileNew ("Title.bmp")
var ipicture2 : int := Pic.FileNew ("First.bmp")
var ipicture3 : int := Pic.FileNew ("Second.bmp")
var ipicturesecondfinal : int := Pic.FileNew ("FirstEnd.bmp")
var ipicturefinal : int := Pic.FileNew ("SecondEnd.bmp")
%Fonts
var ichillerfont, ijokerfont : int
ichillerfont := Font.New ("chiller:80")
ijokerfont := Font.New ("joker:80")
%Beginning.
Pic.Draw (ipicture, 0, 0, 0)
Font.Draw ("Trapped!", 350, 150, ichillerfont, blue)
delay (5000)
%Beginning pictures to show what happened
cls
Pic.Draw (ipicture2, 160, 0, 0)
delay (3000)
cls
Pic.Draw (ipicture3, 0, 0, 0)
delay (3000)
cls

%FOR THE INTRODUCTION
put "Five minutes ago, you were in an argument with an old man"
delay (300)
put "he was actually a wizard..."
delay (300)
put "something about testing your knowledge came up in your conversation"
delay (300)
put "to test your knowledge, the wizard puts you into another world"
delay (300)
put "you are trapped!"
delay (300)
put "you must find a way out or else you'll be trapped in here forever!"
put " "
delay (300)
put "you were given some clues:"
delay (300)
put "To find out how to get out you must read a letter"
put "the wizard left for you at a bedroom in an abandoned house"
put "or in the south, near a volcano"
put "you are advised to start your adventure in the north"
put "however you are free to go anywhere you like!"
delay (500)
put " "
put " "
put " "
put "type 'continue' to start the game"
loop
    get sfirstanswer
    if sfirstanswer = "continue" then
	put "started!"
	delay (300)
	cls
    else
	put "It seems as if you don't want to play"
	put "please close the program if you don't wish to play"
	put " "
    end if
    exit when sfirstanswer = "continue"
end loop

%FOR THE RULES IN THE BEGINNING
loop
    put "Here are the rules:"
    put " "
    delay (1000)
    put rules
    put "After you answer a question incorrectly, you may go back and go to that level again"
    put "if you do, you may answer the question again"
    put " "
    put "if you ever forget the rules, you may"
    put "go to the abandoned house in the north"
    put "and read a letter in the bedroom"
    put "or go to the south, there is also an identical letter/note there"
    put " "
    delay (3000)
    put "do you understand the rules now? (type 'yes' if you understand the rules)"
    get srulesanswer
    if srulesanswer = "yes" then
	put "Great!"
	delay (500)
	cls
    end if
    exit when srulesanswer = "yes"
end loop

loop

    %THE FIRST LAYER ANSWER
    put home
    loop
	iexit := 0
	get sanswer (1)
	if sanswer (1) = "n" then
	    put north
	    iexit := 1
	else
	    if sanswer (1) = "e" then
		put east
		iexit := 1
	    else
		if sanswer (1) = "s" then
		    put south
		    iexit := 1
		else
		    if sanswer (1) = "w" then
			put west
			iexit := 1
		    else
			put cunderstand
		    end if
		end if
	    end if
	end if
	exit when iexit = 1
    end loop

    %THE SECOND LAYER ANSWER
    loop
	%IF THE FIRST ANSWER WAS NORTH
	iexit2 := 0
	% this is done because if this has to re start the game wont automatically error trap because the value is already 2, so in order for the loop to work the value must begin with 0 (This is a reoccuring pattern for all the directions below)
	get sanswer (2)
	if sanswer (1) = "n" then
	    if sanswer (2) = "e" then
		put northeast
		bedroomletter %BEDROOM LETTER
		iexit2 := 2
	    else
		if sanswer (2) = "w" then
		    put northwest
		    kitchenorb1 %ORB #1 THE KITCHEN ORB
		    iexit2 := 2
		else
		    if sanswer (2) = "n" then
			put northcloset
			sword %SWORD PICKUP
			iexit2 := 2
		    else
			if sanswer (2) = "s" then
			    put back
			    %IF THE PERSON GOES BACK, THE BEGINNING LOOP REOCCURS (This is a reoccuring pattern for all the directions below)
			    put home
			    loop
				iexit := 0
				get sanswer (1)
				if sanswer (1) = "n" then
				    put north
				    iexit := 1
				else
				    if sanswer (1) = "e" then
					put east
					iexit := 1
				    else
					if sanswer (1) = "s" then
					    put south
					    iexit := 1
					else
					    if sanswer (1) = "w" then
						put west
						iexit := 1
					    else
						put cunderstand
					    end if
					end if
				    end if
				end if
				exit when iexit = 1
			    end loop
			    %THIS LOOP DOES NOT EXIT BECAUSE iexit2 does not EQUAL to 2 (This is a reoccuring pattern for all the directions below)
			else
			    put cunderstand
			end if
		    end if
		end if
	    end if
	else
	    %IF THE FIRST ANSWER WAS EAST
	    if sanswer (1) = "e" then
		if sanswer (2) = "n" then
		    put eastnorth
		    largetreenote %INVENTORY"
		    iexit2 := 2
		else
		    if sanswer (2) = "s" then
			put eastsouth
			forestorb2 %SECOND ORB
			iexit2 := 2
		    else
			if sanswer (2) = "e" then
			    put eastdragonarea
			    dragon %DRAGON FIGHT
			    iexit2 := 2
			else
			    if sanswer (2) = "w" then
				put back
				put home
				loop
				    iexit := 0
				    get sanswer (1)
				    if sanswer (1) = "n" then
					put north
					iexit := 1
				    else
					if sanswer (1) = "e" then
					    put east
					    iexit := 1
					else
					    if sanswer (1) = "s" then
						put south
						iexit := 1
					    else
						if sanswer (1) = "w" then
						    put west
						    iexit := 1
						else
						    put cunderstand
						end if
					    end if
					end if
				    end if
				    exit when iexit = 1
				end loop
			    else
				put cunderstand
			    end if
			end if
		    end if
		end if
	    else
		%IF THE FIRST ANSWER WAS SOUTH
		if sanswer (1) = "s" then
		    if sanswer (2) = "e" then
			put southeast
			iexit2 := 2
		    else
			if sanswer (2) = "w" then
			    put southwest
			    volcanonote %FOR THE NOTE AT THE VOLCANO
			    iexit2 := 2
			else
			    if sanswer (2) = "s" then
				put southchestroom
				chest %CHEST OPEN
				iexit2 := 2
			    else
				if sanswer (2) = "n" then
				    put back
				    put home
				    loop
					iexit := 0
					get sanswer (1)
					if sanswer (1) = "n" then
					    put north
					    iexit := 1
					else
					    if sanswer (1) = "e" then
						put east
						iexit := 1
					    else
						if sanswer (1) = "s" then
						    put south
						    iexit := 1
						else
						    if sanswer (1) = "w" then
							put west
							iexit := 1
						    else
							put cunderstand
						    end if
						end if
					    end if
					end if
					exit when iexit = 1
				    end loop
				else
				    put cunderstand
				end if
			    end if
			end if
		    end if
		else
		    %IF THE FIRST ANSWER WAS WEST
		    if sanswer (1) = "w" then
			if sanswer (2) = "n" then
			    put westnorth
			    haystackkey %HAYSTACK WITH THE KEY
			    iexit2 := 2
			else
			    if sanswer (2) = "s" then
				put westsouth
				farmerorb4 %FOURTH ORB
				iexit2 := 2
			    else
				if sanswer (2) = "w" then
				    put westinsidebarn
				    barnorb3 %THIRD ORB
				    iexit2 := 2
				else
				    if sanswer (2) = "e" then
					put back
					put home
					loop
					    iexit := 0
					    get sanswer (1)
					    if sanswer (1) = "n" then
						put north
						iexit := 1
					    else
						if sanswer (1) = "e" then
						    put east
						    iexit := 1
						else
						    if sanswer (1) = "s" then
							put south
							iexit := 1
						    else
							if sanswer (1) = "w" then
							    put west
							    iexit := 1
							else
							    put cunderstand
							end if
						    end if
						end if
					    end if
					    exit when iexit = 1
					end loop
				    else
					put cunderstand
				    end if
				end if
			    end if
			end if
		    end if
		end if
	    end if
	end if
	exit when iexit2 = 2 %THE EXIT FOR THE SECOND LOOP
    end loop

    %THE THIRD LAYER ANSWER
    loop
	iexit3 := 0
	get sanswer (3)

	%FOR NORTH----------------------------------
	if sanswer (1) = "n" then
	    %NORTH EAST,NORTH, OR WEST------------------
	    % NORTH NORTH
	    if sanswer (2) = "n" then
		if sanswer (3) = "s" then
		    put back
		    put north
		    iexit3 := 3
		else
		    if sanswer (3) = "n" then
			put far
		    else
			if sanswer (3) = "e" then
			    put far
			else
			    if sanswer (3) = "w" then
				put far
			    else
				put
				    cunderstand
			    end if
			end if
		    end if
		end if
		%NORTH EAST

	    else
		if sanswer (2) = "e" then
		    if sanswer (3) = "w" then
			put back
			put north
			iexit3 := 3
		    else
			if sanswer (3) = "n" then
			    put far
			else
			    if sanswer (3) = "e" then
				put far
			    else
				if sanswer (3) = "e" then
				    put far
				else
				    put
					cunderstand
				end if
			    end if
			end if
		    end if
		    %NORTH WEST
		else
		    if sanswer (2) = "w" then
			if sanswer (3) = "e" then
			    put back
			    put north
			    iexit3 := 3
			else
			    if sanswer (3) = "n" then
				put far
			    else
				if sanswer (3) = "e" then
				    put far
				else
				    if sanswer (3) = "w" then
					put far
				    else
					put
					    cunderstand
				    end if
				end if
			    end if
			end if

		    end if
		end if
	    end if
	    %FOR EAST----------------------------------
	else
	    if sanswer (1) = "e" then
		%EAST, EAST,NORTH or SOUTH------------------
		% EAST EAST
		if sanswer (2) = "e" then
		    if sanswer (3) = "w" then
			put back
			put east
			iexit3 := 3
		    else
			if sanswer (3) = "n" then
			    put far
			else
			    if sanswer (3) = "e" then
				put far
			    else
				if sanswer (3) = "s" then
				    put far
				else
				    put
					cunderstand
				end if
			    end if
			end if
		    end if
		    %EASTNORTH

		else
		    if sanswer (2) = "n" then
			if sanswer (3) = "s" then
			    put back
			    put east
			    iexit3 := 3
			else
			    if sanswer (3) = "n" then
				put far
			    else
				if sanswer (3) = "e" then
				    put far
				else
				    if sanswer (3) = "w" then
					put far
				    else
					put
					    cunderstand
				    end if
				end if
			    end if
			end if
			%EASTSOUTH
		    else
			if sanswer (2) = "s" then
			    if sanswer (3) = "n" then
				put back
				put east
				iexit3 := 3
			    else
				if sanswer (3) = "s" then
				    put far
				else
				    if sanswer (3) = "e" then
					put far
				    else
					if sanswer (3) = "w" then
					    put far
					else
					    put
						cunderstand
					end if
				    end if
				end if
			    end if

			end if
		    end if
		end if
		%FOR SOUTH----------------------------------
	    else
		if sanswer (1) = "s" then
		    %SOUTH,SOUTH,EAST OR WEST------------------
		    % SOUTH SOUTH
		    if sanswer (2) = "s" then
			if sanswer (3) = "n" then
			    put back
			    put south
			    iexit3 := 3
			else
			    if sanswer (3) = "s" then
				put far
			    else
				if sanswer (3) = "e" then
				    put far
				else
				    if sanswer (3) = "w" then
					put far
				    else
					put
					    cunderstand
				    end if
				end if
			    end if
			end if
			%SOUTH EAST

		    else
			if sanswer (2) = "e" then
			    if sanswer (3) = "w" then
				put back
				put south
				iexit3 := 3
			    else
				if sanswer (3) = "n" then
				    put far
				else
				    if sanswer (3) = "e" then
					put far
				    else
					if sanswer (3) = "s" then
					    put far
					else
					    put
						cunderstand
					end if
				    end if
				end if
			    end if
			    %SOUTH WEST
			else
			    if sanswer (2) = "w" then
				if sanswer (3) = "e" then
				    put back
				    put south
				    iexit3 := 3
				else
				    if sanswer (3) = "n" then
					put far
				    else
					if sanswer (3) = "s" then
					    put far
					else
					    if sanswer (3) = "w" then
						put far
					    else
						put
						    cunderstand
					    end if
					end if
				    end if
				end if

			    end if
			end if
		    end if

		    %FOR WEST----------------------------------
		else
		    if sanswer (1) = "w" then
			%WEST,WEST,NORTH or SOUTH------------------
			% WEST WEST
			if sanswer (2) = "w" then
			    if sanswer (3) = "e" then
				put back
				put west
				iexit3 := 3
			    else
				if sanswer (3) = "n" then
				    put far
				else
				    if sanswer (3) = "w" then
					put far
				    else
					if sanswer (3) = "s" then
					    put far
					else
					    put
						cunderstand
					end if
				    end if
				end if
			    end if
			    %WESTNORTH

			else
			    if sanswer (2) = "n" then
				if sanswer (3) = "s" then
				    put back
				    put west
				    iexit3 := 3
				else
				    if sanswer (3) = "n" then
					put far
				    else
					if sanswer (3) = "e" then
					    put far
					else
					    if sanswer (3) = "w" then
						put far
					    else
						put
						    cunderstand
					    end if
					end if
				    end if
				end if
				%WESTSOUTH
			    else
				if sanswer (2) = "s" then
				    if sanswer (3) = "n" then
					put back
					put west
					iexit3 := 3
				    else
					if sanswer (3) = "s" then
					    put far
					else
					    if sanswer (3) = "e" then
						put far
					    else
						if sanswer (3) = "w" then
						    put far
						else
						    put
							cunderstand
						end if
					    end if
					end if
				    end if

				end if
			    end if
			end if
		    end if
		end if
	    end if
	end if
	exit when iexit3 = 3
    end loop

    %FINAL FOURTH LAYER ANSWER
    loop
	loop
	    iexitfinal := 0
	    iexit4 := 0
	    iexit5 := 0
	    %GETTING THE FOURTH ANSWER
	    get sanswer (4)
	    %FOR NORTH FINAL
	    if sanswer (1) = "n" then
		if sanswer (4) = "n" then
		    put northcloset
		    sword %FOR SWORD
		    iexit4 := 4
		    %********************************************
		    loop
			%THESE LOOPS INSIDE ARE IF THE USER DOES NOT GO BACK HOME (IT IS THE SAME FOR ALL THE ONES UNDERNEATH, FOR EVERY CHOICE THE USER CAN MAKE)
			get sanswer (5)
			iexit5 := 0
			if sanswer (5) = "s" then
			    put back
			    put north
			    iexit5 := 5
			else
			    if sanswer (5) = "n" then
				put far
			    else
				if sanswer (5) = "e" then
				    put far
				else
				    if sanswer (5) = "w" then
					put far
				    else
					put
					    cunderstand
				    end if
				end if
			    end if
			end if
			exit when iexit5 = 5
		    end loop
		    %********************************************
		else
		    if sanswer (4) = "e" then
			put northeast
			bedroomletter %BEDROOM LETTER

			%********************************************
			loop
			    get sanswer (5)
			    iexit5 := 0
			    if sanswer (5) = "w" then
				put back
				put north
				iexit5 := 5
			    else
				if sanswer (5) = "n" then
				    put far
				else
				    if sanswer (5) = "e" then
					put far
				    else
					if sanswer (5) = "s" then
					    put far
					else
					    put
						cunderstand
					end if
				    end if
				end if
			    end if
			    exit when iexit5 = 5
			end loop
			%********************************************

		    else
			if sanswer (4) = "w" then
			    put northwest
			    kitchenorb1 %ORB #1 THE KITCHEN ORB

			    %********************************************
			    loop
				get sanswer (5)
				iexit5 := 0
				if sanswer (5) = "e" then
				    put back
				    put north
				    iexit5 := 5
				else
				    if sanswer (5) = "n" then
					put far
				    else
					if sanswer (5) = "s" then
					    put far
					else
					    if sanswer (5) = "w" then
						put far
					    else
						put
						    cunderstand
					    end if
					end if
				    end if
				end if
				exit when iexit5 = 5
			    end loop
			    %********************************************

			else
			    if sanswer (4) = "s" then
				iexit4 := 4
				iexitfinal := 1 %FINAL EXIT THEN THE LOOP WILL END AND RE START
				put back
			    else
				put cunderstand
			    end if
			end if
		    end if
		end if

		%FOR EAST FINAL

	    else
		if sanswer (1) = "e" then
		    if sanswer (4) = "n" then
			put eastnorth
			largetreenote %INVENTORY"
			%********************************************
			loop
			    get sanswer (5)
			    iexit5 := 0
			    if sanswer (5) = "s" then
				put back
				put east
				iexit5 := 5
			    else
				if sanswer (5) = "n" then
				    put far
				else
				    if sanswer (5) = "e" then
					put far
				    else
					if sanswer (5) = "w" then
					    put far
					else
					    put
						cunderstand
					end if
				    end if
				end if
			    end if
			    exit when iexit5 = 5
			end loop
			%********************************************

		    else
			if sanswer (4) = "e" then
			    put eastdragonarea
			    dragon %


			    %********************************************
			    loop
				get sanswer (5)
				iexit5 := 0
				if sanswer (5) = "w" then
				    put back
				    put east
				    iexit5 := 5
				else
				    if sanswer (5) = "n" then
					put far
				    else
					if sanswer (5) = "e" then
					    put far
					else
					    if sanswer (5) = "s" then
						put far
					    else
						put
						    cunderstand
					    end if
					end if
				    end if
				end if
				exit when iexit5 = 5
			    end loop
			    %********************************************

			else
			    if sanswer (4) = "w" then
				iexit4 := 4
				iexitfinal := 1 %FINAL EXIT THEN THE LOOP WILL END AND RE START
				put back

			    else
				if sanswer (4) = "s" then
				    put eastsouth
				    forestorb2 %SECOND ORB

				    %********************************************
				    loop
					get sanswer (5)
					iexit5 := 0
					if sanswer (5) = "n" then
					    put back
					    put east
					    iexit5 := 5
					else
					    if sanswer (5) = "s" then
						put far
					    else
						if sanswer (5) = "e" then
						    put far
						else
						    if sanswer (5) = "w" then
							put far
						    else
							put
							    cunderstand
						    end if
						end if
					    end if
					end if
					exit when iexit5 = 5
				    end loop
				    %********************************************

				else
				    put cunderstand
				end if
			    end if
			end if
		    end if

		    %FOR SOUTH FINAL

		else
		    if sanswer (1) = "s" then
			if sanswer (4) = "s" then
			    put southchestroom
			    chest %CHEST OPEN
			    %********************************************
			    loop
				get sanswer (5)
				iexit5 := 0
				if sanswer (5) = "n" then
				    put back
				    put south
				    iexit5 := 5
				else
				    if sanswer (5) = "s" then
					put far
				    else
					if sanswer (5) = "e" then
					    put far
					else
					    if sanswer (5) = "w" then
						put far
					    else
						put
						    cunderstand
					    end if
					end if
				    end if
				end if
				exit when iexit5 = 5
			    end loop
			    %********************************************

			else
			    if sanswer (4) = "e" then
				put southeast

				%********************************************
				loop
				    get sanswer (5)
				    iexit5 := 0
				    if sanswer (5) = "w" then
					put back
					put south
					iexit5 := 5
				    else
					if sanswer (5) = "n" then
					    put far
					else
					    if sanswer (5) = "e" then
						put far
					    else
						if sanswer (5) = "s" then
						    put far
						else
						    put
							cunderstand
						end if
					    end if
					end if
				    end if
				    exit when iexit5 = 5
				end loop
				%********************************************

			    else
				if sanswer (4) = "w" then
				    put southwest
				    volcanonote %FOR THE NOTE AT THE VOLCANO

				    %********************************************
				    loop
					get sanswer (5)
					iexit5 := 0
					if sanswer (5) = "e" then
					    put back
					    put south
					    iexit5 := 5
					else
					    if sanswer (5) = "n" then
						put far
					    else
						if sanswer (5) = "s" then
						    put far
						else
						    if sanswer (5) = "w" then
							put far
						    else
							put
							    cunderstand
						    end if
						end if
					    end if
					end if
					exit when iexit5 = 5
				    end loop
				    %********************************************

				else
				    if sanswer (4) = "n" then
					iexit4 := 4
					iexitfinal := 1 %FINAL EXIT THEN THE LOOP WILL END AND RE START
					put back
				    else
					put cunderstand
				    end if
				end if
			    end if
			end if

			%FOR WEST FINAL

		    else
			if sanswer (1) = "w" then
			    if sanswer (4) = "n" then
				put westnorth
				haystackkey %HAYSTACK WITH THE KEY

				%********************************************
				loop
				    get sanswer (5)
				    iexit5 := 0
				    if sanswer (5) = "s" then
					put back
					put west
					iexit5 := 5
				    else
					if sanswer (5) = "n" then
					    put far
					else
					    if sanswer (5) = "e" then
						put far
					    else
						if sanswer (5) = "w" then
						    put far
						else
						    put
							cunderstand
						end if
					    end if
					end if
				    end if
				    exit when iexit5 = 5
				end loop
				%********************************************

			    else
				if sanswer (4) = "e" then
				    iexit4 := 4
				    iexitfinal := 1 %FINAL EXIT THEN THE LOOP WILL END AND RE START
				    put back

				else
				    if sanswer (4) = "w" then
					put westinsidebarn
					barnorb3 %THIRD ORB

					%********************************************
					loop
					    get sanswer (5)
					    iexit5 := 0
					    if sanswer (5) = "e" then
						put back
						put west
						iexit5 := 5
					    else
						if sanswer (5) = "n" then
						    put far
						else
						    if sanswer (5) = "s" then
							put far
						    else
							if sanswer (5) = "w" then
							    put far
							else
							    put
								cunderstand
							end if
						    end if
						end if
					    end if
					    exit when iexit5 = 5
					end loop
					%********************************************

				    else
					if sanswer (4) = "s" then
					    put westsouth
					    farmerorb4 %FOURTH ORB

					    %********************************************
					    loop
						get sanswer (5)
						iexit5 := 0
						if sanswer (5) = "n" then
						    put back
						    put west
						    iexit5 := 5
						else
						    if sanswer (5) = "s" then
							put far
						    else
							if sanswer (5) = "e" then
							    put far
							else
							    if sanswer (5) = "w" then
								put far
							    else
								put
								    cunderstand
							    end if
							end if
						    end if
						end if
						exit when iexit5 = 5
					    end loop
					    %********************************************

					else
					    put cunderstand
					end if
				    end if
				end if
			    end if
			end if
		    end if
		end if
	    end if
	    %THIS LOOP WILL EXIT WHEN THE CONDITIONS ARE MET, THE CONDITIONS WERE MADE SO THAT THE LOOP ONLY EXITS WHEN THE USER GOES BACK TO HOME, THEN THE LOOP RE-STARTS.
	    exit when iexit4 = 4 %this only exit's the first loop, the big loop will still continue until iexitfinal = 1
	end loop
	exit when iexitfinal = 1 %final exit
    end loop
    exit when chestvalue = 1 %everything ends when the chest is opened and the teleporter is found. when the user goes back home the game will end resulting is a "YOU WON" screen
end loop

%THIS IS FOR THE ENDING, WHEN THE USER WINS THE GAME
Font.Draw ("YOU WON!", 150, 130, ichillerfont, red)
delay (4000)
cls
put "Congratulations!"
delay (1000)
%PICTURE1
Pic.Draw (ipicturesecondfinal, 0, 0, 0)
delay (3000)
cls
%PICTURE2(final)
Pic.Draw (ipicturefinal, 0, 0, 0)
delay (3000)
cls
put "You have returned back!"
put "however there is no wizard to be found"
put " "
put "You try to forget what happened.."
delay (7000)
cls
Font.Draw ("THE END", 150, 130, ijokerfont, black)
%I DECIDED NOT TO ADD A SCORE, A WORD GAME LIKE THIS ONE DOESN'T REALLY NEED ONE, SO INSTEAD I ADDED A SCREEN SHOWING WHAT HAPPENED AFTER THE PLAYER WON THE GAME.





