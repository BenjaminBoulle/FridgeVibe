# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "open-uri"

Ingredient.destroy_all
Fridge.destroy_all
User.destroy_all

benjamin = URI.open("https://avatars.githubusercontent.com/u/115448260?v=4")
arthur = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
gideon = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665405360/o1pmr1f0uw7zalu3gb3h.jpg")
arda = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665238104/pf4ty3lwz2de1fs45ltw.jpg")
admin = URI.open("https://i.pinimg.com/originals/e8/3e/fc/e83efc660ae1fd1d420dacb58d00d953.jpg")

user_admin = User.create(first_name: 'Bob',
                         last_name: 'Boulle',
                         email: 'bob@gmail.com',
                         password: 'azerty')

user1 = User.create(first_name: 'Benjamin',
                    last_name: 'Boulle',
                    email: 'benjaminboulle.sjb@gmail.com',
                    password: 'azerty')

user2 = User.create(first_name: 'Arthur',
                    last_name: 'Peers',
                    email: 'arthurpeers6@gmail.com',
                    password: 'azerty')

user3 = User.create(first_name: 'Gideon',
                    last_name: 'Maydell',
                    email: 'gideon@maydell.at',
                    password: 'qwertz')

user4 = User.create(first_name: 'Arda',
                    last_name: 'Cansizoglu',
                    email: 'ardacansizoglu@gmail.com',
                    password: 'qwerty')

user_admin.photo.attach(io: admin, filename: "admin.jpg", content_type: "image/jpeg")
user1.photo.attach(io: benjamin, filename: "benjamin.jpg", content_type: "image/jpeg")
user2.photo.attach(io: arthur, filename: "arthur.jpg", content_type: "image/jpeg")
user3.photo.attach(io: gideon, filename: "gideon.jpg", content_type: "image/jpeg")
user4.photo.attach(io: arda, filename: "arda.jpg", content_type: "image/jpeg")

my_fridge_user_admin = Fridge.create(user: user_admin, my_fridge: true)
# away_fridge_user_admin =
Fridge.create(user: user_admin, my_fridge: false)

my_fridge_user1 = Fridge.create(user: user1, my_fridge: true)
# away_fridge_user1 =
Fridge.create(user: user1, my_fridge: false)

my_fridge_user2 = Fridge.create(user: user2, my_fridge: true)
# away_fridge_user2 =
Fridge.create(user: user2, my_fridge: false)

my_fridge_user3 = Fridge.create(user: user3, my_fridge: true)
# away_fridge_user3 =
Fridge.create(user: user3, my_fridge: false)

my_fridge_user4 = Fridge.create(user: user4, my_fridge: true)
# away_fridge_user4 =
Fridge.create(user: user4, my_fridge: false)

ingredient1 = Ingredient.create(name: "Egg", quantity: "3", expiration_date: Date.today, fridge: my_fridge_user_admin)
picture_ingredient1 = URI.open("https://bcegg.com/wp-content/themes/bcegg-consumer/dist/images/icons/dots/egg.png")
ingredient1.photo.attach(io: picture_ingredient1, filename: "egg.png", content_type: "image/png")

