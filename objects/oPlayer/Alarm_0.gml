/// @description Insert description here
// You can write your code in this editor

hspeed = 0; // 冲刺结束后停止水平移动
canDash = true; // 冲刺冷却结束，可以再次冲刺




if (alarm[0] > 0) {
    alarm[0] -= 1;
} else {
    canTakeDamage = true; // Allow taking damage again
}