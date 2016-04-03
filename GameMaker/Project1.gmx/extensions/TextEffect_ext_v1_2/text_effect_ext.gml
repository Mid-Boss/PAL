//============================================================================================================

// te_create ( text, font, visible_at_start, delay_before, duration, delay_after, destroy_at_finish, depth)

#define te_create
{
 var text_object;
 
 text_object=instance_create(0,0,obj_text_effect);
   text_object.text    = argument0;
   text_object.font    = argument1;
   text_object.visible_at_start  = argument2;
   text_object.delay_before      = argument3; 
   text_object.duration          = argument4; 
   text_object.delay_after       = argument5;
   text_object.destroy_at_finish = argument6;    
   text_object.depth             = argument7;
   
   return (text_object); 
}
//============================================================================================================
// te_set_timing ( instance, delay_before, duration, delay_after )
#define te_set_timing
{
 var text_object;
 
 text_object=argument0;
   text_object.delay_before = argument1;
   text_object.duration     = argument2;
   text_object.delay_after  = argument3;

}
//============================================================================================================
// te_set_initial ( instance , x, y, sc_x, sc_y, rot, c1, c2, c3, c4, alpha)
#define te_set_initial
{
var text_object;

text_object = argument0;

text_object.d_array[0,0] = text_object.text; // for whole word
text_object.d_array[0,1] = argument1;
text_object.d_array[0,3] = argument2;
text_object.d_array[0,5] = argument3;
text_object.d_array[0,7] = argument4;
text_object.d_array[0,9] = argument5;
text_object.d_array[0,11] = argument6;
text_object.d_array[0,13] = argument7;
text_object.d_array[0,15] = argument8;
text_object.d_array[0,17] = argument9;
text_object.d_array[0,19] = argument10;

if (text_object.separate_letters==false) { text_object.d_array[0,21] = text_object.delay_before; }

text_object.wave_X_on = false;
text_object.wave_Y_on = false;
text_object.wave_scale_X_on = false;
text_object.wave_scale_Y_on = false;
text_object.wave_rotation_on = false;
text_object.wave_alpha_on = false;

}

//============================================================================================================
// te_set_destination ( instance , +x, +y, +sc_x, +sc_y, +rot, c1, c2, c3, c4, +alpha)
#define te_set_destination
{
var text_object,i;

text_object = argument0;

for (i=0; i<ds_list_size(text_object.d_list); i+=1)
{
//text_object.d_array[i,0] = text_object.text; // for whole word
text_object.d_array[i,2] = argument1; // x
text_object.d_array[i,4] = argument2; // y

text_object.d_array[i,6] = argument3; // image_xscale
text_object.d_array[i,8] = argument4; // image_yscale

text_object.d_array[i,10] = argument5; // image_angle

if (argument6==-1)
 text_object.d_array[i,12] = text_object.d_array[i,11]
  else
   text_object.d_array[i,12] = argument6;

if (argument7==-1)
 text_object.d_array[i,14] = text_object.d_array[i,13]
  else
   text_object.d_array[i,14] = argument7;
   
if (argument8==-1)
 text_object.d_array[i,16] = text_object.d_array[i,15]
  else
   text_object.d_array[i,16] = argument8;
   
if (argument9==-1)
 text_object.d_array[i,18] = text_object.d_array[i,17]
  else
   text_object.d_array[i,18] = argument9;
         

text_object.d_array[i,20] = argument10; // image_alpha

if (text_object.separate_letters==false) { text_object.d_array[i,22]=text_object.delay_before+text_object.duration;}
}

text_object.wave_X_on = false;
text_object.wave_Y_on = false;
text_object.wave_scale_X_on = false;
text_object.wave_scale_Y_on = false;
text_object.wave_rotation_on = false;
text_object.wave_alpha_on = false;

}
//============================================================================================================
// te_set_current_position_as_initial ( instance )
#define te_set_current_position_as_initial
{
var text_object,i;

text_object = argument0;

for (i=0; i<ds_list_size(text_object.d_list); i+=1)
{
text_object.d_array[i,1] = text_object.c_array[i,0]; // x
text_object.d_array[i,3] = text_object.c_array[i,1]; // y
text_object.d_array[i,5] = text_object.c_array[i,2]; // image_xscale 
text_object.d_array[i,7] = text_object.c_array[i,3]; // image_yscale
text_object.d_array[i,9] = text_object.c_array[i,4]; // image_angle
text_object.d_array[i,11] = text_object.c_array[i,5]; // color 1
text_object.d_array[i,13] = text_object.c_array[i,6]; // color 2
text_object.d_array[i,15] = text_object.c_array[i,7]; // color 3
text_object.d_array[i,17] = text_object.c_array[i,8]; // color 4
text_object.d_array[i,19] = text_object.c_array[i,9]; // image_alpha

if (text_object.separate_letters==false) { text_object.d_array[i,22]=text_object.duration;}

}

text_object.wave_X_on = false;
text_object.wave_Y_on = false;
text_object.wave_scale_X_on = false;
text_object.wave_scale_Y_on = false;
text_object.wave_rotation_on = false;
text_object.wave_alpha_on = false;

text_object.destroy_at_finish=true;

}

