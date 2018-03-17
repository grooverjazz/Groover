puts 'SEEDING ROLES'
[ :admin ].each do |role|
  Role.where({ name: role }, without_protection: true).first_or_create
end

puts 'SEEDING USERS'
User.create [
  {
    email: 'webcie@grooverjazz.nl',
    password: 'password'
  },
  {
    email: 'david@test.nl',
    password: 'test123'
  },
  {
    email: 'ward@test.nl',
    password: 'test123'
  },
  {
    email: 'lars@test.nl',
    password: 'test123'
  }
]

puts 'SEEDING COMBOS'
Combo.create [
  {
    name: 'Van Gasteren Quintet',
    short_text: 'Jazz volgens het boekje of toch niet.',
    description: 'Vier jonge knapen onder leiding van een bebaarde drummer spelen jazz classics uit de 50’s en 60’s. Van bebop tot ballads wordt er geimproviseerd met een flinke dosis energie. Of je wilt feesten met double swing of relaxen met iets subtielers, alles kan. Geinspireerd door legendes zoals Charles Mingus of Sonny Rollins. Ze zijn al sinds 2016 bezig met jazz spelen volgens het boekje ... of toch niet! Keer op keer bouwen ze van kleine beginselen een spannend spektakel op. Dus boek ze snel want de drumsolo’s gaan als warme bara’s over de toonbank.',
    cover: File.new("app/assets/images/vangasteren.jpg")
  },
  {
    name: 'Wakki',
    short_text: 'Wakki pakzin.',
    description: 'Wakki is een zespersoons jazzfunkformatie uit Delft die de energie van funk en de vrijheid van jazz combineert met elementen uit verschillende andere genres. Voor iedereen is er iets herkenbaars, of dat nu Snarky Puppy, James Brown, Pink Floyd, Avishai Cohen, Bob Marley, Led Zeppelin of Santana is. Wakki is een avontuur waar je naar kunt luisteren en tegelijkertijd op wilt gaan bewegen, waar complexe ritmes op een dansbare manier worden neergezet met verhalende thema’s en waar muzikale vrijheid in nummers ervoor zorgt dat elk optreden anders is. De band is gewend om in verschillende settings te spelen, van festivals en cafés tot netwerkborrels en studentenkeukens.',
    cover: File.new("app/assets/images/wakki.jpg")
  },
  {
    name: 'Heemels Trio',
    short_text: 'Heemels Trio pakzin.',
    description: 'Met een drummer die normaal rock speelt een funky bassist en een pianist die alleen maar jazz kan, zet het Heemels trio een fusie van Scandinavische jazz, klassiek en een vleugje hiphop neer. Tijdens het spelen wordt de luisteraar mee op reis genomen met dromerige melodieën die langzaam opbouwen naar hevige intermezzo’s die oorsprong lijken te hebben uit een ondergrondse discotheek. With a drummer that normally plays rock, a funky bass player and a pianist that can only play jazz, Heemels Trio creates a fusion of Scandinavian jazz, Classical with a scent Hip-Hop. Whilst playing the listener will be taken on a journey, starting with soothing melodies which eventually build up to bombastic intermezzo’s which seem to originate form an underground discotheque.',
    cover: File.new("app/assets/images/heemelstrio.jpg")
  },
  {
    name: 'El Último Mambo',
    short_text: 'Soy el fuego que arde tu piel',
    description: 'Jazz is enorm veelzijdig. En dat laat de enige echte Latin Jazz Band van Groover, El Último Mambo dan ook duidelijk naar voren komen. Onze 17 koppige, internationale band speelt stroeve jazz deuntjes, verpakt in dansbare nummers waar niemand eigenlijk op kan stil blijven staan. Met onze bezetting van onder andere een timbalesspeler, conga speler, 2 trompetisten, 3 saxofonisten, 2 zangers en 2 zangeressen, vormen wij een grote diverse band. Op menig feestjes heeft El Último Mambo het publiek al aan het (salsa) dansen gekregen met herkenbare nummers als Mambo #5, La Vida Es Un Carnaval en het welbekende Suavemente van Elvis Crespo. Daarnaast brengen wij ook wat minder bekende nummers ten gehore, die het repertoire afwisselend, interessant en dansbaar maken, zoals Flootie, Lupita en Demasiado Corazon.',
    cover: File.new("app/assets/images/elultimomambo.jpg")
  }
]

puts 'ADDING ROLES TO USERS'
User.find(1).add_role :admin
User.find(2).add_role :admin
User.find(3).add_role :admin
User.find(4).add_role :admin

puts 'SEEDING ASSOCIATION'
Association.create [
  {
    content: 'Groover is dé Studenten Jazzvereniging van Delft, een plek waar de Delftse studenten naast hun studie kunnen genieten van diverse muziek als jazz, soul en funk op iedere mogelijke wijze. Dit gaat hand in hand met een muzikale en organisatorische ontwikkeling, zowel individueel als in groepsverband. Groover is een bruisende plek waar honderden technische studenten samenkomen om zich cultureel te verrijken.'
  }
]

puts 'SEEDING CONTACTS'
Contact.create [
  {
    boeking_info: 'Gijs Vis
06-21880038
boekingen@grooverjazz.nl',
    adres_info: 'D.S.J.V. Groover t.a.v. Bestuur
Brabantse Turfmarkt 9
2611 CK Delft
The Netherlands
bestuur@grooverjazz.nl',
    kvk_info: 'K.v.K. nr. 27294002',
    socialmedia_info:'',
    bestuur_info: ''
  }
]

puts 'SEEDING COMMISSIONS'
Commission.create [
  {
    name: 'WebCie',
    description: 'Stoere mannen die websites bouwen jwz broer.',
    members: '2,3,4'
  }  
]