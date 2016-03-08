///scr_dialogue_behavior(autocontinue, mouseskip, keyboard)

//Customizes the behavior for the tree. Should be used within the setup to change behavior of tree.

//  autocontinue    = Boolean if dialogue should automatically continue (True) or not (False).
//  mouseskip       = Boolean if left-clicking should cause skipping of dialogue (True) or not (False).
//  keyboard        = Boolean if you should be able to navigate choices with keyboard (True) or not (False).

//Converts arguments to locals.
var autocontinue = argument0;
var mouseskip = argument1;
var keyboard = argument2;

//Setups variables on tree.
tree.autocontinue = autocontinue;
tree.mouseskip = mouseskip;
tree.keyboard = keyboard;