//============================================================================================================

// te_set_alignment( instance, horisontal , vertical )
#define te_set_alignment
{
var text_object;

text_object = argument0;

text_object.h_align=argument1;
text_object.v_align=argument2;

}

//============================================================================================================
// te_set_shadow( instance, shadow_on, shadow_scale, shadow_shift_x, shadow_shift_y, shadow_color, shadow_alpha )
#define te_set_shadow
{
var text_object;

text_object = argument0;

text_object.shadow_on      = argument1;
text_object.shadow_scale   = argument2;
text_object.shadow_shift_x = argument3;
text_object.shadow_shift_y = argument4;
text_object.shadow_color   = argument5;
text_object.shadow_alpha   = argument6;

}

//============================================================================================================
// te_set_wave_X( instance, wave_X_on, wave_X_amplitude, wave_X_half_periods, wave_X_amplitude_change)
#define te_set_wave_X
{
var text_object,i;

text_object = argument0;

text_object.wave_X_on=argument1;

//i=0; //tmp
for (i=0;i<ds_list_size(text_object.d_list)i+=1)
 {  
   text_object.wave_X_array [i,0]=argument2; // wave_X_amplitude
   text_object.wave_X_array [i,1]=argument3; // wave_X_half_periods
   text_object.wave_X_array [i,2]=argument4; // wave_X_amplitude_change     
 } 

}

//============================================================================================================
// te_set_wave_Y( instance, wave_Y_on, wave_Y_amplitude, wave_Y_half_periods, wave_Y_amplitude_change)
#define te_set_wave_Y
{
var text_object,i;

text_object = argument0;

text_object.wave_Y_on=argument1;

//i=0;// tmp

for (i=0;i<ds_list_size(text_object.d_list);i+=1)
 {
   text_object.wave_Y_array [i,0]=argument2; // wave_Y_amplitude
   text_object.wave_Y_array [i,1]=argument3; // wave_Y_half_periods
   text_object.wave_Y_array [i,2]=argument4; // wave_Y_amplitude_change     
 } 

}

//============================================================================================================
// te_set_wave_scale_X( instance, wave_scale_X_on, wave_scale_X_high, wave_scale_X_low, wave_scale_X_start_position, wave_scale_X_periods)
#define te_set_wave_scale_X
{
var text_object,i;

text_object = argument0;

text_object.wave_scale_X_on=argument1;


for (i=0;i<ds_list_size(text_object.d_list);i+=1)
 {
   text_object.wave_scale_X_array [i,0]=argument2*text_object.d_array[i,5]; // wave_scale_X_high
   text_object.wave_scale_X_array [i,1]=argument3*text_object.d_array[i,5]; // wave_scale_X_low
   text_object.wave_scale_X_array [i,2]=argument4;                          // wave_scale_X_start_position   
   text_object.wave_scale_X_array [i,3]=argument5;                          // wave_scale_X_periods
 } 

}

//============================================================================================================
// te_set_wave_scale_Y( instance, wave_scale_Y_on, wave_scale_Y_high, wave_scale_Y_low, wave_scale_Y_start_position, wave_scale_Y_periods)
#define te_set_wave_scale_Y
{
var text_object,i;

text_object = argument0;

text_object.wave_scale_Y_on=argument1;

//i=0;// tmp

for (i=0;i<ds_list_size(text_object.d_list);i+=1)
 {
   text_object.wave_scale_Y_array [i,0]=argument2*text_object.d_array[i,7]; // wave_scale_Y_high
   text_object.wave_scale_Y_array [i,1]=argument3*text_object.d_array[i,7]; // wave_scale_Y_low
   text_object.wave_scale_Y_array [i,2]=argument4;                          // wave_scale_Y_start_position   
   text_object.wave_scale_Y_array [i,3]=argument5;                          // wave_scale_Y_periods
 } 

}

//============================================================================================================
// te_set_wave_rotation( instance, wave_rotation_on, wave_rotation_high, wave_rotation_amplitude_increment, wave_rotation_start_position, wave_rotation_periods)
#define te_set_wave_rotation
{
var text_object,i;

text_object = argument0;

text_object.wave_rotation_on=argument1;


for (i=0;i<ds_list_size(text_object.d_list);i+=1)
 {
 
   text_object.wave_rotation_array [i,0]=argument2; // wave_rotation_amplitude
   text_object.wave_rotation_array [i,1]=argument3; // wave_rotation_amplitude_increment
   text_object.wave_rotation_array [i,2]=argument4; // wave_rotation_start_position   
   text_object.wave_rotation_array [i,3]=argument5; // wave_rotation_periods
 } 

}

