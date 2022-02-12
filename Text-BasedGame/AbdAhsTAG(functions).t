%
%Filename       : <AbdAhsTAG(functions)>
%Program        : Word based game(functions).
%Outline        : program. one or more sentences
%Programmer     : <Ahsan Abdullah>
%Class          : Class/Section (Mr.Sze
%Due Date       : <11/14/2018>
%


% ------------------Rules----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------
function rules : string
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
    result " "
end rules

% ------------------HOME----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------
function home : string
put "You are in front of your new house"
put "there are four paths which spring from here"
put "each path seems to go to a certain direction"
put "(north, east, south and west)"
put "You are free to go anywhere you like!"
result " "
end home

% ------------------SOUTH----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------

function south : string
    put "You are at a volcano region"
    put "there is an open field"
    put "you see a staircase leading underground"
    result " "
end south

function southeast : string
    put "There is a cliff"
    put "you have arrived at a dead end"
    put "if you go any further you will fall"
    result " "
end southeast

function southwest : string
    put "You are very close to the volcano"
    put "It seems safe right now"
    put "you see a note, it looks more like a letter"
    put "it is stuck to the ground with a dagger"
    put "you try to remove the dagger but can't, it wont move"
    put " "
    put "do you want to read the note/letter? (type 'yes' or 'no')"    
    result " "
end southwest

function southchestroom : string
    put "You are in a room"
    put "there is a chest"
    put " "
    put "do you want to try to open the chest? (type 'yes' or 'no')"
    result " "
end southchestroom

% ------------------EAST----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------

function east : string
    put "You are in a forest"
    put "there are trees everywhere"
    put "you can hear noise further down the path"
    result " "
end east

function eastnorth : string
    put "You are still in the forest"
    put "however there is a large tree in front of you"
    put "it is isolated from the rest"
    put "there is a sparkling note attached to it"
    put " "
    put "would you like to read the note? (type 'yes' or 'no')"    
    result " "
end eastnorth

function eastsouth : string
    put "You are still in the forest"
    put "there is a gleaming orb near you"
    put " "
    put "would you like to pick it up? (type 'yes' or 'no')"
    result " "
end eastsouth

function eastdragonarea : string
    put "A wild dragon is on a rampage"
    put "you might want to stop it"
    put "if only you had a sword...."
    put " "
    put "do you want to try to stop the dragon? (type 'yes' or 'no')"
    result " "
end eastdragonarea

% ------------------West----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------

function west : string
    put "You are at a farm"
    put "there is a barn in front of you"
    put "everything seems pretty normal.."
    result " "
end west

function westnorth : string
    put "You went to your right"
    put "there is nothing much here"
    put "however you spot a haystack"
    put " "
    put "do you want to examine the haystack? (type 'yes' or 'no')"
    result " "
end westnorth

function westsouth : string
    put "There is an open field"
    put "you see a farmer"
    put "he tells you, 'A few days ago I went to a forest"
    put "but couldnt go further because there was a"
    put "monster. Someone needs to stop it!'"
    put " "
    put "do you want to further talk to the farmer? (type 'yes' or 'no')"
    result " "
end westsouth

function westinsidebarn : string
    put "you are inside the barn"
    put "there is a small box"
    put "do you want to examine the box? (type 'yes' or 'no')"
    result " "
end westinsidebarn

% ------------------North----------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------

function north : string
    put "You went inside an abandoned house"
    put "it is pretty dark but a few candles are on"
    put "you can see a bedroom"
    put "you can see a kitchen"
    put "you can see a closet"
    result " "
end north

function northeast : string
    put "You are inside a bedroom"
    put "there is a strange vibe"
    put "there are portraits everywhere"
    put "you check out a desk and find a note there"
    put " "
    put "would you like to read the note? (type 'yes' or 'no')"
    result " "
end northeast

function northwest : string
put "You are inside a kitchen"
put "the kitchen is empty"
put " "
put "would you like to search further (type 'yes' or 'no')?"
result " "
end northwest

function northcloset : string
    put "You entered the closet"
    put "it's very dark inside"
    put " "
    put "would you like to search further? (type 'yes' or 'no')"   
    result " "
end northcloset

%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------

%BACK
function back : string
put "you have gone back"
result " "
end back

%FAR

function far : string
put "You cannot go further"
result " "
end far