ingredient2 = Ingredient.create(name: "Salmon", quantity: "1.5 kg", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient2 = URI.open("https://www.curtze.com/images/salmon-hero.png")
ingredient2.photo.attach(io: picture_ingredient2, filename: "salmon.png", content_type: "image/jpeg")

ingredient3 = Ingredient.create(name: "Sweet potatoes", quantity: "3", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient3 = URI.open("https://res.cloudinary.com/hksqkdlah/image/upload/37117_sil-sweetpotato-hannah-1.png")
ingredient3.photo.attach(io: picture_ingredient3, filename: "sweet_potatoes.png", content_type: "image/png")

ingredient4 = Ingredient.create(name: "Carrot", quantity: "3", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient4 = URI.open("https://www.carotene.org/wp-content/uploads/2017/09/Retinol-Equivalents.png")
ingredient4.photo.attach(io: picture_ingredient4, filename: "carrot.png", content_type: "image/png")

ingredient5 = Ingredient.create(name: "Leak", quantity: "2", expiration_date: Date.today + 2, fridge: my_fridge_user_admin)
picture_ingredient5 = URI.open("https://www.mtalmaorganics.com.au/wp-content/uploads/2020/03/kisspng-leek-vegetable-food-cooking-garlic-5a792650f2ad43.115643251517889104994-e1594687803830.png")
ingredient5.photo.attach(io: picture_ingredient5, filename: "leak.png", content_type: "image/png")

ingredient6 = Ingredient.create(name: "Smoked salmon", quantity: "5 slices", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient6 = URI.open("https://www.seacoreseafood.com/user_files/upload/images/2019/Wyse%20Bay%20Smoked%20Salmon%20web.png")
ingredient6.photo.attach(io: picture_ingredient6, filename: "smoked_salmon.png", content_type: "image/png")

ingredient7 = Ingredient.create(name: "Strawberry", quantity: "10", expiration_date: Date.today + 4, fridge: my_fridge_user1)
picture_ingredient7 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient7.photo.attach(io: picture_ingredient7, filename: "snow.png", content_type: "image/png")

ingredient31 = Ingredient.create(name: "Beer", quantity: "200", expiration_date: Date.today + 60, fridge: my_fridge_user1)
picture_ingredient31 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient31.photo.attach(io: picture_ingredient31, filename: "snow.png", content_type: "image/png")

ingredient8 = Ingredient.create(name: "Minced pork and beef", quantity: "2.3 kg", expiration_date: Date.today + 2, fridge: my_fridge_user1)
picture_ingredient8 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient8.photo.attach(io: picture_ingredient8, filename: "snow.png", content_type: "image/png")

ingredient9 = Ingredient.create(name: "Sausages", quantity: "2 kg", expiration_date: Date.today + 3, fridge: my_fridge_user1)
picture_ingredient9 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient9.photo.attach(io: picture_ingredient9, filename: "snow.png", content_type: "image/png")

ingredient10 = Ingredient.create(name: "Whipped cream", quantity: "2", expiration_date: Date.today + 30, fridge: my_fridge_user1)
picture_ingredient10 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient10.photo.attach(io: picture_ingredient10, filename: "snow.png", content_type: "image/png")

ingredient11 = Ingredient.create(name: "Chocolate", quantity: "3", expiration_date: Date.today + 60, fridge: my_fridge_user1)
picture_ingredient11 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient11.photo.attach(io: picture_ingredient11, filename: "snow.png", content_type: "image/png")

ingredient12 = Ingredient.create(name: "Bacon", quantity: "500 gr", expiration_date: Date.today + 4, fridge: my_fridge_user1)
picture_ingredient12 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient12.photo.attach(io: picture_ingredient12, filename: "snow.png", content_type: "image/png")

ingredient13 = Ingredient.create(name: "Cream", quantity: "1 l", expiration_date: Date.today + 20, fridge: my_fridge_user2)
picture_ingredient13 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient13.photo.attach(io: picture_ingredient13, filename: "snow.png", content_type: "image/png")

ingredient14 = Ingredient.create(name: "Yoghurt", quantity: "12", expiration_date: Date.today + 12, fridge: my_fridge_user2)
picture_ingredient14 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient14.photo.attach(io: picture_ingredient14, filename: "snow.png", content_type: "image/png")

ingredient15 = Ingredient.create(name: "Ham", quantity: "1 kg", expiration_date: Date.today + 6, fridge: my_fridge_user2)
picture_ingredient15 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient15.photo.attach(io: picture_ingredient15, filename: "snow.png", content_type: "image/png")

ingredient16 = Ingredient.create(name: "Mozarella", quantity: "6 balls", expiration_date: Date.today + 5, fridge: my_fridge_user2)
picture_ingredient16 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient16.photo.attach(io: picture_ingredient16, filename: "snow.png", content_type: "image/png")

ingredient17 = Ingredient.create(name: "Basil", quantity: "1 plant", expiration_date: Date.today + 30, fridge: my_fridge_user2)
picture_ingredient17 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient17.photo.attach(io: picture_ingredient17, filename: "snow.png", content_type: "image/png")

ingredient18 = Ingredient.create(name: "Fresh pasta", quantity: "4 kg", expiration_date: Date.today + 6, fridge: my_fridge_user2)
picture_ingredient18 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient18.photo.attach(io: picture_ingredient18, filename: "snow.png", content_type: "image/png")

ingredient19 = Ingredient.create(name: "Truffle", quantity: "6", expiration_date: Date.today + 2, fridge: my_fridge_user3)
picture_ingredient19 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient19.photo.attach(io: picture_ingredient19, filename: "snow.png", content_type: "image/png")

ingredient20 = Ingredient.create(name: "Mushroom", quantity: "1 kg", expiration_date: Date.today + 10, fridge: my_fridge_user3)
picture_ingredient20 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient20.photo.attach(io: picture_ingredient20, filename: "snow.png", content_type: "image/png")

ingredient21 = Ingredient.create(name: "Apple", quantity: "90", expiration_date: Date.today + 10, fridge: my_fridge_user3)
picture_ingredient21 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient21.photo.attach(io: picture_ingredient21, filename: "snow.png", content_type: "image/png")

ingredient22 = Ingredient.create(name: "Peach", quantity: "22", expiration_date: Date.today + 6, fridge: my_fridge_user3)
picture_ingredient22 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient22.photo.attach(io: picture_ingredient22, filename: "snow.png", content_type: "image/png")

ingredient23 = Ingredient.create(name: "Chicken breast ", quantity: "3", expiration_date: Date.today + 9, fridge: my_fridge_user3)
picture_ingredient23 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient23.photo.attach(io: picture_ingredient23, filename: "snow.png", content_type: "image/png")

ingredient24 = Ingredient.create(name: "Hamburger", quantity: "7", expiration_date: Date.today + 3, fridge: my_fridge_user3)
picture_ingredient24 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient24.photo.attach(io: picture_ingredient24, filename: "snow.png", content_type: "image/png")

ingredient25 = Ingredient.create(name: "Sushi", quantity: "19", expiration_date: Date.today + 1, fridge: my_fridge_user4)
picture_ingredient25 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient25.photo.attach(io: picture_ingredient25, filename: "snow.png", content_type: "image/png")

ingredient26 = Ingredient.create(name: "Ice cream", quantity: "2 l", expiration_date: Date.today + 300, fridge: my_fridge_user4)
picture_ingredient26 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient26.photo.attach(io: picture_ingredient26, filename: "snow.png", content_type: "image/png")

ingredient27 = Ingredient.create(name: "Nem", quantity: "40", expiration_date: Date.today + 9, fridge: my_fridge_user4)
picture_ingredient27 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient27.photo.attach(io: picture_ingredient27, filename: "snow.png", content_type: "image/png")

ingredient28 = Ingredient.create(name: "Watermelon", quantity: "1", expiration_date: Date.today + 10, fridge: my_fridge_user4)
picture_ingredient28 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient28.photo.attach(io: picture_ingredient28, filename: "snow.png", content_type: "image/png")

ingredient29 = Ingredient.create(name: "Avocado", quantity: "6", expiration_date: Date.today + 10, fridge: my_fridge_user4)
picture_ingredient29 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient29.photo.attach(io: picture_ingredient29, filename: "snow.png", content_type: "image/png")

ingredient30 = Ingredient.create(name: "Pepper", quantity: "7", expiration_date: Date.today + 40, fridge: my_fridge_user4)
picture_ingredient30 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient30.photo.attach(io: picture_ingredient30, filename: "snow.png", content_type: "image/png")
