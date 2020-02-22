#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\gametypes_zm\_hud_message;

init()
{
  level.givecustomloadout = ::givecustomloadout;
}
givecustomloadout( takeallweapons, alreadyspawned )
{
    self giveweapon( "knife_zm" );
    self give_start_weapon( 1 );
    if ( level.round_number >= 5 && level.round_number < 10)
    {
        self giveWeapon( "fiveseven_zm" );
    }
    else if ( level.round_number >= 10 && level.round_number < 15)
    {
        self giveweapon( "tazer_knuckles_zm" );
        self giveWeapon( "ak74u_zm" );
    }
    else if ( level.round_number >= 15 && level.round_number < 20)
    {
        self giveweapon( "tazer_knuckles_zm" );
        self giveWeapon( "srm1216_upgraded_zm" );
        self maps/mp/zombies/_zm_perks::give_perk( "specialty_armorvest" );
    }
    else if ( level.round_number >= 20 && level.round_number < 25)
    {
        self giveweapon( "tazer_knuckles_zm" );
        self giveWeapon( "galil_zm" );
        self maps/mp/zombies/_zm_perks::give_perk( "specialty_armorvest" );    
    }
    else if ( level.round_number >= 25)
    {
        self giveweapon( "tazer_knuckles_zm" );
        self giveWeapon( "hamr_upgraded_zm" );
        self maps/mp/zombies/_zm_perks::give_perk( "specialty_armorvest" );
    }
}
