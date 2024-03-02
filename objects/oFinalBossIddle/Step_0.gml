/*

if (alarm[0] <= 0) { 
		bullet_x = x + 120;
		bullet_y = y + 90;
	    var bullet = instance_create_layer(bullet_x, bullet_y, "Bullets", oMothBullet); 
	    bullet.direction = point_direction(bullet_x, bullet_y, oPlayer.x, oPlayer.y); 
		bullet.image_angle = bullet.direction;
	    bullet.speed = 10; 
	    alarm[0] = 300; 
	}