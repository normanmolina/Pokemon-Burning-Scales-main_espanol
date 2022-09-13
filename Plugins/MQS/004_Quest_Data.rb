module QuestModule
  
  # You don't actually need to add any information, but the respective fields in the UI will be blank or "???"
  # I included this here mostly as an example of what not to do, but also to show it's a thing that exists
  Quest0 = { }

  Quest1 = {
    :ID => "1",
    :Name => "El vendedor de productos",
    :QuestGiver => "nil",
    :Stage1 => "Encontre El vendedor de productos.",
    :Stage2 => "Conviértete en un cliente fiel.",
    :Stage3 => "Compra el pokemon especial.",
    :Location1 => "Parque de Nimbasa",
    :Location2 => "Parque de Nimbasa",
    :Location3 => "Parque de Nimbasa",
    :QuestDescription => "Se dice que un tipo está vendiendo productos interesantes en el parque Nimbasa, podría valer la pena echarle un vistazo.",
    :RewardString => "Producto especial"
  }

  Quest2 = {
    :ID => "2",
    :Name => "El partido de fútbol",
    :QuestGiver => "Atleta de Nimbasa",
    :Stage1 => "Encuentra al atleta.",
    :Location1 => "Gran Estadio",
    :QuestDescription => "Después de una batalla, un atleta en Nimbasa me pidió que viera su participación en la competencia en el Gran Estadio de Nimbasa.",
    :RewardString => "nil"
  }

  Quest3 = {
    :ID => "3",
    :Name => "El camino de la pesca",
    :QuestGiver => "Pescador del parque",
    :Stage1 => "Aprenda más sobre la pesca.",
    :Stage2 => "¡Vuelve con una caña nueva!",
    :Stage3 => "Consigue el palo final.",
    :Location1 => "Parque de Nimbasa",
    :Location2 => "Parque de Nimbasa",
    :Location3 => "???",
    :QuestDescription => "Encontré un pescador en el Parque Nimbasa que sabe mucho de pesca, me puede ayudar a iniciarme en la pesca.",
    :RewardString => "nil"
  }

  Quest4 = {
    :ID => "4",
    :Name => "El Tirtouga perdido en el parque.",
    :QuestGiver => "nil",
    :Stage1 => "Busca el parque.",
    :Stage2 => "Lleva el Tirtouga a su dueño.",
    :Location1 => "Parque de Nimbasa",
    :Location2 => "nil",
    :QuestDescription => "Se perdió un Tirtouga en el Parque Nimbasa, necesito devolvérselo al dueño.",
    :RewardString => "nil"
  }

  Quest5 = {
    :ID => "5",
    :Name => "Conversación con el director de la FNF",
    :QuestGiver => "Anciano",
    :Stage1 => "Habla con el hijo del anciano.",
    :Stage2 => "Busca un revitalizante.",
    :Stage3 => "Habla con el revitalizador.",
    :Stage4 => "Espera a que el fósil esté listo.",
    :Location1 => "Nimbasa",
    :Location2 => "???",
    :Location3 => "Ruta 4",
    :Location4 => "Ruta 4",
    :QuestDescription => "Un anciano del Centro Pokémon de Nimbasa me pidió que visitara a su hijo en su universidad, la Facultad de Filosofía de Nimbasa.",
    :RewardString => "nil"
  }

  Quest6 = {
    :ID => "6",
    :Name => "La chica con problemas",
    :QuestGiver => "nil",
    :Stage1 => "Habla con la chica.",
    :Location1 => "Nimbasa",
    :QuestDescription => "Una vendedora del Centro Pokémon de Nimbasa le pidió que hablara con su madre en el sur de Nimbasa.",
    :RewardString => "nil"
  }

  Quest7 = {
    :ID => "7",
    :Name => "El Gran Torneo de Nimbasa",
    :QuestGiver => "nil",
    :Stage1 => "Ir al Teatro Musical.",
    :Stage2 => "Más información sobre el torneo.",
    :Stage3 => "¡Derrota a todos en el torneo!",
    :Location1 => "Teatro Musical",
    :Location2 => "Teatro Musical",
    :Location3 => "Teatro Musical",
    :QuestDescription => "Nimbasa está en el período festivo gracias al torneo anual, muchas personas se reúnen alrededor del Teatro Musical y se llevan a cabo varias batallas. Participar en batallas puede ser interesante.",
    :RewardString => "nil"
  }

  Quest8 = {
    :ID => "8",
    :Name => "Un gimnasio electrizante",
    :QuestGiver => "Elesa",
    :Stage1 => "Encuentra a Elesa en su gimnasio.",
    :Stage2 => "Enfréntate a los entrenadores.",
    :Stage3 => "Habla/enfrenta a Elesa.",
    :Location1 => "Parque de Nimbasa",
    :Location2 => "Gimnasio de Nimbasa",
    :Location3 => "Gimnasio de Nimbasa",
    :QuestDescription => "Elesa me pidió que pasara un rato en el gimnasio para ponerme al día y charlar un poco con ella.",
    :RewardString => "nil"
  }

  Quest9 = {
    :ID => "9",
    :Name => "Escamas Ardientes",
    :QuestGiver => "Carvalho",
    :Stage1 => "Encuentra al profesor Carvalho.",
    :Stage2 => "Enfréntate a los motociclistas.",
    :Stage3 => "Habla con el profesor Carvalho.",
    :Stage4 => "Busque el Castillo Reliquia.",
    :Stage5 => "Habla con el profesor Carvalho.",
    :Stage6 => "Explora las alcantarillas.",
    :Stage7 => "Enfréntate al Equipo Plasma.",
    :Stage8 => "EEnfréntate a Volcarona.",
    :Location1 => "Castelia",
    :Location2 => "Ruta 4",
    :Location3 => "Calle Castelia",
    :Location4 => "Complejo del desierto",
    :Location5 => "Calle Castelia ",
    :Location6 => "Alcantarillas de Castelia",
    :Location7 => "Castillo Reliquia",
    :Location8 => "Castillo Reliquia",
    :QuestDescription => "El profesor Oak necesita ayuda para cuidar de un pokémon con gran potencial destructivo.",
    :RewardString => "nil"
  }

  Quest10 = {
    :ID => "10",
    :Name => "La niña desaparecida",
    :QuestGiver => "Madre de la niña",
    :Stage1 => "Busca pistas por la ciudad.",
    :Stage2 => "Busca a la chica del norte.",
    :Stage3 => "Encuentra a la chica en el Teatro.",
    :Stage4 => "Enfrenta a Anna.",
    :Stage5 => "Luchar contra Anna en el torneo.",
    :Stage6 => "Dile la verdad a la madre de Anna.",
    :Location1 => "Nimbasa",
    :Location2 => "Norte de Nimbasa",
    :Location3 => "Teatro Musical",
    :Location4 => "Teatro Musical",
    :Location5 => "Teatro Musical",
    :Location6 => "Nimbasa",
    :QuestDescription => "Una madre tuvo problemas con su hija, quien terminó huyendo. Me pidió que la ayudara a encontrarla.",
    :RewardString => "nil"
  }

  Quest11 = {
    :ID => "11",
    :Name => "Los entrenadores decepcionados",
    :QuestGiver => "Policía",
    :Stage1 => "Enfréntate a los 5 entrenadores",
	  :Stage2 => "Pregúntale al policía por la recompensa.",
    :Location1 => "Ruta 4",
	  :Location2 => "Ruta 4",
    :QuestDescription => "Un policía de la Ruta 4 me pidió que enfrentara a los entrenadores que no pueden llegar al torneo, para tratar de levantarles un poco el ánimo.",
    :RewardString => "nil"
  }

  Quest12 = {
    :ID => "12",
    :Name => "Vamos a pescar.. un Kyogre???",
    :QuestGiver => "Pescador",
    :Stage1 => "Atrapa un Kyogre.",
    :Location1 => "Ruta 4",
    :QuestDescription => "Los pescadores dicen que han visto un Kyogre nadando por la región, aunque es poco probable, parece que vale la pena intentarlo.",
    :RewardString => "nil"
  }

  Quest12 = {
    :ID => "12",
    :Name => "Enamorado y maldito",
    :QuestGiver => "Entrenador apasionado",
    :Stage1 => "Invadir la casa del entrenador.",
    :Stage2 => "Encuentra la solución de la maldición.",
    :Stage3 => "Rompe la maldición.",
    :Location1 => "Calle Mode",
    :Location2 => "Casa Abandonada",
    :Location3 => "Ruta 4",
    :QuestDescription => "A un entrenador de Ruta 4 se le impidió ir al torneo en Nimbasa y encontrar a su amada gracias a una maldición de otro entrenador de Castelia, necesito romper la maldición para ayudarlo.",
    :RewardString => "nil"
  }

  Quest13 = {
    :ID => "13",
    :Name => "¿Recuperar un par de anteojos... de la basura?",
    :QuestGiver => "nil",
    :Stage1 => "Recoge los anteojos de la basura.",
	  :Stage2 => "Devuélvale las gafas al entrenador.",
    :Location1 => "Ruta 4",
	  :Location2 => "Ruta 4",
    :QuestDescription => "Un entrenador de la Ruta 4 me pidió sus lentes, que al parecer están en la basura de una casa en el centro de la Ruta.",
    :RewardString => "nil"
  }

  Quest14 = {
    :ID => "14",
    :Name => "Un favor para el explorador",
    :QuestGiver => "Explorador de la Ruta 4",
    :Stage1 => "Enfrenta al explorador.",
	  :Stage2 => "Captura un Cubone y entrégalo.",
    :Location1 => "Ruta 4",
	  :Location2 => "Complejo del desierto",
    :QuestDescription => "Un entrenador en la Ruta 4 me pidió que atrapara un pokemon especial para él ya que no puede ir al complejo del desierto.",
    :RewardString => "nil"
  }

  Quest15 = {
    :ID => "15",
    :Name => "Buscando un Onix entre las piedras",
    :QuestGiver => "Padre luchador",
    :Stage1 => "Encuentra el juguete.",
	  :Stage2 => "Devuélvelo al padre.",
    :Location1 => "Ruta 4",
	  :Location2 => "Ruta 4",
    :QuestDescription => "Un niño perdió un Onix de juguete entre las piedras de la Ruta 4 y necesito devolvérselo a su padre, me pregunto qué más puede haber en estas piedras.",
    :RewardString => "nil"
  }

  Quest16 = {
    :ID => "16",
    :Name => "Una carta amable",
    :QuestGiver => "Pervertido",
    :Stage1 => "Entrega la carta.",
	  :Stage2 => "Cuéntale qué pasó.",
    :Location1 => "Ruta 4",
	  :Location2 => "Ruta 4",
    :QuestDescription => "Un científico pervertido me pidió que le entregara una carta de amor a una chica en la playa.",
    :RewardString => "nil"
  }

  Quest17 = {
    :ID => "17",
    :Name => "¡Terminando a los motociclistas!",
    :QuestGiver => "Policía",
    :Stage1 => "Obtén información del cuartel.",
    :Stage2 => "Invadir la ciudad de los motociclistas.",
    :Stage3 => "Lucha contra el jefe motociclista.",
    :Stage4 => "Lucha contra el verdadero jefe.",
    :Stage5 => "Libera a Meloetta.",
    :Location1 => "Castelia",
    :Location2 => "Ruta 4",
    :Location3 => "Ciudad de los motociclistas",
    :Location4 => "Ciudad de los motociclistas",
    :Location5 => "Ciudad de los motociclistas",
    :QuestDescription => "Los motociclistas de la Ruta 4 están causando problemas a todos, lo mejor es poner fin a este lío. Debo decidir qué hacer con los guardias en Castelia y proceder con el ataque en defensa de la Ruta 4.",
    :RewardString => "nil"
  }

  Quest18 = {
    :ID => "18",
    :Name => "Completando la Pokédex",
    :QuestGiver => "Viejo sabio",
    :Stage1 => "Atrapa 10 Pokémon diferentes.",
    :Location1 => "Laboratorio de Juniper",
    :QuestDescription => "Un señor que ha pasado por muchas historias me retó a mostrar 10 especies diferentes en la pokédex ya cambio me dará un pokemon que no puedo atrapar en el sur de Unova.",
    :RewardString => "Pokémon de fuera del Sur de Unova"
  }
  
  Quest19 = {
    :ID => "19",
    :Name => "El grupo de baile",
    :QuestGiver => "Bailarín",
    :Stage1 => "Encuentra dos bailarines.",
    :Stage2 => "Avisar al bailarín.",
    :Location1 => "Castelia",
    :Location2 => "Plaza Central",
    :QuestDescription => "Encontré una bailarina en Plaza Central buscando otras bailarinas para formar un grupo. Me pidió que buscara alguno en Castelia y decidí ayudarlo.",
    :RewardString => "nil"
  }

  Quest20 = {
    :ID => "20",
    :Name => "Estadísticas Electorales",
    :QuestGiver => "Policía",
    :Stage1 => "Pregunta a 5 personas.",
    :Stage2 => "Notifique a la policía.",
    :Location1 => "Carretera frente al mar",
    :Location2 => "Cuartel de Castelia",
    :QuestDescription => "Un policía me pidió que encuestara a la gente en las calles de Castelia. Debo hablar con 3 personas y averiguar qué piensan de los partidos políticos.",
    :RewardString => "nil"
  }

  Quest21 = {
    :ID => "21",
    :Name => "Pokémon desaparecidos",
    :QuestGiver => "nil",
    :Stage1 => "Encontra a los pokémon",
    :Stage2 => "Liberta a los pokémon",
    :Location1 => "???",
    :Location2 => "Ciudad de los motociclistas",
    :QuestDescription => "Varios entrenadores en Castelia informan que sus pokemon están desapareciendo de los pozos. La mayoría cree que son los motociclistas, quienes están causando muchos problemas últimamente. Necesito resolver este problema y traer de vuelta a estos pokemon.",
    :RewardString => "nil"
  }

  Quest22 = {
    :ID => "22",
    :Name => "¡Reconstruyendo el puesto de bayas!",
    :QuestGiver => "Vendedora de bayas",
    :Stage1 => "Dona $500",
    :Stage2 => "Dona $1000",
    :Stage3 => "Dona $2000",
    :Location1 => "Café Sonata",
    :Location2 => "Carretera frente al mar",
    :Location3 => "Carretera frente al mar",
    :QuestDescription => "Conocí a una señora en Café Sonata que perdió su puesto de bayas después de una crisis. Debo donarle algo de dinero para darle una segunda oportunidad.",
    :RewardString => "nil"
  }

  Quest23 = {
    :ID => "23",
    :Name => "Perla para el viejo",
    :QuestGiver => "Anciano",
    :Stage1 => "Entrega una perla",
    :Location1 => "Plaza Central",
    :QuestDescription => "Un anciano en Plaza Central me pidió que recogiera una perla y se la diera, él cree que su esposa estará más feliz recordando el primer regalo que recibió de él.",
    :RewardString => "nil"
  }

  Quest24 = {
    :ID => "24",
    :Name => "Hijo de pez, pececito es",
    :QuestGiver => "Pescador del muelle de la libertad",
    :Stage1 => "Encuentra al tío del pescador",
    :Stage2 => "Llevale un Frillish al pescador",
    :Location1 => "Nimbasa",
    :Location2 => "Castelia",
    :QuestDescription => "Un joven pescador me pidió ayuda para atrapar un Frillish para impresionar a su padre, debo encontrar la manera de atrapar uno y entregárselo.",
    :RewardString => "nil"
  }

  Quest25 = {
    :ID => "25",
    :Name => "Grupo de danza",
    :QuestGiver => "Bailarín de breakdance",
    :Stage1 => "Encuentra otros dos bailarines de breakdance",
    :Stage2 => "Conoce al bailarín de breakdance",
    :Location1 => "Castelia",
    :Location2 => "Plaza Central",
    :QuestDescription => "Encontré a un bailarín de breakdance en Castelia que quiere formar un grupo de baile, me pidió que buscara otros bailarines de breakdance en los alrededores de Castelia que pudieran formar parte del grupo.",
    :RewardString => "nil"
  }

  Quest26 = {
    :ID => "26",
    :Name => "Especialistas en triple tríada",
    :QuestGiver => "nil",
    :Stage1 => "Derrota a los dos expertos.",
    :Location1 => "Game Corner",
    :QuestDescription => "Descubrí que hay dos jugadores profesionales de Triple Triad que desafían a otros jugadores a vencerlos en juegos con reglas especiales en Game Corner. Enfrentarlos podría ser una buena idea.",
    :RewardString => "nil"
  }

  Quest27 = {
    :ID => "27",
    :Name => "Los Guardianes del Complejo del desierto",
    :QuestGiver => "nil",
    :Stage1 => "Derrota o captura a los guardianes.",
    :Location1 => "Complejo del desierto",
    :QuestDescription => "Hay cinco Pokémon especiales repartidos por todo el Complejo del desierto. Puedo poner a prueba mis habilidades desafiándolos o tratar de capturarlos.",
    :RewardString => "nil"
  }

  Quest28 = {
    :ID => "28",
    :Name => "Invasión interdimensional en el desierto",
    :QuestGiver => "nil",
    :Stage1 => "Derrota o captura Ultra Bestias",
    :Location1 => "Complejo del desierto",
    :QuestDescription => "Varias Ultra Bestias se han reunido en una cueva en Complejo del desierto, debería visitar este lugar.",
    :RewardString => "nil"
  }

end