# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "The database will be reset... Are you sure? (Type 'Y' to comfirm)"
validation = gets.chomp
if validation.include?("Y")

  puts "Cleaning database..."
  User.destroy_all
  Book.destroy_all

  puts "Creating new users..."

  default_url = "default-book.png"

  # User 1
  User.create!(
    username: "Frédou_du77",
    first_name:"Frédéric",
    last_name:"Régent",
    adress:"11 rue Benjamin Franklin, 77000 La Rochette",
    birthdate: Date.new(1996, 9, 12),
    email: "fred@book2book.com",
    password: "123456",
    password_confirmation: "123456",
  )

  # User 2
  User.create!(
    username: "Mister_Dré78",
    first_name:"André",
    last_name:"Leroy-Sismondino",
    adress:"1 Rue José Maria de Hérédia, 78150 Le Chesnay",
    birthdate: Date.new(1998, 12, 4),
    email: "andre@book2book.com",
    password: "123456",
    password_confirmation: "123456",
  )

  # User 3
  User.create!(
    username: "Camp_Rock_Sahelma92",
    first_name:"Sahelma",
    last_name:"Zakha",
    adress:"200 Av. de la République, 92000 Nanterre",
    birthdate: Date.new(2000, 3, 24),
    email: "selma@book2book.com",
    password: "123456",
    password_confirmation: "123456",
  )

  # User 4
  User.create!(
    username: "Pause_Dodo_du95",
    first_name:"Emeraude",
    last_name:"Ntondo",
    adress:"44 Bd Rhin et Danube, 95130 Franconville",
    birthdate: Date.new(2000, 5, 26),
    email: "emeraude@book2book.com",
    password: "123456",
    password_confirmation: "123456",
  )

  # Book 1
  Book.create!(
    title: "Harry Potter à L'école des Sorciers",
    author: "J. K. Rowling",
    published_year: 2017,
    reservation_price: 0.87,
    description: "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom. Amitié, surprises, dangers, scènes comiques, Harry découvre ses pouvoirs et la vie à Poudlard. Le premier tome des aventures du jeune héros vous ensorcelle aussitôt!",
    picture_url: "https://images.isbndb.com/covers/40/82/9781547904082.jpg",
    user_id: 1
  )

  # Book 2
  Book.create!(
    title: "Dragon Ball, Vol. 1",
    author: "Akira Toriyama",
    published_year: 2003,
    reservation_price: 0.68,
    description: "Grâce au célébrissime « Dragon Ball », Akira Toriyama est sans aucun doute l'auteur de manga le plus célèbre au monde. Il commence à publier ses premières histoires dans le magazine Shônen Jump dès 1980 avec « Docteur Slump » qu'il dessine pendant quatre ans. Il rencontre un succès mondial avec « Dragon Ball », publié dans le même magazine pendant 10 ans, de 1985 à 1995, totalisant plus de 8000 pages de bande dessinée. Une série magistrale qui le propulse parmi les plus grands. Il signe ensuite « Cowa » en 1998 et deux one-shot en 2000, « Kajika » et « Sand Land », publiés chez Glénat. Le studio que dirige Akira Toriyama s'appelle « Bird Studio » et en plus de la bande dessinée il a travaillé sur le design de personnages de jeux vidéo comme « Toruneko no daibôken » ou « Chrono Trigger ».",
    picture_url: "https://m.media-amazon.com/images/I/51doNJR9pTL._SY445_SX342_.jpg",
    user_id: 1
  )

  # Book 3
  Book.create!(
    title: "GTO (Great Teacher Onizuka), tome 1",
    author: "Tôru Fujisawa",
    published_year: 2001,
    reservation_price: 0.37,
    description: "Ancien voyou, chef de gang, Eikichi Onizuka décide un jour de devenir prof. Sa vocation n'a rien de pédagogique. Ce qu'il veut, c'est pouvoir sortir avec les étudiantes du lycée où il travaille. Pourtant, au fil des chapitres, on se rend compte que le sens de la justice et de l'honneur de notre héros vont l'amener à devenir un véritable enseignant.",
    picture_url: "https://m.media-amazon.com/images/I/81VDeAyH1GL._SY425_.jpg",
    user_id: 1
  )

  # Book 4
  Book.create!(
    title: "Winx Club, tome 1 : Les pouvoirs de Bloom",
    author: "Sophie Marvaud",
    published_year: 2021,
    reservation_price: 1.48,
    description: "Bloom a seize ans et mène une vie tranquille avec ses parents à Gardenia. Jusqu'au jour où elle porte secours à une jeune fille inconnue et ailée ... Alors qu'elles luttent contre des créatures magiques, une force mystérieuse jaillit des mains de Bloom. Bloom serait-elle une fée, comme sa nouvelle amie, Stella ?",
    picture_url: "https://images.isbndb.com/covers/02/91/9782012010291.jpg",
    user_id: 3
  )

  # Book 5
  Book.create!(
    title: "Barbie - Vie quotidienne 06 - Une super maman",
    author: "Mattel",
    published_year: 2021,
    reservation_price: 0.87,
    description: "Mme Roberts hésite à accepter une nouvelle mission de travail... car elle passerait moins de temps à la maison avec ses filles. Heureusement, Barbie et ses sœurs ont décidé de soutenir leur maman en s’occupant de tout... coûte que coûte !",
    picture_url: "https://m.media-amazon.com/images/I/51FRJXnJSTS._SY445_SX342_.jpg",
    user_id: 3
  )

  # Book 6
  Book.create!(
    title: "Livre de cuisine Marocaine: Recettes délicieuses et authentiques",
    author: "Amina Malki",
    published_year: 2022,
    reservation_price: 0.64,
    description: "La cuisine marocaine est parmi les cuisines les plus demandées dans le monde méditerranéen. Retrouvez des recettes marocaines délicieuses et authentiques préparées avec une gourmande pour vous satisfaire d’une cuisine méditerranéenne qui a tant de goût et d’histoire.",
    picture_url: "https://m.media-amazon.com/images/I/61vWfiijHJL._SY425_.jpg",
    user_id: 3
  )

  # Book 7
  Book.create!(
    title: "One Piece - Tome 1 : A l'aube d'une grande aventure",
    author: "Eiichiro Oda",
    published_year: 2000,
    reservation_price: 1.19,
    description: "Nous sommes à l'ère des pirates. Lufy, un garçon espiègle, rêve de devenir le roi des pirates en trouvant le One Piece, un fabuleux trésor. Par mégarde, Lufy a avalé un jour un fruit démoniaque qui l'a transformé en homme caoutchouc. Depuis, il est capable de contorsionner son corps élastique dans tous les sens, mais il a perdu la faculté de nager. Avec l'aide de ses précieux amis, dont le fidèle Shanks, il va devoir affronter de redoutables pirates dans des aventures toujours plus rocambolesques.",
    picture_url: "https://images.isbndb.com/covers/85/25/9782723488525.jpg",
    user_id: 2
  )

  # Book 8
  Book.create!(
    title: "L'Attaque des Titans - Tome 1",
    author: "Hajime Isayama",
    published_year: 2013,
    reservation_price: 0.97,
    description: "Le monde appartient désormais aux Titans, des êtres gigantesques qui ont presque décimé l’Humanité. Voilà une centaine d’années, les derniers rescapés ont bâti une place forte, une cité cernée d’une haute muraille au sein de laquelle vivent aujourd’hui leurs descendants. Parqués, ignorants tout du monde extérieur, ils s’estiment au moins à l’abri de ces effroyables êtres qui ne feraient d’eux qu’une bouchée. Hélas, cette illusion de sécurité vole en éclats le jour où surgit un Titan démesuré, encore bien plus colossal que tous les autres. S’engage alors un combat désespéré pour la survie du genre humain...",
    picture_url: "https://m.media-amazon.com/images/I/91tYV+R03kL._SY425_.jpg",
    user_id: 2
  )

  # Book 9
  Book.create!(
    title: "Kaze Chainsaw Man - Tome 1",
    author: "Tatsuki Fujimoto",
    published_year: 2020,
    reservation_price: 0.86,
    description: "Pour rembourser ses dettes, Denji, jeune homme dans la dèche la plus totale, est exploité en tant que Devil Hunter avec son chien-démon-tronçonneuse, Pochita . Mais suite à une cruelle trahison, il voit enfin une possibilité de se tirer des bas-fonds où il croupit ! Devenu surpuissant après sa fusion avec Pochita, Denji est recruté par une organisation de Devil Hunters et part à la chasse aux démons...",
    picture_url: "https://m.media-amazon.com/images/I/81tadC4LSVL._SY425_.jpg",
    user_id: 2
  )

  # Book 10
  Book.create!(
    title: "La Belle au Bois dormant",
    author: "Charles Perrault",
    published_year: 2014,
    reservation_price: 0.39,
    description: "Le roi et la reine ont organisé une fête splendide au palais pour la baptême de la petite princesse. Et ils lui ont donné pour marraines toutes les fées du royaume. Hélas, ils avaient oublié d'inviter une vieille fée qui vivait recluse dans sa tour. Pour se venger, elle s'approcha du berceau de l'enfant et lui prédit qu'elle se percerait la main d'un fuseau et qu'elle en mourrait...",
    picture_url: "https://pictures.abebooks.com/isbn/9782408045067-us.jpg",
    user_id: 4
  )

  # Book 11
  Book.create!(
    title: "9 Préceptes du Muay Thaï",
    author: "Novus",
    published_year: 2023,
    reservation_price: 0.95,
    description: "Aujourd’hui bien connu en France et aux quatre coins du monde en tant que sport de combat, le Muay thaï est un art martial ancestral porteur de la culture et de la tradition du peuple thaïlandais.",
    picture_url: "https://m.media-amazon.com/images/I/71jBiL5XeKL._SY425_.jpg",
    user_id: 4
  )

  # Book 12
  Book.create!(
    title: "Sahelma au pays des Merveilles",
    author: "Aurélien",
    published_year: 2023,
    reservation_price: 500,
    description: "Un beau jour, Sahelma se balada dans son jardin. Soudainement, elle apperçu une lapine (Dalina) avec une drôle de montre. Elle se mit a la courser et tomba dans une trou. Elle se retrouva au Pays des Merveilles et vécu des horreurs tout en étant coursé par GILSON Le Chapelier Fou !",
    picture_url: default_url,
    user_id: 4
  )

  # Book 13
  Book.create!(
    title: "Laïd au Concert de Gazo",
    author: "Dalina",
    published_year: 2023,
    reservation_price: 0.7,
    description: "Un jour Laïd alla au concert de gazo. il revint sans téléphone et sans espoir.",
    picture_url: default_url,
    user_id: 3
  )

  # Book 14
  Book.create!(
    title: "Recette de Pâte/Lardons de Gallaad",
    author: "Ahmed Salah",
    published_year: 2023,
    reservation_price: 0.7,
    picture_url: default_url,
    description: "Gallaad vous fait des super recettes de Pâtes au Lardons boucanés !",
    user_id: 3
  )

  # Review 1
  Review.create!(
    content: "Ma fille de 7ans vient d'apprendre a lire et je chercher un livre pour ses premières lectures : elle a tout simplement dévoré ce livre en un week-end.",
    rating: rand(0..5),
    user_id: 3,
    book_id: 5
  )

  # Review 2
  Review.create!(
    content: "Avant je n'aimais pas lire et j'ai commencé a lire la série vers 6 ans depuis ma chambre est remplie de livre !! Grâce à ce bouquin lire est un passion...",
    rating: rand(0..5),
    user_id: 3,
    book_id: 4
  )

  # Review 3
  Review.create!(
    content: "il est vraiment dommage de constater que dans le livre dans la version anglaise nous avons plus de détaille dans la narration que dans la version française que c'est-il donc passé la langue française n'est pas pauvre a se point la ....",
    rating: rand(0..5),
    user_id: 1,
    book_id: 1
  )

  # Review 4
  Review.create!(
    content: "Achat fait pour ma fille de 13 ans qui est fan de Harry Potter !! Elle est très contente du livre",
    rating: rand(0..5),
    user_id: 1,
    book_id: 1
  )

  # Review 5
  Review.create!(
    content: "Suivant ce manga depuis près de 10 ans, je suis ravie de voir et revoir les aventures de Luffy et son équipage à travers les livres. Manga à conseiller aux personnes qui adorent les aventures liées à la piraterie.",
    rating: rand(0..5),
    user_id: 2,
    book_id: 7
  )

  # Review 6
  Review.create!(
    content: "Une super histoire qui traite habillement de vrai sujet de société et qui captive toujours après plus de 100 tomes !",
    rating: rand(0..5),
    user_id: 2,
    book_id: 7
  )

  # Review 7
  Review.create!(
    content: "Très satisfait. Les images sont magnifiques, à l'identique des films de Walt Disney. --Emeraud",
    rating: rand(0..5),
    user_id: 4,
    book_id: 10
  )

  # Review 8
  Review.create!(
    content: "Ma petite fille Emeraude était ravie de continuer sa collection",
    rating: rand(0..5),
    user_id: 4,
    book_id: 10
  )

  # Review 9
  Review.create!(
    content: "J'ai A-D-O-R-É, j'ai bcp pleuré, j'ai demandé à ma meuf de me le louer. -Laïd",
    rating: 5,
    user_id: 4,
    book_id: 12
  )

  puts "Finished!"
else
  puts "You did not type 'Y'."
end
puts "Now exiting..."
