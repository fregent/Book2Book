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
  Book.create!(
    title: "Harry Potter à L'école des Sorciers",
    author: "J. K. Rowling",
    published_year: 1997,
    reservation_price: 0.13,
    description: "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom. Amitié, surprises, dangers, scènes comiques, Harry découvre ses pouvoirs et la vie à Poudlard. Le premier tome des aventures du jeune héros vous ensorcelle aussitôt!",
    picture_url: "http://books.google.com/books/content?id=nvijsUyJYR4C&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE72jixEJVPzQ06ens75mHxbDDJbRL_SuV_wms_J65dUNO-4HUxuzg03P0YpdLSrvMOZNsS6QFDVOptv0RCydDYCMbYdz4gaCy9SyRYIgjwL6EhJhDLuq9IY2nJOSaOqctexRKGTk&source=gbs_api",
    user_id: 1
  )
  Book.create!(
    title: "Winx Club, tome 1 : Les pouvoirs de Bloom",
    author: "Sophie Marvaud",
    published_year: 2021,
    reservation_price: 0.12,
    description: "Bloom a seize ans et mène une vie tranquille avec ses parents à Gardenia. Jusqu'au jour où elle porte secours à une jeune fille inconnue et ailée ... Alors qu'elles luttent contre des créatures magiques, une force mystérieuse jaillit des mains de Bloom. Bloom serait-elle une fée, comme sa nouvelle amie, Stella ?",
    picture_url: "http://books.google.com/books/publisher/content?id=eWgOEAAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70jTjCZcdPiZFCyqqugTOHnn2Yz12xXLyA0m7gqovlcdC9BF7gMe_EdIZrAwTnr9Ex47_38-jNkBXkE74HrVuFGAV9Of13pMy5AunnEH5ykhcnRBXOqFLV9uZPoJ8GllN3-IsDK&source=gbs_api",
    user_id: 3
  )
  Book.create!(
    title: "One Piece - Tome 1 : A l'aube d'une grande aventure",
    author: "Eiichiro Oda",
    published_year: 2000,
    reservation_price: 0.19,
    description: "Nous sommes à l'ère des pirates. Lufy, un garçon espiègle, rêve de devenir le roi des pirates en trouvant le One Piece, un fabuleux trésor. Par mégarde, Lufy a avalé un jour un fruit démoniaque qui l'a transformé en homme caoutchouc. Depuis, il est capable de contorsionner son corps élastique dans tous les sens, mais il a perdu la faculté de nager.
    Avec l'aide de ses précieux amis, dont le fidèle Shanks, il va devoir affronter de redoutables pirates dans des aventures toujours plus rocambolesques.",
    picture_url: "http://books.google.com/books/publisher/content?id=AagcAwAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70XgpD2qzmHRutgM2L7e7peF594MA6ySeb1fABtrmxppPzHoQJp9O7MPe-0AU_m0AwrcgXrAvsSoX3mf-cRusQKA46hqFN3EskbGGsiao4AqEWt6Vn0iG2LmEy2EY3wmtjJdX3n&source=gbs_api",
    user_id: 2
  )
  Book.create!(
    title: "La Belle au Bois dormant",
    author: "Charles Perrault",
    published_year: 2014,
    reservation_price: 0.39,
    description: "Le roi et la reine ont organisé une fête splendide au palais pour la baptême de la petite princesse. Et ils lui ont donné pour marraines toutes les fées du royaume. Hélas, ils avaient oublié d'inviter une vieille fée qui vivait recluse dans sa tour. Pour se venger, elle s'approcha du berceau de l'enfant et lui prédit qu'elle se percerait la main d'un fuseau et qu'elle en mourrait...",
    picture_url: "http://books.google.com/books/publisher/content?id=PfVNDQAAQBAJ&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE717OfDu7viUTz428yXVy0qdQCy7XSPr6QP62c67B4j1nDSPngsY9NdXFbTWjF4PWE3z3tknh1wU9KYL-3siSETBv0lZJvtRrX0PC0kkHWnZgAnHhdOVNfvq0HE1QRUu9nnGtehq&source=gbs_api",
    user_id: 4
  )

  Book.create!(
    title: "Sahelma au pays des Merveillest",
    author: "Aurélien",
    published_year: 2023,
    reservation_price: 500,
    description: "Un beau jour, Sahelma se balada dans son jardin. Soudainement, elle apperçu une lapine (Dalina) avec une drôle de montre. Elle se mit a la courser et tomba dans une trou. Elle se retrouva au Pays des Merveilles et vécut des horreurs tout en étant coursé par GILSON Le Chapelier Fou",
    picture_url: default_url,
    user_id: 4
  )

  Book.create!(
    title: "Laïd au Concert de Gazo",
    author: "Dalina",
    published_year: 2023,
    reservation_price: 0.7,
    description: "Un jour Laïd alla au concert de gazo. il revint sans téléphone et sans espoirs.",
    picture_url: default_url,
    user_id: 3
  )
  Book.create!(
    title: "Recette de Pâte/Lardons de Gallaad",
    author: "Ahmed Salah",
    published_year: 2023,
    reservation_price: 0.7,
    picture_url: default_url,
    description: "Gallaad vous fait des super recettes de Pâtes au Lardons boucanés",
    user_id: 3
  )



  Review.create!(
    content: "Ma fille de 7ans vient d'apprendre a lire et je chercher un livre pour ses premières lectures : elle a tout simplement dévoré ce livre en un week-end.",
    rating: rand(0..5),
    user_id: 3,
    book_id: 2
  )

  Review.create!(
    content: "Avant je n'aimais pas lire et j'ai commencé a lire la série vers 6 ans depuis ma chambre est remplie de livre !! Grâce à ce bouquin lire est un passion...",
    rating: rand(0..5),
    user_id: 3,
    book_id: 2
  )

  Review.create!(
    content: "il est vraiment dommage de constater que dans le livre dans la version anglaise nous avons plus de détaille dans la narration que dans la version française que c'est-il donc passé la langue française n'est pas pauvre a se point la ....",
    rating: rand(0..5),
    user_id: 1,
    book_id: 1
  )

  Review.create!(
    content: "Achat fait pour ma fille de 13 ans qui veut se perfectionner en anglais. Elle est très contente du livre",
    rating: rand(0..5),
    user_id: 1,
    book_id: 1
  )

  Review.create!(
    content: "Suivant ce manga depuis près de 10 ans, je suis ravie de voir et revoir les aventures de Luffy et son équipage à travers les livres. Manga à conseiller aux personnes qui adorent les aventures liées à la piraterie.",
    rating: rand(0..5),
    user_id: 2,
    book_id: 3
  )

  Review.create!(
    content: "Une super histoire qui traite habillement de vrai sujet de société et qui captive toujours après plus de 100 tomes !",
    rating: rand(0..5),
    user_id: 2,
    book_id: 3
  )

  Review.create!(
    content: "Très satisfait. Les images sont magnifiques, à l'identique des films de Walt Disney. --Emeraud",
    rating: rand(0..5),
    user_id: 4,
    book_id: 4
  )

  Review.create!(
    content: "Ma petite fille Emeraude était ravie de continuer sa collection",
    rating: rand(0..5),
    user_id: 4,
    book_id: 4
  )

  Review.create!(
    content: "J'ai A-D-O-R-É, j'ai bcp pleuré, j'ai demandé à ma meuf de me le louer. -Laïd",
    rating: 5,
    user_id: 4,
    book_id: 5
  )


  puts "Finished!"
else
  puts "You did not type 'Y'."
end
puts "Now exiting..."
