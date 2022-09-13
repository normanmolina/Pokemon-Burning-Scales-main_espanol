# =============================================================================
# IKazart's NPC Trade Evolution
# Version 1.0 - Compatibility: Pokemon Essentials v19.1
# Contact: Send me a message on Discord: IKazart#6758
# =============================================================================
if !PluginManager.installed?("NPC Trade Evolution")
    PluginManager.register({                                     
      :name    => "NPC Trade Evolution",                            
      :version => "1.1",                                         
      :link    => "https://reliccastle.com/resources/845/", 
      :credits => "IKazart"
    })
end
def TradeEvolution()
    if $Trainer.pokemon_count == 0
        pbMessage(_INTL("No hay Pokémon."))
        return 0
    end
    annot = []
    for pkmn in $Trainer.party
        elig = pkmn.check_evolution_on_trade(self)
        annot.push((elig) ? _INTL("CAPAZ") : _INTL("NO CAPAZ"))
    end
    pbFadeOutIn {
        scene = PokemonParty_Scene.new
        screen = PokemonPartyScreen.new(scene,$Trainer.party)
        screen.pbStartScene(_INTL("Selecciona un Pokémon."),false,annot)
        loop do
            chosen = screen.pbChoosePokemon
            if chosen<0
                screen.pbEndScene
                break
            end
            pkmn = $Trainer.party[chosen]
            newspecies = pkmn.check_evolution_on_trade(self)
            if newspecies
                screen.pbEndScene
                pbFadeOutInWithMusic {
                  evo = PokemonEvolutionScene.new
                  evo.pbStartScreen(pkmn,newspecies)
                  evo.pbEvolution(false)
                  evo.pbEndScreen
                }
                break
            else
                pbMessage(_INTL("No puedo evolucionar este Pokémon."))
            end
        end
    }
end