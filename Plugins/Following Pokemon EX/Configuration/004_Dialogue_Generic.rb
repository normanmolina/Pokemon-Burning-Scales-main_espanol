#-------------------------------------------------------------------------------
# These are used to define what the Follower will say when spoken to in general
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Generic Item Dialogue
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |_pkmn, _random_val|
  items = [
    :POTION,        :SUPERPOTION,  :FULLRESTORE,    :REVIVE,        :PPUP,
    :PPMAX,         :RARECANDY,    :REPEL,          :MAXREPEL,      :ESCAPEROPE,
    :HONEY,         :TINYMUSHROOM, :PEARL,          :NUGGET,        :GREATBALL,
    :ULTRABALL,     :THUNDERSTONE, :MOONSTONE,      :SUNSTONE,      :DUSKSTONE,
    :REDAPRICORN,   :BLUEAPRICORN, :YELLOWAPRICORN, :GREENAPRICORN, :PINKAPRICORN,
    :BLACKAPRICORN, :WHITEAPRICORN
  ]
  # If no message or quantity is specified the default message is used and the quantity of item is 1
  next true if FollowingPkmn.item(items.sample)
}
#-------------------------------------------------------------------------------
# All dialogues with the Music Note animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 0
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_MUSIC)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} parece querer jugar con {2}."),
      _INTL("{1} está cantando y tarareando"),
      _INTL("{1} está mirando a {2} con expresión feliz"),
      _INTL("{1} se balanceaba y bailaba a su antojo"),
      _INTL("¡{1} está saltando sin preocupaciones!"),
      _INTL("¡{1} está mostrando su agilidad!"),
      _INTL("¡{1} se mueve felizmente!"),
      _INTL("¡Vaya! ¡{1} de repente empezó a bailar de felicidad!"),
      _INTL("¡{1} se mantiene constantemente al día con {2}!"),
      _INTL("{1} está feliz saltando"),
      _INTL("{1} está mordisqueando el suelo en broma"),
      _INTL("¡{1} está mordisqueando juguetonamente los pies de {2}!"),
      _INTL("¡{1} está siguiendo a {2} muy de cerca!"),
      _INTL("{1} se da la vuelta y mira a {2}."),
      _INTL("¡{1} está trabajando duro para mostrar su gran poder!"),
      _INTL("{1} parece que quiere correr!"),
      _INTL("{1} está deambulando disfrutando del paisaje"),
      _INTL("¡{1} parece estar disfrutando esto un poco!"),
      _INTL("¡{1} está alegre!"),
      _INTL("{1} parece estar cantando algo?"),
      _INTL("¡{1} está bailando alegremente!"),
      _INTL("¡{1} se está divirtiendo bailando una jiga animada!"),
      _INTL("¡{1} está tan feliz que empezó a cantar!"),
      _INTL("¡{1} miró hacia arriba y aulló!"),
      _INTL("{1} parece sentirse optimista"),
      _INTL("¡Parece que {1} tiene ganas de bailar!"),
      _INTL("¡{1} de repente empezó a cantar! Parece que se siente genial"),
      _INTL("¡Parece que {1} quiere bailar con {2}!")
    ]
    value = rand(messages.length)
    case value
    # Special move route to go along with some of the dialogue
    when 3, 9
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 65])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0
      ])
    when 4, 5
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 40])
      FollowingPkmn.move_route([
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    when 6, 17
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 40])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp
      ])
    when 7, 28
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 60])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    when 21, 22
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 50])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# All dialogues with the Angry animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 1
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ANGRY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("¡{1} deja escapar un rugido!"),
      _INTL("¡{1} está haciendo una mueca como si estuviera enojado!"),
      _INTL("{1} parece estar enojado por alguna razón"),
      _INTL("{1} masticó los pies de {2}"),
      _INTL("{1} se giró para mirar hacia el otro lado, mostrando una expresión desafiante"),
      _INTL("¡{1} está tratando de intimidar a los enemigos de {2}!"),
      _INTL("¡{1} quiere pelear!"),
      _INTL("¡{1} está listo para pelear!"),
      _INTL("¡Parece que {1} peleará contra cualquiera ahora mismo!"),
      _INTL("{1} está gruñendo de una manera que suena casi como un habla...")
    ]
    value = rand(messages.length)
    # Special move route to go along with some of the dialogue
    case value
    when 6, 7, 8
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 25])
      FollowingPkmn.move_route([
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# All dialogues with the Neutral Animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 2
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_ELIPSES)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} mira fijamente hacia abajo"),
      _INTL("{1} está husmeando"),
      _INTL("{1} se está concentrando profundamente"),
      _INTL("{1} miró a {2} y asintió"),
      _INTL("{1} está mirando directamente a los ojos de {2}"),
      _INTL("{1} está inspeccionando el área"),
      _INTL("¡{1} enfocado con una mirada aguda!"),
      _INTL("{1} está mirando a su alrededor distraídamente"),
      _INTL("¡{1} bostezó muy fuerte!"),
      _INTL("{1} se está relajando cómodamente"),
      _INTL("{1} está enfocando su atención en {2}."),
      _INTL("{1} está mirando fijamente a la nada"),
      _INTL("{1} se está concentrando"),
      _INTL("{1} miró a {2} y asintió"),
      _INTL("{1} está mirando las huellas de {2}"),
      _INTL("{1} parece querer jugar y está mirando a {2} de forma esperada"),
      _INTL("{1} parece estar pensando profundamente en algo"),
      _INTL("{1} no está prestando atención a {2}... Parece que está pensando en otra cosa"),
      _INTL("{1} parece sentirse serio"),
      _INTL("{1} parece desinteresado"),
      _INTL("La mente de {1} parece estar en otra parte"),
      _INTL("{1} parece estar observando los alrededores en lugar de mirar a {2}."),
      _INTL("{1} parece un poco aburrido"),
      _INTL("{1} tiene una mirada intensa en su rostro"),
      _INTL("{1} está mirando a lo lejos"),
      _INTL("{1} parece estar examinando cuidadosamente la cara de {2}"),
      _INTL("{1} parece estar tratando de comunicarse con sus ojos"),
      _INTL("... {1} parece haber estornudado!"),
      _INTL("... {1} notó que los zapatos de {2} están un poco sucios"),
      _INTL("Parece que {1} comió algo extraño, está haciendo una cara rara..."),
      _INTL("{1} parece estar oliendo algo bueno"),
      _INTL("{1} notó que la bolsa de {2} tiene un poco de suciedad..."),
      _INTL("...... ...... ...... ...... ...... ...... ...... ..... . ...... ...... ...... {1} asintió en silencio!")
    ]
    value = rand(messages.length)
    # Special move route to go along with some of the dialogue
    case value
    when 1, 5, 7, 20, 21
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 35])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnDown
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# All dialogues with the Happy animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 3
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} comenzó a pinchar {2}."),
      _INTL("{1} se ve muy feliz"),
      _INTL("{1} felizmente abrazado a {2}."),
      _INTL("{1} está tan feliz que no puede quedarse quieto"),
      _INTL("{1} parece que quiere liderar!"),
      _INTL("{1} viene felizmente"),
      _INTL("¡{1} parece sentirse muy bien caminando con {2}!"),
      _INTL("{1} está radiante de salud"),
      _INTL("{1} se ve muy feliz"),
      _INTL("¡{1} se esforzó más solo por {2}!"),
      _INTL("{1} está oliendo los aromas del aire circundante"),
      _INTL("¡{1} está saltando de alegría!"),
      _INTL("¡{1} todavía se siente genial!"),
      _INTL("{1} estiró su cuerpo y se está relajando"),
      _INTL("{1} está haciendo todo lo posible para mantenerse al día con {2}."),
      _INTL("¡{1} está abrazando felizmente a {2}!"),
      _INTL("¡{1} está lleno de energía!"),
      _INTL("¡{1} está tan feliz que no puede quedarse quieto!"),
      _INTL("{1} está deambulando y escuchando diferentes sonidos"),
      _INTL("{1} le da a {2} una mirada feliz y una sonrisa"),
      _INTL("¡{1} empezó a respirar agitadamente por la nariz de la emoción!"),
      _INTL("¡{1} está temblando de ansiedad!"),
      _INTL("{1} está tan feliz que empezó a rodar"),
      _INTL("{1} parece encantado de recibir la atención de {2}."),
      _INTL("¡{1} parece muy complacido de que {2} lo esté notando!"),
      _INTL("¡{1} empezó a mover todo su cuerpo de emoción!"),
      _INTL("¡Parece que {1} apenas puede evitar abrazar a {2}!"),
      _INTL("{1} se mantiene cerca de los pies de {2}")
    ]
    value = rand(messages.length)
    # Special move route to go along with some of the dialogue
    case value
    when 3
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 45])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    when 11, 16, 17, 24
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 40])
      FollowingPkmn.move_route([
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::Jump, 0, 0
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# All dialogues with the Heart animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 4
    FollowingPkmn.animation(FollowingPkmn::ANIMATION_EMOTE_HEART)
    pbMoveRoute($game_player, [PBMoveRoute::Wait, 20])
    messages = [
      _INTL("{1} de repente empezó a caminar más cerca de {2}."),
      _INTL("¡Vaya! {1} de repente abrazó a {2}."),
      _INTL("{1} se frota contra {2}."),
      _INTL("{1} se mantiene cerca de {2}."),
      _INTL("{1} sonrojado"),
      _INTL("{1} ama pasar tiempo con {2}!"),
      _INTL("¡{1} de repente es juguetón!"),
      _INTL("¡{1} se frota contra las piernas de {2}!"),
      _INTL("¡{1} está mirando a {2} con adoración!"),
      _INTL("{1} parece querer un poco de afecto de {2}."),
      _INTL("{1} parece querer algo de atención de {2}."),
      _INTL("{1} parece feliz viajando con {2}."),
      _INTL("{1} parece sentirse afectuoso con {2}."),
      _INTL("{1} está mirando a {2} con ojos amorosos"),
      _INTL("{1} parece que quiere una golosina de {2}."),
      _INTL("{1} parece que quiere que {2} lo acaricie!"),
      _INTL("{1} se frota contra {2} cariñosamente"),
      _INTL("{1} golpea suavemente su cabeza contra la mano de {2}"),
      _INTL("{1} se da la vuelta y mira a {2} expectante"),
      _INTL("{1} mira a {2} con ojos confiados"),
      _INTL("¡{1} parece estar rogando a {2} un poco de afecto!"),
      _INTL("¡{1} imitó a {2}!")
    ]
    value = rand(messages.length)
    case value
    when 1, 6,
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 10])
      FollowingPkmn.move_route([
        PBMoveRoute::Jump, 0, 0
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
#-------------------------------------------------------------------------------
# All dialogues with no animation
#-------------------------------------------------------------------------------
Events.OnTalkToFollower += proc { |pkmn, random_val|
  if random_val == 5
    messages = [
      _INTL("¡{1} giró en un círculo!"),
      _INTL("{1} lanza un grito de batalla"),
      _INTL("¡{1} está al acecho!"),
      _INTL("{1} está de pie pacientemente"),
      _INTL("{1} mira alrededor inquieto"),
      _INTL("{1} está dando vueltas"),
      _INTL("¡{1} bostezó con fuerza!"),
      _INTL("{1} está hurgando constantemente en el suelo alrededor de los pies de {2}").
      _INTL("{1} mira a {2} y sonríe"),
      _INTL("{1} está mirando fijamente a lo lejos"),
      _INTL("{1} está al día con {2}."),
      _INTL("{1} parece satisfecho consigo mismo"),
      _INTL("¡{1} sigue siendo fuerte!"),
      _INTL("{1} camina sincronizado con {2}."),
      _INTL("{1} empezó a dar vueltas en círculos"),
      _INTL("{1} mira a {2} con anticipación"),
      _INTL("{1} se cayó y parece un poco avergonzado"),
      _INTL("{1} está esperando a ver qué hará {2}"),
      _INTL("{1} está mirando tranquilamente a {2}."),
      _INTL("{1} está buscando en {2} algún tipo de señal"),
      _INTL("{1} permanece en su lugar, esperando que {2} haga un movimiento"),
      _INTL("{1} se sentó obedientemente a los pies de {2}").
      _INTL("¡{1} saltó de la sorpresa!"),
      _INTL("¡{1} saltó un poco!")
    ]
    value = rand(messages.length)
    # Special move route to go along with some of the dialogue
    case value
    when 0
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 15])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown
      ])
    when 2, 4
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 35])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 10,
        PBMoveRoute::TurnDown
      ])
    when 14
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 50])
      FollowingPkmn.move_route([
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnRight,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnUp,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnLeft,
        PBMoveRoute::Wait, 4,
        PBMoveRoute::TurnDown
      ])
    when 22, 23
      pbMoveRoute($game_player, [PBMoveRoute::Wait, 10])
      FollowingPkmn.move_route([
        PBMoveRoute::Jump, 0, 0
      ])
    end
    pbMessage(_INTL(messages[value], pkmn.name, $Trainer.name))
    next true
  end
}
