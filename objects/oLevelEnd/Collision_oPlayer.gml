//Move to next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}
audio_play_sound(snd_LevelEnd,5,false);



