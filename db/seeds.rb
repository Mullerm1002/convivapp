Message.destroy_all
Reservation.destroy_all
Chatroom.destroy_all
User.destroy_all
Offer.destroy_all



matt = User.new(email: "matt@gmail.com",
password: "matt@gmail.com", 
first_name: "Matthieu",
last_name: "Muller", 
role:"senior",
description: "Bonjour je m'appelle Matthieu, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1960-11-20")

img_user_1 = File.open("#{Rails.root}/app/assets/images/matt.jpeg")
matt.avatar.attach(io: img_user_1, filename: "matt.jpeg", content_type: 'image/jpeg')
matt.save!

gustave = User.new(email: "gustave@gmail.com",
password: "gustave@gmail.com", 
first_name: "Gustave",
last_name: "Ephelle", 
role:"senior",
description: "Bonjour je m'appelle Gustave, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1832-12-15")

img_user_2 = File.open("#{Rails.root}/app/assets/images/gustave.jpeg")
gustave.avatar.attach(io: img_user_2, filename: "gustave.jpeg", content_type: 'image/jpeg')
gustave.save!

leo = User.new(email: "leo@gmail.com",
password: "leo@gmail.com", 
first_name: "Léo",
last_name: "Fabbro", 
role:"senior",
description: "Bonjour je m'appelle Léo, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1959-07-13")

img_user_3 = File.open("#{Rails.root}/app/assets/images/leo.jpeg")
leo.avatar.attach(io: img_user_3, filename: "leo.jpeg", content_type: 'image/jpeg')
leo.save!

alex = User.new(email: "alex@gmail.com",
password: "alex@gmail.com", 
first_name: "Alex",
last_name: "Lecaplain", 
role:"senior",
description: "Bonjour je m'appelle Alex, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1958-07-13")

img_user_4 = File.open("#{Rails.root}/app/assets/images/alex.jpeg")
alex.avatar.attach(io: img_user_4, filename: "alex.jpeg", content_type: 'image/jpeg')
alex.save!

emilien = User.new(email: "emilien@gmail.com",
password: "emilien@gmail.com", 
first_name: "Emilien",
last_name: "LeMaoult", 
role:"senior",
description: "Bonjour je m'appelle Emilien, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1960-06-25")

img_user_5 = File.open("#{Rails.root}/app/assets/images/emilien.jpeg")
emilien.avatar.attach(io: img_user_5, filename: "emilien.jpeg", content_type: 'image/jpeg')
emilien.save!

emilie = User.new(email: "emilie@gmail.com",
password: "emilie@gmail.com", 
first_name: "Emilie",
last_name: "Cortijos", 
role:"senior",
description: "Bonjour je m'appelle Emilie, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1965-06-25")

img_user_6 = File.open("#{Rails.root}/app/assets/images/emilie.jpeg")
emilie.avatar.attach(io: img_user_6, filename: "emilie.jpeg", content_type: 'image/jpeg')
emilie.save!

adeline = User.new(email: "adeline@gmail.com",
password: "adeline@gmail.com", 
first_name: "Adeline",
last_name: "LeMaoult", 
role:"senior",
description: "Bonjour je m'appelle Adeline, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1970-06-25")

img_user_7 = File.open("#{Rails.root}/app/assets/images/adeline.jpeg")
adeline.avatar.attach(io: img_user_7, filename: "adeline.jpeg", content_type: 'image/jpeg')
adeline.save!

jeremy = User.new(email: "jeremy@gmail.com",
password: "jeremy@gmail.com", 
first_name: "Jeremy",
last_name: "Portier", 
role:"senior",
description: "Bonjour je m'appelle Jeremy, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1930-06-25")

img_user_8 = File.open("#{Rails.root}/app/assets/images/jeremy.jpeg")
jeremy.avatar.attach(io: img_user_8, filename: "jeremy.jpeg", content_type: 'image/jpeg')
jeremy.save!

