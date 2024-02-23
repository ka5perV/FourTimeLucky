//Moth following the player
if (instance_exists(oPlayer)) {
    move_towards_point(oPlayer.x, oPlayer.y, spd);
} else {
}       