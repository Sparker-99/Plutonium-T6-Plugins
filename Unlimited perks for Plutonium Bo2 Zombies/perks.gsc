init()
{
    thread remove_perk_limit();
    for(;;)
    {
        level waittill("connected", player);
        player thread welcome();
    }
}

remove_perk_limit()
{
    level waittill( "start_of_round" );
    level.perk_purchase_limit = 9;
}

welcome()
{
    self endon("disconnect");
    self waittill("spawned_player");
    wait 7;
	self iprintln("^2" +self.name + "^7 , your perk limit has been removed");
}