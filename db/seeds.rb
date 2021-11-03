Message.destroy_all
Reservation.destroy_all
Chatroom.destroy_all
User.destroy_all
Offer.destroy_all

matt = User.create(email: "matt@gmail.com", password: "matt@gmail.com", first_name: "Matt")
leo = User.create(email: "leo@gmail.com", password: "leo@gmail.com", first_name: "Léo")
alex = User.create(email: "alex@gmail.com", password: "alex@gmail.com", first_name: "Alex")

general = Chatroom.create(name: "general")

Message.create(chatroom: general, user: matt, content: "🤟Est-ce que vous êtes chauds ? 🔥")
Message.create(chatroom: general, user: leo, content: "Ouaaaais !!! 🔥")
Message.create(chatroom: general, user: alex, content: "🔥🔥🔥🔥🔥🔥🔥🔥")


