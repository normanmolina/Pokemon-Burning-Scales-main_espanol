#===============================================================================
#  Elite Battle: DX
#    by Luka S.J.
# ----------------
#  Battle Scripts
#===============================================================================
module BattleScripts
  # example scripted battle for PIDGEY
  # you can define other scripted battles in here or make your own section
  # with the BattleScripts module for better organization as to not clutter the
  # main EBDX cofiguration script (or keep it here if you want to, your call)
  PIDGEY = {
    "turnStart0" => {
      :text => [
        "¡Guau! Este Pidgey de aquí se encuentra entre el porcentaje superior de Pidgey.",
        "¡Nunca había visto un Pidgey tan fuerte!",
        "Por cierto, esta característica funciona incluso durante batallas salvajes.",
        "Bastante emocionante, ¿verdad?"
      ],
      :file => "trainer024"
    }
  }
  # to call this battle script run the script from an event jusst before the
  # desired battle:
  #    EliteBattle.set(:nextBattleScript, :PIDGEY)
  #-----------------------------------------------------------------------------
  # example scripted battle for BROCK
  # this one is added to the EBDX trainers PBS as a BattleScript parameter
  # for the specific battle of LEADER_Brock "Brock" trainer
  BROCK = {
    "turnStart0" => proc do
      pname = @battlers[1].name
      tname = @battle.opponent[0].name
      # begin code block for the first turn
      @scene.pbTrainerSpeak(["¡Es hora de poner en marcha esta batalla!",
                             "¡Veamos si eres capaz de manejar mi #{pname} después de que le dé esto!"
                           ])
      # play common animation for Item use args(anim_name, scene, index)
      @scene.pbDisplay("#{tname} arrojó un objeto a #{pname}...")
      EliteBattle.playCommonAnimation(:USEITEM, @scene, 1)
      # play aura flare
      @scene.pbDisplay("Inmensa energía se está hinchando en el #{pname}")
      EliteBattle.playCommonAnimation(:AURAFLARE, @scene, 1)
      @vector.reset # AURAFLARE doesn't reset the vector by default
      @scene.wait(16, true) # set true to anchor the sprites to vector
      # raise battler Attack sharply (doesn't display text)
      @battlers[1].pbRaiseStatStageBasic(:ATTACK, 2)
      # show trainer speaking additional text
      @scene.pbTrainerSpeak("¡Mi #{pname} no fallará!")
      # show generic text
      @scene.pbDisplay("¡La batalla se está poniendo intensa! Ves cambiar las luces y el escenario a tu alrededor.")
      # change Battle Environment (with white fade)
      pbBGMPlay("Battle Elite")
      @sprites["battlebg"].reconfigure(:STAGE, Color.white)
    end,
    "damageOpp" => "¡Guau! ¡Un movimiento poderoso!",
    "damageOpp2" => "Otro movimiento poderoso...",
    "lastOpp" => "¡Eso es todo! ¡Hagamos que cuente!",
    "lowHPOpp" => "¡Mantente ahí!",
    "attack" => "¡Lo que sea que me arrojes, mi equipo puede tomarlo!",
    "attackOpp" => "¿Qué tal si te pruebas este para ver el tamaño?",
    "fainted" => "¡Así lo hacemos en este gimnasio!",
    "faintedOpp" => "Arghh. Lo hiciste bien amigo...",
    "loss" => "Puedes volver y desafiarme cuando quieras."
  }
  #-----------------------------------------------------------------------------
  # example Dialga fight
  DIALGA = {
    "turnStart0" => proc do
      # hide databoxes
      @scene.pbHideAllDataboxes
      # show flavor text
      @scene.pbDisplay("El gobernante del tiempo mismo; ¡Dialga comienza a irradiar enormes cantidades de energía!")
      @scene.pbDisplay("Algo está por suceder...")
      # play common animation
      EliteBattle.playCommonAnimation(:ROAR, @scene, 1)
      @scene.pbDisplay("¡El rugido de Dialga está presurizando el aire a tu alrededor! ¡Sientes su intensidad!")
      # change the battle environment (use animation to transition)
      @sprites["battlebg"].reconfigure(:DIMENSION, :DISTORTION)
      @scene.pbDisplay("¡Su rugido distorsionó las dimensiones!")
      @scene.pbDisplay("Dialga está controlando el dominio.")
      # show databoxes
      @scene.pbShowAllDataboxes
    end
  }
  #-----------------------------------------------------------------------------
end
