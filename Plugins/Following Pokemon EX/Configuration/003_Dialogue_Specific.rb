#-------------------------------------------------------------------------------
# These are used to define what the Follower will say when spoken to under
# specific conditions like Status or Weather or Map names
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Amie Compatibility
#-------------------------------------------------------------------------------
if defined?(PkmnAR)
  Events.OnTalkToFollower += proc { |_pkmn, _random_val|
    cmd = pbMessage(_INTL("¿Qué te gustaría hacer?"), [
      _INTL("Tocar"),
      _INTL("Hablar"),
      _INTL("Cancelar")
    ])
    PkmnAR.show if cmd == 0
    next true if [0, 2].include?(cmd)
  }
end
#-------------------------------------------------------------------------------
# Special Dialogue when statused
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  case pkmn.status
  when :POISON
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_POISON)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    pbMessage(_INTL("{1} está temblando con los efectos de ser envenenado.", pkmn.name))
  when :BURN
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    pbMessage(_INTL("La quemadura de {1} parece dolorosa.", pkmn.name))
  when :FROZEN
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    pbMessage(_INTL("{1} parece muy frío. ¡Está congelado!", pkmn.name))
  when :SLEEP
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    pbMessage(_INTL("{1} parece muy cansado.", pkmn.name))
  when :PARALYSIS
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    pbMessage(_INTL("{1} está parado y temblando.", pkmn.name))
  end
  next true if pkmn.status != :NONE
}
#-------------------------------------------------------------------------------
# Special hold item on a map which includes battle in the name
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |_pkmn, _random_val|
  if $game_map.name.include?("Battle")
    # This array can be edited and extended to your hearts content.
    items = [:POKEBALL, :POKEBALL, :POKEBALL, :GREATBALL, :GREATBALL, :ULTRABALL]
    # Choose a random item from the items array, give the player 2 of the item
    # with the message "{1} is holding a round object..."
    next true if FollowingPkmn.item(items.sample, 2, _INTL("{1} está sosteniendo un objeto redondo..."))
  end
}
#-------------------------------------------------------------------------------
# Specific message if the Pokemon is a bug type and the map's name is route 3
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name == "Route 3" && pkmn.hasType?(:BUG)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} parece muy interesado en los árboles."),
      _INTL("{1} parece disfrutar del zumbido del Pokémon insecto."),
      _INTL("{1} está saltando inquieto en el bosque.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name is Pokemon Lab
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name == "Pokémon Lab"
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} está tocando algún tipo de interruptor."),
      _INTL("¡{1} tiene un cordón en la boca!"),
      _INTL("{1} parece querer tocar la maquinaria.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name has the players name in it like the
# Player's House
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name.include?($Trainer.name)
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} está husmeando por la habitación."),
      _INTL("{1} notó que la mamá de {2} está cerca."),
      _INTL("{1} parece querer establecerse en casa.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name has Pokecenter or Pokemon Center
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name.include?("Poké Center") ||
     $game_map.name.include?("Pokémon Center")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} parece feliz de ver a la enfermera."),
      _INTL("{1} se ve un poco mejor solo por estar en el Centro Pokémon."),
      _INTL("{1} parece fascinado por la maquinaria de curación."),
      _INTL("{1} parece que quiere tomar una siesta."),
      _INTL("{1} gorjeó un saludo al enfermero."),
      _INTL("{1} está mirando a {2} con una mirada juguetona."),
      _INTL("{1} parece estar completamente tranquilo."),
      _INTL("{1} se está poniendo cómodo."),
      _INTL("Hay una expresión de satisfacción en el rostro de {1}.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name has Forest
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name.include?("Forest")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} parece muy interesado en los árboles."),
      _INTL("{1} parece disfrutar del zumbido del Pokémon insecto."),
      _INTL("{1} está saltando inquieto en el bosque."),
      _INTL("{1} está deambulando y escuchando los diferentes sonidos."),
      _INTL("{1} está masticando la hierba."),
      _INTL("{1} está deambulando y disfrutando del paisaje del bosque."),
      _INTL("{1} está jugando, arrancando pedazos de hierba."),
      _INTL("{1} está mirando la luz que entra por los árboles."),
      _INTL("¡{1} está jugando con una hoja!"),
      _INTL("{1} parece estar escuchando el sonido de las hojas susurrando."),
      _INTL("{1} está completamente quieto y podría estar imitando a un árbol..."),
      _INTL("¡{1} se enredó en las ramas y casi se cae!"),
      _INTL("¡{1} se sorprendió cuando lo golpeó una rama!")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name has Gym in it
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name.include?("Gym")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("¡{1} parece ansioso por luchar!"),
      _INTL("{1} está mirando a {2} con un brillo determinado en sus ojos."),
      _INTL("{1} está tratando de intimidar a los otros entrenadores."),
      _INTL("{1} confía en {2} para idear una estrategia ganadora."),
      _INTL("{1} está vigilando al líder del gimnasio."),
      _INTL("{1} está listo para pelear con alguien."),
      _INTL("¡{1} parece que podría estar preparándose para un gran enfrentamiento!"),
      _INTL("¡{1} quiere mostrar lo fuerte que es!"),
      _INTL("{1} está... haciendo ejercicios de calentamiento?"),
      _INTL("{1} está gruñendo silenciosamente en contemplación...")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message if the map name has Beach in it
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if $game_map.name.include?("Beach")
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} parece estar disfrutando del paisaje."),
      _INTL("{1} parece disfrutar del sonido de las olas moviendo la arena."),
      _INTL("¡{1} parece que quiere nadar!"),
      _INTL("{1} apenas puede apartar la mirada del océano."),
      _INTL("{1} está mirando con nostalgia el agua."),
      _INTL("{1} sigue intentando empujar a {2} hacia el agua."),
      _INTL("¡{1} está emocionado de mirar el mar!"),
      _INTL("¡{1} está feliz mirando las olas!"),
      _INTL("¡{1} está jugando en la arena!"),
      _INTL("{1} está mirando las huellas de {2} en la arena."),
      _INTL("{1} está rodando por la arena.")
    ]
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Rainy. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if [:Rain, :HeavyRain].include?($game_screen.weather_type)
    if pkmn.hasType?(:FIRE) || pkmn.hasType?(:GROUND) || pkmn.hasType?(:ROCK)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} parece muy molesto por el clima."),
        _INTL("{1} está temblando..."),
        _INTL("{1} no parece gustarle estar todo mojado..."),
        _INTL("{1} sigue intentando agitarse seco ..."),
        _INTL("{1} se acercó a {2} para mayor comodidad."),
        _INTL("{1} mira al cielo y frunce el ceño."),
        _INTL("{1} parece tener dificultad para mover su cuerpo.")
      ]
    elsif pkmn.hasType?(:WATER) || pkmn.hasType?(:GRASS)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} parece estar disfrutando del clima."),
        _INTL("¡{1} parece estar feliz por la lluvia!"),
        _INTL("¡{1} parece estar muy sorprendido de que esté lloviendo!"),
        _INTL("¡{1} sonrió alegremente a {2}!"),
        _INTL("{1} está mirando hacia las nubes de lluvia."),
        _INTL("Las gotas de lluvia siguen cayendo sobre {1}."),
        _INTL("{1} mira hacia arriba con la boca abierta.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está mirando al cielo."),
        _INTL("{1} parece un poco sorprendido de ver la lluvia."),
        _INTL("{1} sigue intentando agitarse seco."),
        _INTL("La lluvia no parece molestar mucho a {1}."),
        _INTL("¡{1} está jugando en un charco!"),
        _INTL("¡{1} se resbala en el agua y casi se cae!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Storm. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if :Storm == $game_screen.weather_type
    if pkmn.hasType?(:ELECTRIC)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está mirando al cielo."),
        _INTL("La tormenta parece estar haciendo {1} emocionado."),
        _INTL("¡{1} miró hacia el cielo y gritó en voz alta!"),
        _INTL("¡La tormenta solo parece estar energizando {1}!"),
        _INTL("¡{1} hace zapping y salta en círculos felizmente!"),
        _INTL("El relámpago no molesta a {1} en absoluto.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está mirando al cielo."),
        _INTL("La tormenta parece estar poniendo {1} un poco nervioso."),
        _INTL("¡El relámpago sobresaltó a {1}!"),
        _INTL("La lluvia no parece molestar mucho a {1}."),
        _INTL("El clima parece estar poniendo nervioso a {1}."),
        _INTL("¡{1} se sobresaltó con el relámpago y se acurrucó junto a {2}!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Snowy. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if :Snow == $game_screen.weather_type
    if pkmn.hasType?(:ICE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está viendo caer la nieve"),
        _INTL("¡{1} está encantado con la nieve!"),
        _INTL("{1} está mirando al cielo con una sonrisa"),
        _INTL("Parece que la nieve ha puesto a {1} de buen humor"),
        _INTL("¡{1} está alegre por el frío!")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está viendo caer la nieve"),
        _INTL("{1} está mordiendo los copos de nieve que caen"),
        _INTL("{1} quiere atrapar un copo de nieve en su boca"),
        _INTL("{1} está fascinado con la nieve"),
        _INTL("¡Los dientes de {1} están castañeteando!"),
        _INTL("{1} hizo su cuerpo un poco más pequeño debido al frío...")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Blizzard. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if :Blizzard == $game_screen.weather_type
    if pkmn.hasType?(:ICE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está viendo caer el granizo"),
        _INTL("{1} no está molesto en absoluto por el granizo"),
        _INTL("{1} está mirando al cielo con una sonrisa"),
        _INTL("Parece que el granizo ha puesto a {1} de buen humor"),
        _INTL("{1} está royendo un trozo de granizo")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("¡{1} está siendo apedreado por granizo!"),
        _INTL("{1} quiere evitar el granizo"),
        _INTL("El granizo golpea {1} dolorosamente"),
        _INTL("{1} parece infeliz"),
        _INTL("¡{1} tiembla como una hoja!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Sandstorm. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if :Sandstorm == $game_screen.weather_type
    if pkmn.hasType?(:ROCK) || pkmn.hasType?(:GROUND)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está cubierto de arena"),
        _INTL("¡El clima no parece molestar a {1} en absoluto!"),
        _INTL("¡La arena no puede ralentizar a {1}!"),
        _INTL("{1} está disfrutando del clima")
      ]
    elsif pkmn.hasType?(:STEEL)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está cubierto de arena, pero no parece importarle"),
         INTL("{1} parece no haber sido afectado por la tormenta de arena"),
         INTL("La arena no frena a {1}."),
         INTL("A {1} no parece importarle el clima")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está cubierto de arena..."),
        _INTL("¡{1} escupió un bocado de arena!"),
        _INTL("{1} entrecierra los ojos a través de la tormenta de arena"),
        _INTL("Parece que la arena molesta a {1}")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# Specific message when the weather is Sunny. Pokemon of different types
# have different reactions to the weather.
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, _random_val|
  if :Sun == $game_screen.weather_type
    if pkmn.hasType?(:GRASS)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} parece contento de estar afuera bajo el sol"),
        _INTL("{1} está tomando el sol"),
        _INTL("La brillante luz del sol no parece molestar a {1} en absoluto"),
        _INTL("¡{1} envió una nube de esporas en forma de anillo al aire!"),
        _INTL("{1} estira su cuerpo y se relaja bajo el sol"),
        _INTL("{1} desprende un aroma floral")
      ]
    elsif pkmn.hasType?(:FIRE)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("¡{1} parece estar feliz por el buen clima!"),
        _INTL("La brillante luz del sol no parece molestar a {1} en absoluto"),
        _INTL("¡{1} parece emocionado por la luz del sol!"),
        _INTL("{1} estalló una bola de fuego"),
        _INTL("¡{1} está lanzando fuego!"),
        _INTL("¡{1} es caliente y alegre!")
      ]
    elsif pkmn.hasType?(:DARK)
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está mirando al cielo"),
        _INTL("{1} parece personalmente ofendido por la luz del sol"),
        _INTL("La brillante luz del sol parece molestar a {1}."),
        _INTL("{1} parece molesto por algún motivo"),
        _INTL("{1} está tratando de mantenerse a la sombra de {2}"),
        _INTL("{1} sigue buscando refugio de la luz del sol.")
      ]
    else
      FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
      messages = [
        _INTL("{1} está entrecerrando los ojos bajo la brillante luz del sol"),
        _INTL("{1} está empezando a sudar"),
        _INTL("{1} parece un poco incómodo con este clima"),
        _INTL("{1} parece un poco sobrecalentado"),
        _INTL("{1} parece muy atractivo..."),
        _INTL("¡{1} protegió su visión contra la luz brillante!")
      ]
    end
    pbMessage(_INTL(messages.sample, pkmn.name, $Trainer.name))
    next true
  end
}
