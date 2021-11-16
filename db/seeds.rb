Message.destroy_all
Reservation.destroy_all
Chatroom.destroy_all
User.destroy_all
Offer.destroy_all

matt = User.create(email: "matt@gmail.com", password: "matt@gmail.com", first_name: "Matt")
leo = User.create(email: "leo@gmail.com", password: "leo@gmail.com", first_name: "Léo")
alex = User.create(email: "alex@gmail.com", password: "alex@gmail.com", first_name: "Alex")
senior = User.create(email: "senior@gmail.com", password: "senior@gmail.com", first_name: "Senior", role: "senior")
junior = User.create(email: "junior@gmail.com", password: "junior@gmail.com", first_name: "Junior", role: "junior")

general = Chatroom.create(name: "general", user_junior: User.first, user_senior: User.last)

Message.create(chatroom: general, user: matt, content: "🤟Est-ce que vous êtes chauds ? 🔥")
Message.create(chatroom: general, user: leo, content: "Ouaaaais !!! 🔥")
Message.create(chatroom: general, user: alex, content: "🔥🔥🔥🔥🔥🔥🔥🔥")

offer_1 = Offer.new(
  address: "123 Rue du Vieux Colombier, Paris 6e Arrondissement, Île-de-France, France",
  title: "Mon premier repas Conviv'App",
  date: "Mon, 1 Nov 2021",
  description: "Bonjour tout le monde 😊, je vous propose de partager un moment convivial chez moi autour d'un gratin de chou fait maison ! 👩‍🍳",
  user: senior
)

img_1 = File.open("#{Rails.root}/app/assets/images/4.jpeg")

offer_1.photo.attach(io: img_1, filename: "offer_1.jpeg", content_type: 'image/jpeg')

offer_1.save!

offer_2 = Offer.new(
  address: "34 Rue du Rendez-Vous, Paris 12e Arrondissement, Île-de-France, France",
  title: "Dîner et jeux de société 🎲",
  date: "Tue, 23 Nov 2021",
  description: "Bonjour les jeunes ! Venez manger une excellente tarte au camembert à la maison",
  user: senior
)

img_2 = File.open("#{Rails.root}/app/assets/images/1.jpeg")

offer_2.photo.attach(io: img_2, filename: "offer_2.jpeg", content_type: 'image/jpeg')

offer_2.save!

offer_3 = Offer.new(
  address: "16 Villa Gaudelet, Paris 11e Arrondissement, Île-de-France, France",
  title: "Légumes du jardin autour de ma cheminée 🥣",
  date: "Tue, 23 Nov 2021",
  description: "J'ai beaucoup de légumes et pas assez de bouche pour tout utiliser... Souhaitez-vous gouter ma soupe faite maison ?",
  user: senior
)

img_3 = File.open("#{Rails.root}/app/assets/images/2.jpeg")

offer_3.photo.attach(io: img_3, filename: "offer_3.jpeg", content_type: 'image/jpeg')

offer_3.save!

offer_4 = Offer.new(
  address: "13 Rue de la Sourdière, Paris 1er Arrondissement, Île-de-France, France",
  title: "Poké bowl revisité",
  date: "Wed, 24 Nov 2021",
  description: "Bonjour, j'adore les jeux de cartes et vous propose un poké bowl d'exception",
  user: senior
)

img_4 = File.open("#{Rails.root}/app/assets/images/3.jpeg")

offer_4.photo.attach(io: img_4, filename: "offer_4.jpeg", content_type: 'image/jpeg')

offer_4.save!

offer_5 = Offer.new(
  address: "12 Rue du Faubourg Poissonnière, Paris 10e Arrondissement, Île-de-France, France",
  title: "Le plat de mon enfance avec son histoire",
  date: "Thu, 25 Nov 2021",
  description: "Bonjour les enfants 👋, je vous propose de découvrir le plat de mon enfance avec son histoire et peut-être sa recette ! 😊 ",
  user: senior
)

img_5 = File.open("#{Rails.root}/app/assets/images/5.jpeg")

offer_5.photo.attach(io: img_5, filename: "offer_5.jpeg", content_type: 'image/jpeg')

offer_5.save!

offer_6 = Offer.new(
  address: "12 Rue de Buzenval, Paris 20e Arrondissement, Île-de-France, France",
  title: "Le burger de mon ancien restaurant",
  date: "Fri, 26 Nov 2021",
  description: "Bonjour à tous👋, je vous propose de revivre le succès de mon ancien restaurant en goutant à mon burger maison ! 😊 ",
  user: senior
)

img_6 = File.open("#{Rails.root}/app/assets/images/6.jpeg")

offer_6.photo.attach(io: img_6, filename: "offer_6.jpeg", content_type: 'image/jpeg')

offer_6.save!

offer_7 = Offer.new(
  address: "12 Rue André Del Sarte, Paris 18e Arrondissement, Île-de-France, France",
  title: "La pizza de Mamma",
  date: "Sat, 27 Nov 2021",
  description: "Une pizza Mamma faite maison offerte si vous arrivez à réparer ma télé 📺 ! ",
  user: senior
)

img_7 = File.open("#{Rails.root}/app/assets/images/7.jpeg")

offer_7.photo.attach(io: img_7, filename: "offer_7.jpeg", content_type: 'image/jpeg')

offer_7.save!

offer_8 = Offer.new(
  address: "13 Allée Paris-Ivry, Paris 13e Arrondissement, Île-de-France, France",
  title: "Trois fois plus de piments",
  date: "Sun, 28 Nov 2021",
  description: "Bonjour les jeunes, voulez-vous partager une soirée avec moi ? Je fais un très bon plat et suis une experte aux dominos ! ",
  user: senior
)

img_8 = File.open("#{Rails.root}/app/assets/images/8.jpeg")

offer_8.photo.attach(io: img_8, filename: "offer_8.jpeg", content_type: 'image/jpeg')

offer_8.save!
offer_9 = Offer.new(
  address: "145 Rue du Chevaleret, Paris 13e Arrondissement, Île-de-France, France",
  title: "Pour les carnivores et les loups-garous (le jeu)",
  date: "Mon, 29 Nov 2021",
  description: "Bonjour à tous, je suis un grand fan du jeu de société - le Loup Garou mais il me manque un participant. 🐺 ",
  user: senior
)

img_9 = File.open("#{Rails.root}/app/assets/images/9.jpeg")

offer_9.photo.attach(io: img_9, filename: "offer_9.jpeg", content_type: 'image/jpeg')

offer_9.save!

offer_10 = Offer.new(
  address: "100 Rue du Chevaleret, Paris 13e Arrondissement, Île-de-France, France",
  title: "Soirée Koh-Lanta et Steack tartare",
  date: "Mon, 29 Nov 2021",
  description: "Bonjour à tous, venez regarder la finale de Koh-Lanta chez moi !",
  user: senior
)

img_10 = File.open("#{Rails.root}/app/assets/images/10.jpeg")
offer_10.photo.attach(io: img_10, filename: "offer_10.jpeg", content_type: 'image/jpeg')
offer_10.save!