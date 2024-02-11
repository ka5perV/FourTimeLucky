// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description scr_approach(start, end, shift);
/// @function scr_approach
/// @param start
/// @param end
/// @param shift
function Approach(){
	
	if (argument[0] < argument[1]) {
	   return min(argument[0] + argument[2], argument[1]);
	} else {
	   return max(argument[0] - argument[2], argument[1]);
	}
}