#===============================================================================
# Battle Backgrounds - RMVX
#===============================================================================
# Written by Synthesize
# January 20, 2008
# Version 1.00A
#===============================================================================
#                       * This script is untested. *
#===============================================================================
module SynBattleB
  # Place your battle backgrounds in the 'Pictures' folder (Graphics/Pictures)
  # Format = {map_id => Battleback Name}
  Battle_background = 
  {
  1 => "001-Grassland01",
  2 => "001-Grassland01"
  }
  #-----------------------------------------------------------------------------
  # Create the battlefloor?
  Create_battlefloor = false
  #-----------------------------------------------------------------------------
  # This was being requested on quite a fe forums now, so I threw a quick script
  # together. It is nice and simple, and does what it is suppsoed to do. Once
  # RMVX is released in English, then I will add additional features into this.
  #-----------------------------------------------------------------------------
end
#-------------------------------------------------------------------------------
# Spriteset_Battle
#-------------------------------------------------------------------------------
class Spriteset_Battle
  alias syn_create_battlefloor create_battlefloor
  #-----------------------------------------------------------------------------
  # Create Battleback
  #-----------------------------------------------------------------------------
  def create_battleback
    image = SynBattleB::Battle_background[$game_map.map_id]
    @battleback_sprite = Sprite.new(@viewport1)
    @battleback_sprite.bitmap = Cache.picture(image)
  end
  def create_battlefloor
    @battlefloor_sprite = Sprite.new(@viewport1)
    syn_create_battlefloor if SynBattleB::Create_battlefloor == true
  end
end
#===============================================================================
#                        * This script is untested *
#===============================================================================  
# Version 1.00A
# January 20, 2008
# Written by Synthesize
#===============================================================================
# Battle Backgrounds - RMVX
#===============================================================================
  