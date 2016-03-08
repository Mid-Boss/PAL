///scr_dialogue_object(data)

//Create dialogue object and sends over information so that it may be dispalyed on screen.
//Also handles creation of the actor object displayed on screen.

//  data          = Data object containing all dialogue data.

//Creates variables.
var data = argument0;
var diabox = tree.diabox;
var xx = diabox.x + 25;
var yy = diabox.y + 20;

//Determines Location.
switch data.location
{
    //Left
    case LEFT:
        var a_xx = 0;
        var a_yy = 100;
        break;
     
    //Right
    case RIGHT:
        var a_xx = 600;
        var a_yy = 100;
        break;
}

//Creates dialogue object.
var dialogue = instance_create(xx, yy, obj_dialogue);

//Creates actor object.
var actor = instance_create(a_xx, a_yy, data.actor);

//Sends over information.
with dialogue
{
    self.diabox = diabox;
    ctr = data.ctr;
    d_id = data.d_id;
    location = data.location;
    self.actor = actor;
    sound = data.sound;
    text = data.text;
    text_length = data.text_length;
    maxlength = data.maxlength;
    spd = data.spd;
    time = data.time;
    font = data.font;
    font_size = data.font_size;
}

//Check for actor at location.
if tree.actors[data.location] != noone
{
    //Check if same type.
    if tree.actors[data.location].object_index = actor.object_index
    {
        //Check if actor is faded in.
        if tree.actors[data.location].alpha <= tree.actors[data.location].limit_lower
        {
            //Updates Variables
            actor.alpha = actor.limit_lower;
            actor.fadeout = false;
        }
    }
    
    //Destroys current actor.
    with tree.actors[data.location]
    {
        instance_destroy();
    }
}

//Stores information to tree.
tree.dialogue = dialogue;
tree.actors[data.location] = actor;
