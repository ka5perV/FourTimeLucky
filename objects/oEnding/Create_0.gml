//ending

gunsprite = layer_sprite_get_id("TitleAssets", "gGun");
//if (global.hasgun == true) && (global.kills >0)
//{
	endtext[0] = "And on this day our hero had slain" //+ string(global.kills) + "people.";
/*	if (global.kills == 1) endtext[0] = "And on this day our hero killed a guy for no reason"
	endtext[1] = "But some of those people had guns too, so..";
	endtext[2] = "He was probably saving the world, or something.";
	endtext[3] = "Regardless, he was arrested two days later spent the rest of his life in prison.";
	endtext[4] = "The defense team tried to argue that the sexy recoil effects and hit flashes were to blame,\nbut to no avail.";
	endtext[5] = "The park ranger would later state she was \"not angry, just disappointed\"";
	endtext[6] = "The end.";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "On this day our hero had a wonderful, serene walk through a national park \nand didn't even murder anyone.";
	endtext[1] = "They reported a discarded firearm to the local authorities \nand were thanked profusely for assisting in an ongoing criminal investigation";
	endtext[2] = "And all it took was behaviour that outside of a video game context\one would hope is completly normal.";
	endtext[3] = "Who would have thought?";
	endtext[4] = "The end";
}
*/
spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";








