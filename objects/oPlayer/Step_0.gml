// Key defined
move_key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
move_key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
move_key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"));
dash_key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
dash_key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
dash_key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

// move left
if (move_key_left) {
	if (x > oWall.sprite_width) {
	    x -= moveSpeed;
		image_xscale = -1;
	}
}

// move right
if (move_key_right) {
	if (x < 736) {
		x += moveSpeed;
		image_xscale = 1
	}
}

var currentTime = current_time;

//Horizontal collision
// if (isDashing && place_meeting(x + hspeed * dashDuration, y, oWall)) {
	
// }

if (place_meeting(x + hspeed, y - 2, oWall)) {
	while(!place_meeting(x, y - 2, oWall)){
 		x += sign(hspeed)
	}
	hspeed = 0;
}

// impact top
if (place_meeting(x, y + vspeed - oWall.sprite_height, oWall)) {
    while (!place_meeting(x, y - oWall.sprite_height, oWall)) {
        y -= 1;  
    }
	
	vspeed = 0;
	gravity = 0;
}

// Jump
var onGround = place_meeting(x, y + 1, oWall); 	
if (!onGround) {
	gravity = moveGravity;
}
else {
	var collision_instance = instance_place(x, y + 1, oWall);
	show_debug_message("collision_instance:" + string(collision_instance.image_angle));
	if (collision_instance.x != 0 && collision_instance.x != 736) {
		y = collision_instance.y;
	}
	if (keyboard_check_pressed(vk_up)) {
	    vspeed = jumpSpeed;
		gravity = moveGravity;
	}
	if (vspeed > 0) {
		vspeed = 0;
		gravity = 0;
	}
	//sound when landing
	if (sprite_index == sPlayerA) {
		audio_sound_pitch(snLanding,choose(0.8, 1.0, 1.2));
		audio_play_sound(snLanding, 4, false);
	}
	image_speed = 1;
	if (hspeed == 0) {
		sprite_index = sPlayer;
	}
	else {
		sprite_index = sPlayerR;
	}
}

// dash left
if (dash_key_left) {
    if (currentTime - leftPressedTime <= doubleClickThreshold && canDash) {
		vspeed = 0; 
        hspeed = -dashSpeed;
        canDash = false; 
        alarm[0] = dashDuration; 
		image_xscale = -1
    }
    leftPressedTime = currentTime;
}

// dash right
if (dash_key_right) {
	if (currentTime - rightPressedTime <= doubleClickThreshold && canDash) {
        vspeed = 0;
        hspeed = dashSpeed; 
        canDash = false;
        alarm[0] = dashDuration;
		image_xscale = 1
    }
    rightPressedTime = currentTime;
}