paul = User.new(email: "paul@gmail.com",
password: "paul@gmail.com", 
first_name: "Paul",
last_name: "Barbedienne", 
role:"senior",
description: "Bonjour je m'appelle Paul, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1963-06-25")

img_user_9 = File.open("#{Rails.root}/app/assets/images/paul.jpeg")
paul.avatar.attach(io: img_user_9, filename: "paul.jpeg", content_type: 'image/jpeg')
paul.save!

yvette = User.new(email: "yvette@gmail.com",
password: "yvette@gmail.com", 
first_name: "Yvette",
last_name: "Dupont", 
role:"senior",
description: "Bonjour je m'appelle Yvette, je suis un nouvel utilisateur sur Conviv'App 
mais j'ai hâte d'utiliser ce superbe site !",
birth_date: "1943-06-25")

img_user_10 = File.open("#{Rails.root}/app/assets/images/yvette.jpeg")
yvette.avatar.attach(io: img_user_10, filename: "yvette.jpeg", content_type: 'image/jpeg')
yvette.save!

convivapp = User.create(email: "convivapp@gmail.com", password: "convivapp@gmail.com", first_name: "Conviv'App", role: "senior")

bienvenue = Chatroom.create(name: "Bienvenue", user_junior: User.first, user_senior: User.last)

