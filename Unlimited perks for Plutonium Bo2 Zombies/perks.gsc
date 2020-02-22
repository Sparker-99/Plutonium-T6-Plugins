#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\gametypes_zm\_hud_message;

init()
{
    level.perk_purchase_limit = 9;
    for(;;)
    {
        level waittill("connected", player);
        player thread welcome();
    }
}

welcome()
{
    self endon("disconnect");
    self waittill("spawned_player");
    wait 7;
	self iprintln("^2" +self.name + "^7 , your perk limit has been removed");
}