//============================================================================================================
// te_set_wave_alpha( instance, wave_alpha_on, wave_alpha_high, wave_alpha_low, wave_alpha_start_position, wave_alpha_periods)
#define te_set_wave_alpha
{
var text_object,i;

text_object = argument0;

text_object.wave_alpha_on=argument1;

for (i=0;i<ds_list_size(text_object.d_list);i+=1)
 {
   text_object.wave_alpha_array [i,0]=argument2*text_object.d_array[i,19]; // wave_alpha_high
   text_object.wave_alpha_array [i,1]=argument3*text_object.d_array[i,19]; // wave_alpha_low
   text_object.wave_alpha_array [i,2]=argument4;                           // wave_alpha_start_position   
   text_object.wave_alpha_array [i,3]=argument5;                           // wave_alpha_periods
 } 

}

//============================================================================================================
// te_set_sequence( instance, sequence_on, timeline_index, timeline_position )
#define te_set_sequence
{
var text_object,i;

text_object = argument0;

text_object.sequence_on  = argument1;
text_object.timeline     = argument2; 
text_object.timeline_pos = argument3; 

text_object.destroy_at_finish=false;

}

//============================================================================================================
// te_init(instance)
#define te_init
{
var text_object;

text_object=argument0;

 text_object.step=0;
 text_object.d_step=1;

}

//============================================================================================================
// te_pause(instance)
#define te_pause
{
var text_object;

text_object=argument0;

if (instance_exists(text_object))
 if (text_object.d_step==1) {text_object.d_step=0} else {text_object.d_step=1;}

}

//============================================================================================================
// te_separate_letters( instance , interval , order , first_is_closer, hide_at_finish)
// order: 0 - from first to last, 1 - from last to first, 2 -random
#define te_separate_letters
{
var text_object,i,j,letter_duration,X0,Width,tmp_list;

text_object=argument0;

 text_object.interval=argument1;
 text_object.hide_at_finish=argument4;
 
  letter_duration=text_object.duration-(string_length(text_object.text)-1)*text_object.interval;

if (text_object.separate_letters==false)      // convert X coord and other from whole word to separate letters
{
 
 text_object.d_array[0,0]=string_char_at(text_object.text,1);
 
 for (i=2; i<string_length(text_object.text)+1; i+=1)
   {
     text_object.d_array[i-1,0]=string_char_at(text_object.text,i);       
     for (j=2; j<23; j+=1)  {  text_object.d_array[i-1,j] = text_object.d_array[i-2,j];}  
  }

// set X position of letter according to string width
  X0=text_object.d_array[0,1];
   draw_set_font(text_object.font);
  Width= string_width(text_object.text);
  
 text_object.d_array[0,1] = X0-Width*0.5+string_width(text_object.d_array[0,0])*0.5;
   
 for (i=1; i<string_length(text_object.text); i+=1)
   {  
    text_object.d_array[i,1]=text_object.d_array[i-1,1]+(string_width(text_object.d_array[i-1,0])+string_width(text_object.d_array[i,0]))*0.5;
   }
   
 text_object.separate_letters=true;  
}

 
// set sequence ------------------------------------------------------------------------- 
//---------------------------------------------------------------------------------------
ds_list_clear(text_object.d_list);
for (i=0; i<string_length(text_object.text); i+=1)
 {
  if (argument2!=1) { ds_list_add(text_object.d_list,i); }
  if (argument2==1) { ds_list_add(text_object.d_list,(string_length(text_object.text)-1-i));}
 }
  if (argument2==2) {ds_list_shuffle(text_object.d_list);}
  

 for (i=0; i<ds_list_size(text_object.d_list); i+=1) 
  {
     j= ds_list_find_value(text_object.d_list,i);
     text_object.d_array[j,21] = text_object.delay_before+i*text_object.interval;
     text_object.d_array[j,22] = text_object.d_array[j,21]+letter_duration;
  }   

// order of drawing --------------------------------------------------------------------

 if (argument3==true) 
  {
    tmp_list=ds_list_create();
      for (i=0; i<ds_list_size(text_object.d_list); i+=1)  { ds_list_add(tmp_list,ds_list_find_value(text_object.d_list,ds_list_size(text_object.d_list)-i-1));}
      ds_list_copy(text_object.d_list,tmp_list);
    ds_list_destroy(tmp_list);   
  }
  
  
}  
//============================================================================================================