Message.create(chatroom: bienvenue, user: convivapp, content: "Hello Conviv'Apper ! 
Bienvenue sur notre page de discussion ! 🥳🎉
Voici l'endroit idéal pour échanger, discuter et organiser vos invitations de repas avec nos autres Conviv'Apper.
⬅️ Cliquez sur un nom à gauche pour ouvrir votre discussion.")

offer_1 = Offer.new(
  address: "123 Rue du Vieux Colombier, Paris 6e Arrondissement, Île-de-France, France",
  title: "Mon 1er repas Conviv'App ! 🤗 Gratin de chou",
  date: "Sat, 20 Nov 2021",
  description: "Partagez un moment convivial chez moi autour d'un gratin de chou fait maison ! 👩‍🍳",
  tag_list:"Histoires",
  user: matt
)

img_1 = File.open("#{Rails.root}/app/assets/images/4.jpeg")

offer_1.photo.attach(io: img_1, filename: "offer_1.jpeg", content_type: 'image/jpeg')

offer_1.save!

offer_4 = Offer.new(
  address: "110 Rue Oberkampf, Paris 11e Arrondissement, Île-de-France, France",
  title: "Poké bowl revisité par mes soins",
  date: "Sat, 20 Nov 2021",
  description: "Débat sur les jeux de cartes, poké bowl d'exception suivi d'une partie de cartes",
  tag_list:"Cartes",
  user: emilien
)

img_4 = File.open("#{Rails.root}/app/assets/images/3.jpeg")

offer_4.photo.attach(io: img_4, filename: "offer_4.jpeg", content_type: 'image/jpeg')

offer_4.save!

offer_2 = Offer.new(
  address: "34 Rue du Rendez-Vous, Paris 12e Arrondissement, Île-de-France, France",
  title: "Dîner et jeux de société (scrabble addict)🎲",
  date: "Tue, 23 Nov 2021",
  description: "Bonjour les jeunes ! Venez manger une excellente tarte au camembert à la maison",
  tag_list:"Scrabble",
  user: gustave
)

img_2 = File.open("#{Rails.root}/app/assets/images/1.jpeg")

offer_2.photo.attach(io: img_2, filename: "offer_2.jpeg", content_type: 'image/jpeg')

offer_2.save!

offer_3 = Offer.new(
  address: "79 Rue du Rendez-Vous, Paris 12e Arrondissement, Île-de-France, France",
  title: "Moment de partage avec des légumes du jardin 🥣",
  date: "Mon, 22 Nov 2021",
  description: "J'ai beaucoup de légumes et pas assez de bouche pour tout utiliser...",
  tag_list: "Feu",
  user: leo
)

img_3 = File.open("#{Rails.root}/app/assets/images/2.jpeg")

offer_3.photo.attach(io: img_3, filename: "offer_3.jpeg", content_type: 'image/jpeg')

offer_3.save!


offer_5 = Offer.new(
  address: "12 Rue du Faubourg Poissonnière, Paris 10e Arrondissement, Île-de-France, France",
  title: "Le plat de mon enfance avec son histoire",
  date: "Thu, 25 Nov 2021",
  description: "Bonjour les enfants 👋, Venez découvrir le plat de mon enfance !! 😊 ",
  tag_list:"Histoires",
  user: emilien
)

img_5 = File.open("#{Rails.root}/app/assets/images/5.jpeg")

offer_5.photo.attach(io: img_5, filename: "offer_5.jpeg", content_type: 'image/jpeg')

offer_5.save!

offer_6 = Offer.new(
  address: "12 Rue de Buzenval, Paris 20e Arrondissement, Île-de-France, France",
  title: "Le fameux burger de mon ancien restaurant",
  date: "Fri, 26 Nov 2021",
  description: "👋 Je vous propose de revivre le succès de mon burger fait maison ! 😊 ",
  tag_list:"Histoires",
  user: emilie
)

img_6 = File.open("#{Rails.root}/app/assets/images/6.jpeg")

offer_6.photo.attach(io: img_6, filename: "offer_6.jpeg", content_type: 'image/jpeg')

offer_6.save!

offer_7 = Offer.new(
  address: "12 Rue André Del Sarte, Paris 18e Arrondissement, Île-de-France, France",
  title: "La pizza de Mamma ! 🍕 (100% Gluten) - fait maison 🏠",
  date: "Sat, 27 Nov 2021",
  description: "Une pizza Mamma faite maison offerte si vous arrivez à réparer ma télé 📺 ! ",
  tag_list:"Cuisine",
  user: adeline
)

img_7 = File.open("#{Rails.root}/app/assets/images/7.jpeg")

offer_7.photo.attach(io: img_7, filename: "offer_7.jpeg", content_type: 'image/jpeg')

offer_7.save!

offer_8 = Offer.new(
  address: "80 Rue Oberkampf, Paris 11e Arrondissement, Île-de-France, France",
  title: "Trois fois plus de piments 🌶 (plat épicé)",
  date: "Sun, 28 Nov 2021",
  description: "Voulez-vous partager une soirée avec moi ? Je fais un très bon plat et suis une experte aux dominos ! ",
  tag_list:"Domino",
  user: alex
)

img_8 = File.open("#{Rails.root}/app/assets/images/8.jpeg")

offer_8.photo.attach(io: img_8, filename: "offer_8.jpeg", content_type: 'image/jpeg')

offer_8.save!
offer_9 = Offer.new(
  address: "145 Rue du Chevaleret, Paris 13e Arrondissement, Île-de-France, France",
  title: "Pour les carnivores et les loups-garous (le jeu)",
  date: "Mon, 29 Nov 2021",
  description: "Grand fan du jeu de société - le Loup Garou mais il me manque un participant. 🐺 ",
  tag_list:"Jeux",
  user: paul
)

img_9 = File.open("#{Rails.root}/app/assets/images/9.jpeg")

offer_9.photo.attach(io: img_9, filename: "offer_9.jpeg", content_type: 'image/jpeg')

offer_9.save!

offer_10 = Offer.new(
  address: "100 Rue du Chevaleret, Paris 13e Arrondissement, Île-de-France, France",
  title: "Soirée Koh-Lanta et Steack tartare (cuisson à point)",
  date: "Mon, 29 Nov 2021",
  description: "Bonjour à tous, venez regarder la finale de Koh-Lanta chez moi !",
  tag_list:"TV",
  user: yvette
)

img_10 = File.open("#{Rails.root}/app/assets/images/10.jpeg")
offer_10.photo.attach(io: img_10, filename: "offer_10.jpeg", content_type: 'image/jpeg')
offer_10.save!