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
                    last_name: 'Cansizoğlu',
                    email: 'ardacansizoğlu@gmail.com',
                    password: 'azerty')

user_admin.photo.attach(io: admin, filename: "admin.jpg", content_type: "image/jpeg")
user1.photo.attach(io: benjamin, filename: "benjamin.jpg", content_type: "image/jpeg")
user2.photo.attach(io: arthur, filename: "arthur.jpg", content_type: "image/jpeg")
user3.photo.attach(io: gideon, filename: "gideon.jpg", content_type: "image/jpeg")
user4.photo.attach(io: arda, filename: "arda.jpg", content_type: "image/jpeg")

my_fridge_user_admin = Fridge.create(user: user_admin, my_fridge: true)
away_fridge_user_admin = Fridge.create(user: user_admin, my_fridge: false)

my_fridge_user1 = Fridge.create(user: user1, my_fridge: true)
away_fridge_user1 = Fridge.create(user: user1, my_fridge: false)

my_fridge_user2 = Fridge.create(user: user2, my_fridge: true)
away_fridge_user2 = Fridge.create(user: user2, my_fridge: false)

my_fridge_user3 = Fridge.create(user: user3, my_fridge: true)
away_fridge_user3 = Fridge.create(user: user3, my_fridge: false)

my_fridge_user4 = Fridge.create(user: user4, my_fridge: true)
away_fridge_user4 = Fridge.create(user: user4, my_fridge: false)

