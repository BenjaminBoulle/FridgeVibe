# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "open-uri"
puts "destroying reviews..."
Review.destroy_all
puts "destroying recipes..."
Recipe.destroy_all
puts "destroying ingredients..."
Ingredient.destroy_all
puts "destroying fridges..."
Fridge.destroy_all
puts "destroying users..."
User.destroy_all

puts "creating users..."

benjamin = URI.open("https://avatars.githubusercontent.com/u/115448260?v=4")
arthur = URI.open("https://avatars.githubusercontent.com/u/115412551?v=4")
gideon = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665405360/o1pmr1f0uw7zalu3gb3h.jpg")
arda = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1665238104/pf4ty3lwz2de1fs45ltw.jpg")
admin = URI.open("https://avatars.githubusercontent.com/u/70776288?v=4")

user_admin = User.create(first_name: 'Pedro ',
                         last_name: 'Vilarinho',
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

puts "creating fridges..."

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

### INGREDIENTS
puts "creating ingredients..."

ingredient1 = Ingredient.create(name: "Egg", quantity: "3", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient1 = URI.open("https://bcegg.com/wp-content/themes/bcegg-consumer/dist/images/icons/dots/egg.png")
ingredient1.photo.attach(io: picture_ingredient1, filename: "egg.png", content_type: "image/png")

ingredient2 = Ingredient.create(name: "Salmon", quantity: "1.5 kg", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient2 = URI.open("https://www.curtze.com/images/salmon-hero.png")
ingredient2.photo.attach(io: picture_ingredient2, filename: "salmon.png", content_type: "image/jpeg")

ingredient3 = Ingredient.create(name: "Sweet potato", quantity: "3", expiration_date: Date.today + 25, fridge: my_fridge_user_admin)
picture_ingredient3 = URI.open("https://res.cloudinary.com/hksqkdlah/image/upload/37117_sil-sweetpotato-hannah-1.png")
ingredient3.photo.attach(io: picture_ingredient3, filename: "sweet_potatoes.png", content_type: "image/png")

ingredient4 = Ingredient.create(name: "Carrot", quantity: "3", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient4 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495774/33382_mpflc9.jpg")
ingredient4.photo.attach(io: picture_ingredient4, filename: "carrot.jpg", content_type: "image/jpg")

ingredient5 = Ingredient.create(name: "Leak", quantity: "2", expiration_date: Date.today + 2, fridge: my_fridge_user4)
picture_ingredient5 = URI.open("https://www.mtalmaorganics.com.au/wp-content/uploads/2020/03/kisspng-leek-vegetable-food-cooking-garlic-5a792650f2ad43.115643251517889104994-e1594687803830.png")
ingredient5.photo.attach(io: picture_ingredient5, filename: "leak.png", content_type: "image/png")

ingredient6 = Ingredient.create(name: "Smoked salmon", quantity: "5 slices", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient6 = URI.open("https://www.seacoreseafood.com/user_files/upload/images/2019/Wyse%20Bay%20Smoked%20Salmon%20web.png")
ingredient6.photo.attach(io: picture_ingredient6, filename: "smoked_salmon.png", content_type: "image/png")

ingredient7 = Ingredient.create(name: "Strawberry", quantity: "10", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient7 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492538/35485_osngoj.jpg")
ingredient7.photo.attach(io: picture_ingredient7, filename: "strawberry.png", content_type: "image/png")

ingredient31 = Ingredient.create(name: "Barbar beer", quantity: "12", expiration_date: Date.today + 60, fridge: my_fridge_user_admin)
picture_ingredient31 = URI.open("https://media.cdnws.com/_i/151900/3519/1113/19/103-16445-w1572-h1080-transparent.png")
ingredient31.photo.attach(io: picture_ingredient31, filename: "barbar.png", content_type: "image/png")

ingredient8 = Ingredient.create(name: "Minced pork and beef", quantity: "2.3 kg", expiration_date: Date.today + 2, fridge: my_fridge_user_admin)
picture_ingredient8 = URI.open("https://global-uploads.webflow.com/60811ffeb2ff4b6d614ab4fa/60e2ae099b2e9dc301ad1d1f_pork_mince-500x500-removebg-preview.png")
ingredient8.photo.attach(io: picture_ingredient8, filename: "minced.png", content_type: "image/png")

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

ingredient32 = Ingredient.create(name: "Nem", quantity: "1200", expiration_date: Date.today + 12, fridge: my_fridge_user_admin)
picture_ingredient32 = URI.open("https://chefonefoods.com/wp-content/uploads/2016/09/Pork-Egg-Roll.png")
ingredient32.photo.attach(io: picture_ingredient32, filename: "nem.png", content_type: "image/png")

ingredient15 = Ingredient.create(name: "Ham", quantity: "1 kg", expiration_date: Date.today + 6, fridge: my_fridge_user2)
picture_ingredient15 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient15.photo.attach(io: picture_ingredient15, filename: "snow.png", content_type: "image/png")

ingredient16 = Ingredient.create(name: "Mozarella", quantity: "6 balls", expiration_date: Date.today + 5, fridge: my_fridge_user2)
picture_ingredient16 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient16.photo.attach(io: picture_ingredient16, filename: "snow.png", content_type: "image/png")

puts "Crearting ingredient 17"

ingredient17 = Ingredient.create(name: "Basil", quantity: "1 plant", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient17 = URI.open("https://cdn.shopify.com/s/files/1/0245/1010/3615/products/Basil_1c9cb179-248a-46ce-b153-b22a84de5f92_1080x.png?v=1582011356")
ingredient17.photo.attach(io: picture_ingredient17, filename: "snow.png", content_type: "image/png")

ingredient18 = Ingredient.create(name: "Fresh pasta", quantity: "4 kg", expiration_date: Date.today + 6, fridge: my_fridge_user2)
picture_ingredient18 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient18.photo.attach(io: picture_ingredient18, filename: "snow.png", content_type: "image/png")

ingredient19 = Ingredient.create(name: "Truffle", quantity: "6", expiration_date: Date.today + 2, fridge: my_fridge_user3)
picture_ingredient19 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient19.photo.attach(io: picture_ingredient19, filename: "snow.png", content_type: "image/png")

ingredient20 = Ingredient.create(name: "Mushroom", quantity: "1 kg", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient20 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495789/33487_huoh4d.jpg")
ingredient20.photo.attach(io: picture_ingredient20, filename: "mushroom.jpg", content_type: "image/pjpgng")

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

ingredient28 = Ingredient.create(name: "Watermelon", quantity: "1", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient28 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492732/34544_rrgehm.jpg")
ingredient28.photo.attach(io: picture_ingredient28, filename: "watermelon.jpg", content_type: "image/jpg")

ingredient29 = Ingredient.create(name: "Avocado", quantity: "6", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient29 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495756/33130_krtzw1.jpg")
ingredient29.photo.attach(io: picture_ingredient29, filename: "aubergine.jpg", content_type: "image/jpg")

ingredient30 = Ingredient.create(name: "Black pepper", quantity: "7", expiration_date: Date.today + 40, fridge: my_fridge_user_admin)
picture_ingredient30 = URI.open("https://cdn.shopify.com/s/files/1/0532/0405/8272/products/black_pepper_PNG24.png?v=1616404323")
ingredient30.photo.attach(io: picture_ingredient30, filename: "black_pepper.png", content_type: "image/png")

ingredient32 = Ingredient.create(name: "Olive oil", quantity: "1 l", expiration_date: Date.today + 300, fridge: my_fridge_user_admin)
picture_ingredient32 = URI.open("https://bulknaturaloils.com/media/catalog/product/cache/5b89197651ea0053483b6b3397eafb60/o/l/olive-pure-470_3_1_8.png")
ingredient32.photo.attach(io: picture_ingredient32, filename: "Olive oil.png", content_type: "image/png")

ingredient33 = Ingredient.create(name: "Pasta", quantity: "3 kg", expiration_date: Date.today + 100, fridge: my_fridge_user_admin)
picture_ingredient33 = URI.open("https://www.soubry.be/storage/files/2523f79d-06f1-4d68-a3e0-c6a14660cb0a/product_large_volkoren-spaghetti.webp")
ingredient33.photo.attach(io: picture_ingredient33, filename: "Pasta.png", content_type: "image/png")

ingredient34 = Ingredient.create(name: "Bread", quantity: "4", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient34 = URI.open("https://panamarbakery.com/public/Image/2021/3/161547107712959normal_Galeria.png")
ingredient34.photo.attach(io: picture_ingredient34, filename: "Bread.png", content_type: "image/png")

puts "Crearting ingredient 35"

ingredient35 = Ingredient.create(name: "Mayonnaise", quantity: "750 ml", expiration_date: Date.today + 80, fridge: my_fridge_user_admin)
picture_ingredient35 = URI.open("https://www.belgian-sauces.com/uploads/2015/02/mayonnaise-oeuf-belgium-550ml-full.png")
ingredient35.photo.attach(io: picture_ingredient35, filename: "Mayonnaise.png", content_type: "image/png")

ingredient36 = Ingredient.create(name: "Butter", quantity: "500 gr", expiration_date: Date.today + 9, fridge: my_fridge_user_admin)
picture_ingredient36 = URI.open("https://cdn.shopify.com/s/files/1/0588/7236/5211/products/cultured-butter-sea-salt-featured_1_x1880.png?v=1661805910")
ingredient36.photo.attach(io: picture_ingredient36, filename: "Butter.png", content_type: "image/png")

ingredient37 = Ingredient.create(name: "Parmesan", quantity: "278 gr", expiration_date: Date.today + 15, fridge: my_fridge_user_admin)
picture_ingredient37 = URI.open("https://www.nzmp.com/content/dam/nzmp/global/images/product-shots/product-page-master/product-images-grey-background/tile-800x600-_0007_Parmesan-Block-large-shaving.png")
ingredient37.photo.attach(io: picture_ingredient37, filename: "Parmesan.png", content_type: "image/png")

# ingredient38 = Ingredient.create(name: "Cheddar", quantity: "969 gr", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
# picture_ingredient38 = URI.open("https://www.kaas.nl/wp-content/uploads/2020/03/130778_Cheddar-Rood-1.png")
# ingredient38.photo.attach(io: picture_ingredient38, filename: "Cheddar.png", content_type: "image/png")

ingredient39 = Ingredient.create(name: "American cheese", quantity: "1 kg", expiration_date: Date.today + 6, fridge: my_fridge_user_admin)
picture_ingredient39 = URI.open("https://homshop.app/wp-content/uploads/2019/04/american.png")
ingredient39.photo.attach(io: picture_ingredient39, filename: "American cheese.png", content_type: "image/png")

ingredient40 = Ingredient.create(name: "Reblochon", quantity: "500 gr", expiration_date: Date.today + 18, fridge: my_fridge_user_admin)
picture_ingredient40 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490153/reblechon_hymqsg.png")
ingredient40.photo.attach(io: picture_ingredient40, filename: "reblochon.png", content_type: "image/png")

ingredient41 = Ingredient.create(name: "Corn flake", quantity: "250 gr", expiration_date: Date.today + 360, fridge: my_fridge_user_admin)
picture_ingredient41 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/cornflakes_tp4pn9.png")
ingredient41.photo.attach(io: picture_ingredient41, filename: "cornflakes.png", content_type: "image/png")

ingredient42 = Ingredient.create(name: "Scampi", quantity: "500 gr", expiration_date: Date.today + 360, fridge: my_fridge_user_admin)
picture_ingredient42 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490153/scampi_ifqqqx.png")
ingredient42.photo.attach(io: picture_ingredient42, filename: "scampi.png", content_type: "image/png")

ingredient43 = Ingredient.create(name: "Grated cheese", quantity: "1 kg", expiration_date: Date.today + 20, fridge: my_fridge_user_admin)
picture_ingredient43 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/grated_cheese_xb37lw.png")
ingredient43.photo.attach(io: picture_ingredient43, filename: "grated_cheese.png", content_type: "image/png")

ingredient44 = Ingredient.create(name: "Nut", quantity: "250 gr", expiration_date: Date.today + 108, fridge: my_fridge_user_admin)
picture_ingredient44 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/nuts_rdavzg.png")
ingredient44.photo.attach(io: picture_ingredient44, filename: "nuts.png", content_type: "image/png")

ingredient45 = Ingredient.create(name: "Mozzarella", quantity: "5 balls", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient45 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/mozarella_vlpzcg.png")
ingredient45.photo.attach(io: picture_ingredient45, filename: "mozzarella.png", content_type: "image/png")

puts "Crearting ingredient 46"

ingredient46 = Ingredient.create(name: "Cherry haribo", quantity: "500 gr", expiration_date: Date.today + 720, fridge: my_fridge_user_admin)
picture_ingredient46 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/haribo_nan9yj.png")
ingredient46.photo.attach(io: picture_ingredient46, filename: "haribo.png", content_type: "image/png")

ingredient47 = Ingredient.create(name: "Leerdammer", quantity: "300 gr", expiration_date: Date.today + 20, fridge: my_fridge_user_admin)
picture_ingredient47 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/leerdammer_dy11ap.png")
ingredient47.photo.attach(io: picture_ingredient47, filename: "leerdammer.png", content_type: "image/png")

ingredient48 = Ingredient.create(name: "Bread multicorn", quantity: "3", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient48 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/bread_multi_sclo26.png")
ingredient48.photo.attach(io: picture_ingredient48, filename: "bread_multicorn.png", content_type: "image/png")

ingredient49 = Ingredient.create(name: "Blood orange", quantity: "20", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient49 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490771/35327_gcwfk9.jpg")
ingredient49.photo.attach(io: picture_ingredient49, filename: "blood_orange.png", content_type: "image/png")

ingredient50 = Ingredient.create(name: "Gin", quantity: "1 l", expiration_date: Date.today + 1000, fridge: my_fridge_user_admin)
picture_ingredient50 = URI.open("https://www.ginroom.be/wp-content/uploads/2020/01/bombay_dry_gin_1761_70-522x600.png")
ingredient50.photo.attach(io: picture_ingredient50, filename: "gin.png", content_type: "image/png")

ingredient51 = Ingredient.create(name: "Mini pudding ", quantity: "500 gr", expiration_date: Date.today + 6, fridge: my_fridge_user_admin)
picture_ingredient51 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/mini_pudding_nadqiu.png")
ingredient51.photo.attach(io: picture_ingredient51, filename: "mini_puddings.png", content_type: "image/png")

ingredient52 = Ingredient.create(name: "Sausage", quantity: "900 gr", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient52 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490153/sausage_dtt1p4.png")
ingredient52.photo.attach(io: picture_ingredient52, filename: "sausage.png", content_type: "image/png")

ingredient53 = Ingredient.create(name: "Brussels sprout", quantity: "100 gr", expiration_date: Date.today + 11, fridge: my_fridge_user_admin)
picture_ingredient53 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490687/35681_ffx5nd.jpg")
ingredient53.photo.attach(io: picture_ingredient53, filename: "brussels_sprout.jpg", content_type: "image/jpg")

ingredient54 = Ingredient.create(name: "Pork skewer", quantity: "679 gr", expiration_date: Date.today + 1, fridge: my_fridge_user_admin)
picture_ingredient54 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670490152/brochette_k7itq1.png")
ingredient54.photo.attach(io: picture_ingredient54, filename: "pork_sweker.png", content_type: "image/png")

ingredient55 = Ingredient.create(name: "Grape", quantity: "400 gr", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient55 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491404/35667_k8ccbh.jpg")
ingredient55.photo.attach(io: picture_ingredient55, filename: "grape.jpg", content_type: "image/jpg")

ingredient56 = Ingredient.create(name: "Pickle", quantity: "500 gr", expiration_date: Date.today + 20, fridge: my_fridge_user_admin)
picture_ingredient56 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491388/36021_vb3w1d.jpg")
ingredient56.photo.attach(io: picture_ingredient56, filename: "pickles.jpg", content_type: "image/jpg")

ingredient57 = Ingredient.create(name: "Pistachio", quantity: "300 gr", expiration_date: Date.today + 60, fridge: my_fridge_user_admin)
picture_ingredient57 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491378/36044_adpyek.jpg")
ingredient57.photo.attach(io: picture_ingredient57, filename: "pistachio.jpg", content_type: "image/jpg")

ingredient58 = Ingredient.create(name: "Tomato", quantity: "460 gr", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient58 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491372/36059_nhgqui.jpg")
ingredient58.photo.attach(io: picture_ingredient58, filename: "tomatoes.jpg", content_type: "image/jpg")

ingredient59 = Ingredient.create(name: "Paprika", quantity: "3", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient59 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491368/36076_jyuujf.jpg")
ingredient59.photo.attach(io: picture_ingredient59, filename: "paprika.jpg", content_type: "image/jpg")

ingredient60 = Ingredient.create(name: "Apricot", quantity: "7", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient60 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670491349/36161_uic8pt.jpg")
ingredient60.photo.attach(io: picture_ingredient60, filename: "apricot.jpg", content_type: "image/jpg")

puts "Crearting ingredient 61"

ingredient61 = Ingredient.create(name: "Rhum", quantity: "1 l", expiration_date: Date.today + 60, fridge: my_fridge_user_admin)
picture_ingredient61 = URI.open("https://rhum-saintjames.com/wp-content/uploads/2020/12/CLASSIQUE_AMBRE_70CL.png")
ingredient61.photo.attach(io: picture_ingredient61, filename: "rhum.png", content_type: "image/png")

ingredient62 = Ingredient.create(name: "Apple", quantity: "6", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient62 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492483/35635_iiwse0.jpg")
ingredient62.photo.attach(io: picture_ingredient62, filename: "apple.png", content_type: "image/png")

ingredient63 = Ingredient.create(name: "Chestnut", quantity: "500 gr", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient63 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492490/35624_t3qiao.jpg")
ingredient63.photo.attach(io: picture_ingredient63, filename: "chestnut.jpg", content_type: "image/jpg")

ingredient64 = Ingredient.create(name: "Peer", quantity: "8", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient64 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492496/35603_jqxsjd.jpg")
ingredient64.photo.attach(io: picture_ingredient64, filename: "arthur.jpg", content_type: "image/jpg")

ingredient65 = Ingredient.create(name: "Lemon", quantity: "3", expiration_date: Date.today + 6, fridge: my_fridge_user_admin)
picture_ingredient65 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492503/35563_rzpsjw.jpg")
ingredient65.photo.attach(io: picture_ingredient65, filename: "lemon.jpg", content_type: "image/jpg")

ingredient66 = Ingredient.create(name: "Onion", quantity: "4", expiration_date: Date.today + 16, fridge: my_fridge_user_admin)
picture_ingredient66 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492509/35553_ybln5q.jpg")
ingredient66.photo.attach(io: picture_ingredient66, filename: "onion.jpg", content_type: "image/jpg")

ingredient67 = Ingredient.create(name: "Kiwi", quantity: "3", expiration_date: Date.today + 1, fridge: my_fridge_user_admin)
picture_ingredient67 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492524/35514_vb8ced.jpg")
ingredient67.photo.attach(io: picture_ingredient67, filename: "kiwi.jpg", content_type: "image/jpg")

ingredient68 = Ingredient.create(name: "Tangerine", quantity: "8", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient68 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492529/35510_uns4tb.jpg")
ingredient68.photo.attach(io: picture_ingredient68, filename: "tangerine.jpg", content_type: "image/jpg")

ingredient69 = Ingredient.create(name: "Chinese cabbage", quantity: "1", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient69 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492548/35438_jtmvpt.jpg")
ingredient69.photo.attach(io: picture_ingredient69, filename: "chinese_cabage.jpg", content_type: "image/jpg")

ingredient70 = Ingredient.create(name: "Chinese flower", quantity: "1", expiration_date: Date.today + 20, fridge: my_fridge_user_admin)
picture_ingredient70 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492567/35371_damtpc.jpg")
ingredient70.photo.attach(io: picture_ingredient70, filename: "chiense_flower.jpg", content_type: "image/jpg")

puts "Crearting ingredient 71"

ingredient71 = Ingredient.create(name: "Shallot", quantity: "7", expiration_date: Date.today + 18, fridge: my_fridge_user_admin)
picture_ingredient71 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492575/35317_aixaix.jpg")
ingredient71.photo.attach(io: picture_ingredient71, filename: "shallot.jpg", content_type: "image/jpg")

ingredient72 = Ingredient.create(name: "Clementine", quantity: "9", expiration_date: Date.today + 16, fridge: my_fridge_user_admin)
picture_ingredient72 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492582/35315_yeehvz.jpg")
ingredient72.photo.attach(io: picture_ingredient72, filename: "clementine.jpg", content_type: "image/jpg")

ingredient73 = Ingredient.create(name: "Salad", quantity: "500 gr", expiration_date: Date.today + 7, fridge: my_fridge_user_admin)
picture_ingredient73 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492601/35028_zobljb.jpg")
ingredient73.photo.attach(io: picture_ingredient73, filename: "salad.jpg", content_type: "image/jpg")

ingredient74 = Ingredient.create(name: "Black grapes", quantity: "400 gr", expiration_date: Date.today + 9, fridge: my_fridge_user_admin)
picture_ingredient74 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492623/34929_slrqfh.jpg")
ingredient74.photo.attach(io: picture_ingredient74, filename: "black_grapes.jpg", content_type: "image/jpg")

ingredient75 = Ingredient.create(name: "Grenada", quantity: "7", expiration_date: Date.today + 1, fridge: my_fridge_user_admin)
picture_ingredient75 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492633/34817_w31lco.jpg")
ingredient75.photo.attach(io: picture_ingredient75, filename: "grenada.jpg", content_type: "image/jpg")

ingredient76 = Ingredient.create(name: "Lime", quantity: "9", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient76 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492650/34778_b9x3th.jpg")
ingredient76.photo.attach(io: picture_ingredient76, filename: "lime.jpg", content_type: "image/jpg")

ingredient77 = Ingredient.create(name: "Pepper", quantity: "2", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient77 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492659/34767_gannfv.jpg")
ingredient77.photo.attach(io: picture_ingredient77, filename: "pepper.jpg", content_type: "image/jpg")

ingredient78 = Ingredient.create(name: "Dragon fruit", quantity: "3", expiration_date: Date.today + 4, fridge: my_fridge_user_admin)
picture_ingredient78 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492680/34699_het1hh.jpg")
ingredient78.photo.attach(io: picture_ingredient78, filename: "dargon_fruit.jpg", content_type: "image/jpg")

ingredient79 = Ingredient.create(name: "Peach", quantity: "7", expiration_date: Date.today + 8, fridge: my_fridge_user_admin)
picture_ingredient79 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492695/34635_zw3ekh.jpg")
ingredient79.photo.attach(io: picture_ingredient79, filename: "peach.jpg", content_type: "image/jpg")

ingredient80 = Ingredient.create(name: "Potato", quantity: "500 gr", expiration_date: Date.today + 27, fridge: my_fridge_user_admin)
picture_ingredient80 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492702/34634_scwx5a.jpg")
ingredient80.photo.attach(io: picture_ingredient80, filename: "potatoes.jpg", content_type: "image/jpg")

ingredient81 = Ingredient.create(name: "Ginger", quantity: "100 gr", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient81 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492707/34629_bsbgzb.jpg")
ingredient81.photo.attach(io: picture_ingredient81, filename: "giniger.jpg", content_type: "image/jpg")

puts "Crearting ingredient 82"

ingredient82 = Ingredient.create(name: "Grapefruit", quantity: "6", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient82 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492739/34509_rolx4k.jpg")
ingredient82.photo.attach(io: picture_ingredient82, filename: "grapefruit.jpg", content_type: "image/jpg")

ingredient83 = Ingredient.create(name: "Red onion", quantity: "5", expiration_date: Date.today + 1, fridge: my_fridge_user_admin)
picture_ingredient83 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492750/34413_zdqwfd.jpg")
ingredient83.photo.attach(io: picture_ingredient83, filename: "red_onion.jpg", content_type: "image/jpg")

ingredient84 = Ingredient.create(name: "Coconut", quantity: "4", expiration_date: Date.today + 32, fridge: my_fridge_user_admin)
picture_ingredient84 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492765/34321_ecylcw.jpg")
ingredient84.photo.attach(io: picture_ingredient84, filename: "coconut.jpg", content_type: "image/jpg")

ingredient85 = Ingredient.create(name: "Turnip", quantity: "3", expiration_date: Date.today + 7, fridge: my_fridge_user_admin)
picture_ingredient85 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492774/34276_gf9d7l.jpg")
ingredient85.photo.attach(io: picture_ingredient85, filename: "turnip.jpg", content_type: "image/jpg")

ingredient86 = Ingredient.create(name: "Litchi", quantity: "500 gr", expiration_date: Date.today + 10, fridge: my_fridge_user_admin)
picture_ingredient86 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670492787/34133_rqolzr.jpg")
ingredient86.photo.attach(io: picture_ingredient86, filename: "litchi.jpg", content_type: "image/jpg")

ingredient87 = Ingredient.create(name: "Pineapple", quantity: "1", expiration_date: Date.today + 15, fridge: my_fridge_user_admin)
picture_ingredient87 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495749/33068_q0hwwl.jpg")
ingredient87.photo.attach(io: picture_ingredient87, filename: "pineapple.jpg", content_type: "image/jpg")

ingredient88 = Ingredient.create(name: "Artichoke", quantity: "5", expiration_date: Date.today + 6, fridge: my_fridge_user_admin)
picture_ingredient88 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495752/33098_mguhho.jpg")
ingredient88.photo.attach(io: picture_ingredient88, filename: "artichoke.jpg", content_type: "image/jpg")

ingredient89 = Ingredient.create(name: "Aubergine", quantity: "7", expiration_date: Date.today + 9, fridge: my_fridge_user_admin)
picture_ingredient89 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495755/33129_d5yxk9.jpg")
ingredient89.photo.attach(io: picture_ingredient89, filename: "aubergine.jpg", content_type: "image/jpg")

ingredient90 = Ingredient.create(name: "Banana", quantity: "6", expiration_date: Date.today + 8, fridge: my_fridge_user_admin)
picture_ingredient90 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495760/33144_p41mri.jpg")
ingredient90.photo.attach(io: picture_ingredient90, filename: "banana.jpg", content_type: "image/jpg")

ingredient91 = Ingredient.create(name: "Carambola", quantity: "6", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient91 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495767/33376_gkkutm.jpg")
ingredient91.photo.attach(io: picture_ingredient91, filename: "carambola.jpg", content_type: "image/jpg")

ingredient92 = Ingredient.create(name: "Cherries", quantity: "1 kg", expiration_date: Date.today + 7, fridge: my_fridge_user_admin)
picture_ingredient92 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495778/33433_ftojyz.jpg")
ingredient92.photo.attach(io: picture_ingredient92, filename: "cherry.jpg", content_type: "image/jpg")

ingredient93 = Ingredient.create(name: "Chicory", quantity: "300 gr", expiration_date: Date.today + 9, fridge: my_fridge_user_admin)
picture_ingredient93 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495793/33509_nobd8h.jpg")
ingredient93.photo.attach(io: picture_ingredient93, filename: "chicory.jpg", content_type: "image/jpg")

ingredient94 = Ingredient.create(name: "Purple cauliflower", quantity: "1", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient94 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495799/33550_dd5fop.jpg")
ingredient94.photo.attach(io: picture_ingredient94, filename: "purple_cauliflower.jpg", content_type: "image/jpg")

ingredient95 = Ingredient.create(name: "Fig", quantity: "5", expiration_date: Date.today + 12, fridge: my_fridge_user_admin)
picture_ingredient95 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670495812/33820_ltxewj.jpg")
ingredient95.photo.attach(io: picture_ingredient95, filename: "fig.jpg", content_type: "image/jpg")

ingredient96 = Ingredient.create(name: "Flour", quantity: "1.5 kg", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient96 = URI.open("https://vestkorn.com/wp-content/uploads/2019/10/Vestkorn-Faba-Bean-Flour.png")
ingredient96.photo.attach(io: picture_ingredient96, filename: "flour.png", content_type: "image/png")

puts "Crearting ingredient 97"

ingredient97 = Ingredient.create(name: "Beef", quantity: "3 kg", expiration_date: Date.today, fridge: my_fridge_user_admin)
picture_ingredient97 = URI.open("https://cdn.shopify.com/s/files/1/0096/3162/9359/collections/beef-image.png?v=1657175044")
ingredient97.photo.attach(io: picture_ingredient97, filename: "beef.png", content_type: "image/png")

ingredient98 = Ingredient.create(name: "Sugar", quantity: "1.3 kg", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient98 = URI.open("https://cdn.shopify.com/s/files/1/0504/5600/2723/products/organic-cane-sugar-bulk_1440x1600.png?v=1628024083")
ingredient98.photo.attach(io: picture_ingredient98, filename: "sugar.png", content_type: "image/png")

ingredient99 = Ingredient.create(name: "Mint", quantity: "1 plant", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient99 = URI.open("https://www.wildflavors.com/EMEA-EN/assets/Image/C_Innovations/Duftkal2019-Minze.png")
ingredient99.photo.attach(io: picture_ingredient99, filename: "mint.png", content_type: "image/png")

ingredient100 = Ingredient.create(name: "Sparkling water", quantity: "6 bottles", expiration_date: Date.today + 90, fridge: my_fridge_user_admin)
picture_ingredient100 = URI.open("https://www.perrier.com/sites/g/files/xknfdk331/files/074780000703_FR%20%282%29.png")
ingredient100.photo.attach(io: picture_ingredient100, filename: "sparklingwater.png", content_type: "image/png")

ingredient101 = Ingredient.create(name: "Salt", quantity: "100 ml", expiration_date: Date.today + 100, fridge: my_fridge_user_admin)
picture_ingredient101 = URI.open("https://bulknaturaloils.com/media/catalog/product/cache/5b89197651ea0053483b6b3397eafb60/s/e/sea_salt_-_coarse.png")
ingredient101.photo.attach(io: picture_ingredient101, filename: "salt.png", content_type: "image/png")

ingredient102 = Ingredient.create(name: "Peppercorn", quantity: "400 ml", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient102 = URI.open("https://cdn.shopify.com/s/files/1/0410/4300/1504/products/blackpepperwhole-706949.png?v=1615459515")
ingredient102.photo.attach(io: picture_ingredient102, filename: "peppercorn.png", content_type: "image/png")

ingredient103 = Ingredient.create(name: "Dark beer", quantity: "6", expiration_date: Date.today + 50, fridge: my_fridge_user_admin)
picture_ingredient103 = URI.open("https://lakefrontbrewery.com/wp-content/uploads/2021/04/eastside-bg.png")
ingredient103.photo.attach(io: picture_ingredient103, filename: "dark_beer.png", content_type: "image/png")

# ingredient = Ingredient.create(name: "", quantity: "", expiration_date: Date.today + 1, fridge: my_fridge_user_admin)
# picture_ingredient = URI.open("")
# ingredient.photo.attach(io: picture_ingredient, filename: "", content_type: "image/png")

### RECIPES
puts "creating recipes..."

recipe1 = Recipe.new(name: "Baked Mac and Cheese for One",
                     ingredients: "3 tablespoons uncooked macaroni, Pasta,
                                   1 tablespoon, Butter,
                                   1 tablespoon all-purpose, Flour,
                                   ¼ teaspoon, Salt,
                                   1 pinch, Pepper,
                                   ⅛ teaspoon, Onion powder,
                                   ½ cup, Milk,
                                   ⅓ cup shredded, Cheddar,
                                   ⅛ teaspoon ground, Mustard,
                                   1 dash, Worcestershire sauce,
                                   1 dash, Hot sauce,
                                   1 teaspoon, Bread",
                     user: user_admin,
                     author: "amydoll",
                     cuisine: "american",
                     cook_time: "20 min",
                     prep_time: "10 min",
                     description: "Step 1: Preheat an oven to 200 degrees C. Grease an oven-proof soup crock or 1 cup baking dish. |
                                   Step 2: Fill a small saucepan with water, and bring to a boil. Stir in the macaroni; boil until cooked but still firm to the bite, about 8 minutes. Drain well, and reserve. |
                                   Step 3: In the same saucepan, melt the butter over medium-high heat. Stir in the flour, salt, pepper, onion powder, and milk; whisk until smooth. Cook, stirring, for 2 minutes. Reduce heat to low, and whisk in 1/3 cup cheese, mustard, Worcestershire sauce, and hot sauce. Stir in the cooked macaroni. Spoon the macaroni and cheese into the prepared dish. Sprinkle with bread crumbs and 1 tablespoon cheddar cheese. |
                                   Step 4: Bake, uncovered, until the cheese is melted and the macaroni is heated through, about 10 minutes.",
                     rating: 4.4)
picture_recipe1 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4516736.jpg")
recipe1.photo.attach(io: picture_recipe1, filename: "recipe1.jpg", content_type: "image/jpg")

recipe2 = Recipe.new(name: "Pesto Pasta Caprese Salad",
                     ingredients: "1 ½ cups rotini, Spaghetti,
                                   3 tablespoons, Pesto,
                                   1 tablespoon extra-virgin, Olive oil,
                                   ¼ teaspoon, Salt,
                                   ¼ teaspoon granulated, Garlic,
                                   ⅛ teaspoon, Pepper,
                                   ½ cup halved, Grape tomatoes,
                                   ½ cup small (pearlini) fresh balls, Mozzarella balls,
                                   2 leaves fresh finely shredded leaves, Basil",
                     user: user_admin,
                     author: "thedailygourmet",
                     cuisine: "italian",
                     cook_time: "10 min",
                     prep_time: "10 min",
                     description: "Step 1: Bring a large pot of lightly salted water to a boil; cook the rotini at a boil until tender yet firm to the bite, about 8 minutes; drain. |
                                   Step 2: Mix pesto, olive oil, salt, granulated garlic, and black pepper in a bowl; add rotini. Toss to coat. Fold in tomatoes, mozzarella, and fresh basil.",
                     rating: 4.6)
picture_recipe2 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4794067.jpg")
recipe2.photo.attach(io: picture_recipe2, filename: "recipe2.jpg", content_type: "image/jpg")

recipe3 = Recipe.new(name: "Creamy Penne Pasta Primavera",
                     ingredients: "2 cups penne, Pasta,
                                   2 teaspoons, Olive oil,
                                   1 pound trimmed and cut into 2-inch pieces, Asparagus,
                                   3 cut into strips, Carrots,
                                   2 cups halved, Cherry tomatoes,
                                   1 clove minced or more to taste, Garlic,
                                   1 cup grated, Parmesan,
                                   1 cup heavy, Whipped cream,
                                   ¼ teaspoon ground, Pepper",
                     user: user_admin,
                     author: "gretchen",
                     cuisine: "italian",
                     cook_time: "20 min",
                     prep_time: "15 min",
                     description: "Step 1: Bring a large pot of lightly salted water to a boil; add penne and cook, stirring occasionally, until tender yet firm to the bite, about 11 minutes. Drain. |
                                   Step 2: Heat olive oil in a large skillet over medium heat-high heat; saute asparagus and carrots until tender yet firm to the bite, about 5 minutes. Add tomatoes and garlic; saute until garlic is fragrant, about 1 minute. |
                                   Step 3: Stir Parmesan cheese, cream, and black pepper into vegetable mixture until cheese melts and sauce is smooth, 2 to 3 minutes. Add pasta to sauce and toss to coat.",
                     rating: 4.5)
picture_recipe3 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1126428.jpg")
recipe3.photo.attach(io: picture_recipe3, filename: "recipe3.jpg", content_type: "image/jpg")

recipe4 = Recipe.new(name: "Tomato and Garlic Pasta",
                     ingredients: "2 pounds, Tomatoes,
                                   1 (8 ounce) package angel hair, Pasta,
                                   1 tablespoon, Olive oil,
                                   4 cloves crushed, Garlic,
                                   1 tablespoon, Tomato paste,
                                   a pinch, Salt,
                                   ground, Pepper,
                                   1 tablespoon chopped fresh, Basil,
                                   ¼ cup grated, Parmesan",
                     user: user_admin,
                     author: "ALMA-LOU",
                     cuisine: "italian",
                     cook_time: "30 min",
                     prep_time: "15 min",
                     description: "Step 1 : Place tomatoes in a large pot and cover with cold water. Bring just to a boil. Pour off water, and cover again with cold water. Peel the skin off tomatoes and cut into small pieces. |
                                   Step 2: Bring a large pot of lightly salted water to a boil. Cook angel hair pasta in the boiling water, stirring occasionally, until tender yet firm to the bite, 4 to 5 minutes. |
                                   Step 3: Meanwhile, heat olive oil in a large skillet or pan, making sure there is enough to cover the bottom of the pan, and sauté garlic until opaque but not browned. Stir in tomato paste. Immediately stir in the tomatoes, salt, and pepper. Reduce heat, and simmer until pasta is ready, adding basil at the end. |
                                   Step 4: Drain pasta, do not rinse in cold water. Toss with a bit of olive oil, then mix into the sauce. |
                                   Step 5: Reduce heat as low as possible. Keep warm, uncovered, for about 10 minutes when it is ready to serve. Garnish generously with fresh Parmesan cheese.",
                     rating: 4.4)
picture_recipe4 = URI.open("https://www.allrecipes.com/thmb/Pqd5cmqNpCSO6oqxiSzIYcZ4dFc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/837215-3fd78897006b4046a3babf9e5f05237b.jpg")
recipe4.photo.attach(io: picture_recipe4, filename: "recipe4.jpg", content_type: "image/jpg")

recipe5 = Recipe.new(name: "Pasta and Garlic",
                     ingredients: "1 ½ pounds, Pasta,
                                   ¼ cup, Olive oil,
                                   2 cloves or more to taste crushed, Garlic,
                                   a pinch, Salt,
                                   a pinch, Pepper,
                                   ¼ cup grated, Parmesan",
                     user: user_admin,
                     author: "Josie Strazzulla",
                     cuisine: "italian",
                     cook_time: "10 min",
                     prep_time: "5 min",
                     description: "Step 1: In a large pot of salted water boil pasta until al dente. Drain well. |
                                   Step 2: In a small saucepan heat oil slightly, add garlic. Saute garlic until it is lightly browned. Be careful not to burn garlic. |
                                   Step 3: Combine pasta and garlic, salt and pepper to taste. Top with Parmesan or Romano cheese and serve.",
                     rating: 2.32)
picture_recipe5 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1110792.jpg")
recipe5.photo.attach(io: picture_recipe5, filename: "recipe5.jpg", content_type: "image/jpg")

recipe6 = Recipe.new(name: "Gourmet Grilled Cheese Sandwiches",
                     ingredients: "1 (3 ounce) package, Cream cheese,
                                   ¾ cup, Mayonnaise,
                                   8 ounces shredded, Colby-Monterey jack cheese,
                                   ¾ teaspoon, Garlic salt,
                                   8 slices, French Bread,
                                   2 tablespoons, Butter",
                     user: user_admin,
                     author: "SARAHGRETZMIER",
                     cuisine: "american",
                     cook_time: "8 min",
                     prep_time: "12 min",
                     description: "Step 1: In a medium bowl, combine cream cheese, mayonnaise, shredded cheese and garlic salt. Beat until smooth. |
                                   Step 2: Preheat a large skillet over medium heat. Spread cheese mixture on 4 slices of bread, then top with the other 4 bread slices. Lightly butter both sides of each sandwich. Place sandwiches in skillet, and grill until golden brown on both sides, about 4 minutes per side.",
                     rating: 3.9)
picture_recipe6 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5081975.jpg")
recipe6.photo.attach(io: picture_recipe6, filename: "recipe6.jpg", content_type: "image/jpg")

recipe7 = Recipe.new(name: "Elvis' Grilled Cheese Sandwich",
                     ingredients: "2 slices, Bacon,
                                   1 tablespoon smooth, Peanut butter,
                                   2 slices soft, Bread,
                                   1 slice, American cheese,
                                   1 tablespoon softened, Butter",
                     user: user_admin,
                     author: "Ricky Cooks",
                     cuisine: "american",
                     cook_time: "20 min",
                     prep_time: "5 min",
                     description: "Step 1: Place the bacon in a large, deep skillet, and cook over medium-high heat, turning occasionally, until evenly browned, about 10 minutes. Drain the bacon slices on a paper towel-lined plate. |
                                   Step 2: Spread peanut butter on a slice of white bread, and cover with cheese slice and bacon. Top with the other piece of bread. Spread butter on both sides of the sandwich, and pan-fry in a skillet over medium heat until the bread is golden brown and the cheese has melted, 2 to 3 minutes per side. Serve hot.",
                     rating: 4)
picture_recipe7 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F729312.jpg")
recipe7.photo.attach(io: picture_recipe7, filename: "recipe7.jpg", content_type: "image/jpg")

recipe8 = Recipe.new(name: "Inside-Out Grilled Cheese Sandwich",
                     ingredients: "2 tablespoons divided, Butter,
                                   2 slices, Bread,
                                   ½ cup shredded extra sharp divided, Cheddar",
                     user: user_admin,
                     author: "Chef John",
                     cuisine: "american",
                     cook_time: "10 min",
                     prep_time: "5 min",
                     description: "Step 1: Melt 1 1/2 tablespoons butter in a nonstick skillet over medium-low heat. Place bread slices in the skillet on top of the melted butter. |
                                   Step 2: Spread about 1/4 cup Cheddar cheese on one slice of bread; place the other slice of bread, butter-side up, on top of the cheese. Spread about 2 tablespoons of cheese on top of the sandwich. |
                                   Step 3: Melt remaining 1/2 tablespoon butter in the skillet next to the sandwich. Flip the sandwich onto the melted butter so that the cheese-side is facing down. Spread remaining cheese on top of the sandwich. Cook sandwich until cheese on the bottom is crispy and caramelized, 3 to 4 minutes. Flip sandwich and cook until cheese is crispy and caramelized on the other side, another 3 to 4 minutes.",
                     rating: 4.65)
picture_recipe8 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4462829.jpg")
recipe8.photo.attach(io: picture_recipe8, filename: "recipe8.jpg", content_type: "image/jpg")

recipe9 = Recipe.new(name: "Spicy Grilled Cheese Sandwich",
                     ingredients: "2 tablespoons, Butter,
                                   4 slices, Bread,
                                   2 slices, American cheese,
                                   1 roma (plum) thinly sliced, Tomato,
                                   ¼ small chopped, Onion,
                                   1 jalapeno chopped, Pepper ",
                     user: user_admin,
                     author: "PATELGURL",
                     cuisine: "american",
                     cook_time: "3 min",
                     prep_time: "2 min",
                     description: "Step 1: Heat a large skillet over low heat. Spread butter or margarine onto one side of two slices of bread. |
                                   Step 2: Place both pieces buttered side down in the skillet. Lay a slice of cheese on each one, and top with slices of tomato, onion and jalapeno. Butter one side of the remaining slices of bread, and place on top buttered side up. When the bottom of the sandwiches are toasted, flip and fry until brown on the other side.",
                     rating: 4.63)
picture_recipe9 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5081856.jpg")
recipe9.photo.attach(io: picture_recipe9, filename: "recipe9.jpg", content_type: "image/jpg")

# recipe10 = Recipe.new(name: "Grilled Cheese Sandwich",
#                       ingredients: "4 slices, Bread,
#                                     3 tablespoons, Butter,
#                                     2 slices, Cheddar",
#                       user: user_admin,
#                       author: "sal",
#                       cuisine: "american",
#                       cook_time: "15 min",
#                       prep_time: "5 min",
#                       description: "Step 1: Preheat a nonstick skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side down in the hot skillet; add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side up on top of cheese. |
#                                     Step 2: Cook until lightly browned on one side; flip over and continue cooking until cheese is melted. Repeat with remaining 2 slices of bread, butter, and slice of cheese.",
#                       rating: 4.77)
# picture_recipe10 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2016%2F10%2F2206436_Grilled-Cheese-Sandwich_Photo-by-Buckwheat-Queen.jpg")
# recipe10.photo.attach(io: picture_recipe10, filename: "recipe10.jpg", content_type: "image/jpg")

# recipe11 = Recipe.new!(name: "Hachis Parmentier",
#                           ingredients: "1kg, Potatoes,
#                                         1kg, Minced pork and beef,
#                                         1kg, Spinach,
#                                         1kg, Cream,
#                                         1kg, Cheese",
#                           user: user_admin,
#                           author: "bob",
#                           cuisine: "don't know",
#                           cook_time: 15,
#                           prep_time: 5,
#                           description: "cook everything the wright way",
#                           rating: 4.77)
# picture_recipe11 = URI.open("https://www.curiouscuisiniere.com/wp-content/uploads/2019/10/French-Hachis-Parmentier-Potato-and-Beef-Casserole-8667-450-1.jpg")
# recipe11.photo.attach(io: picture_recipe11, filename: "recipe10.jpg", content_type: "image/jpg")

# recipe12 = Recipe.new!(name: "Grilled Salmon",
#                           ingredients: "1kg, Salmon,
#                                         1 spoon, Olive Oil,
#                                         a pinch, Salt,
#                                         a pinch, Pepper",
#                           user: user_admin,
#                           author: "bob",
#                           cuisine: "don't know",
#                           cook_time: 15,
#                           prep_time: 5,
#                           description: "This recipe for grilled salmon doesn’t call for fancy marinades or mercurial methods. All that’s needed is quality ingredients and a hot grill.
#                                         The main question is, which salmon is best?
#                                         I prefer wild-caught salmon because it has more flavor, but if you’re dealing with eaters who are mild fish fans, a quality farm-raised salmon will have a more mellow flavor. Like any protein, higher fat fish yields a more buttery bite. Salmon caught in the wild have to work harder than farm-raised, so they tend to be leaner and more fish-like in taste.",
#                           rating: 4.77)
# picture_recipe12 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
# recipe12.photo.attach(io: picture_recipe12, filename: "recipe10.jpg", content_type: "image/jpg")
#################################################################################################################################

# testing recipes

recipe13 = Recipe.new(name: "Garlic Basil Brown Butter Pasta",
                      ingredients: "1 pound, Pasta,
                                    6 tabkespoons, Butter,
                                    2, Garlic clove,
                                    1½ teaspoon, Black pepper,
                                    ½ cup, Pecorino,
                                    1 cup, Basil,
                                    2 cuos, Cherry Tomato,
                                    2 tablespoons, Olive oil,
                                    some, Red Pepper,
                                    some, Salt",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: "15 min",
                      prep_time: "5 min",
                      description: "Step 1:  Bring a large pot of salted water to a boil and cook pasta according to package directions until al dente. Just before draining, reserve 1 cup of the pasta cooking water. Drain. |
                                    Step 2: Melt 4 tablespoons butter in a large skillet over medium heat. Add the garlic and pepper and cook 1-2 minutes, until the butter is browning and the garlic is golden and fragrant. Reduce the heat to low and add 1/2 cup pasta water, the pasta, remaining butter, and pecorino. Tossing until melted. Remove from the heat, add 3/4 cup basil and toss, adding in more pasta water if needed to thin the sauce. |
                                    Step 3: In a bowl, combine the tomatoes, remaining 1/4 cup basil, olive oil, red pepper flakes, and a pinch of salt. |
                                    Step 4: To serve, divide the pasta among bowls and serve topped with tomatoes. Eat and ENJOY.",
                      rating: 3.9)
picture_recipe13 = URI.open("https://www.halfbakedharvest.com/wp-content/uploads/2019/05/20-Minute-Garlic-Basil-Brown-Butter-Pasta-1.jpg")
recipe13.photo.attach(io: picture_recipe13, filename: "recipe10.jpg", content_type: "image/jpg")

recipe14 = Recipe.new(name: "Salmon Omelette ",
                      ingredients: "3, Egg,
                                    some, Black pepper,
                                    40 g, Smoked salmon,
                                    15g, Butter,
                                    some, Salt,
                                    ½ teaspoon, Olive oil",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: 8,
                      prep_time: 25,
                      description: "Step 1: Gently beat the eggs together in a mixing bowl and season, to taste, with salt and freshly ground black pepper. |
                                    Step 2: Heat the butter in an omelette pan until foaming. Pour in the beaten eggs and cook for a few seconds, until the bottom of the omelette is lightly set. |
                                    Step 3: Push the set parts of the omelette into the uncooked centre of the omelette. Cook again, until the omelette has set further, then push the set parts into the centre of the omelette again. |
                                    Step 4: Repeat the process until the eggs have just set but the omelette is still soft in the centre. |
                                    Step 5: Place the smoked salmon into the centre of the omelette and cook for 30 seconds. |
                                    Step 6: Remove from the heat and tilt the pan slightly to move the omelette to the edge of the pan. Slide the omelette onto a serving plate, then shape it into a neat roll. Brush the omelette with olive oil and serve.",
                      rating: 3.8)
picture_recipe14 = URI.open("https://food-images.files.bbci.co.uk/food/recipes/smokedsalmonomelette_93229_16x9.jpg")
recipe14.photo.attach(io: picture_recipe14, filename: "recipe10.jpg", content_type: "image/jpg")

recipe15 = Recipe.new(name: "Sweet Potato Fries",
                      ingredients: "7, Sweet potato,
                                    2 tablespoon, Olive oil,
                                    1 teaspoon, Garlic powder,
                                    1 teaspoon, Paprika,
                                    1 teaspoon, Salt,
                                    ½ teaspoon, Black pepper",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: "25 min",
                      prep_time: "10 min",
                      description: "Step 1: Heat the oven to 400. |
                                    Step 2: Cut the sweet potatoes into sticks ¼ to ½ inch wide and 3 inches long, and toss them with the oil. |
                                    Step 3: Mix the spices, salt and pepper in a small bowl, and toss them with the sweet potatoes. Spread them out on 2 rimmed baking sheets. |
                                    Step 4: Bake until brown and crisp on the bottom, about 15 minutes, then flip and cook until the other side is crisp, about 10 minutes. Serve hot.",
                      rating: 4.27)
picture_recipe15 = URI.open("https://images.radio-canada.ca/v1/alimentation/recette/16x9/patate-douce-frite.jpg")
recipe15.photo.attach(io: picture_recipe15, filename: "recipe10.jpg", content_type: "image/jpg")

# recipe16 = Recipe.new(name: "Grilled Cheese Sandwich",
#                       ingredients: "1kg, Bread,
#                                     1kg, Butter,
#                                     1kg, Cheddar",
#                       user: user_admin,
#                       author: "bob",
#                       cuisine: "don't know",
#                       cook_time: "15 min",
#                       prep_time: "5 min",
#                       description: "Miam Mial",
#                       rating: 3.77)
# picture_recipe16 = URI.open("https://therecipecritic.com/wp-content/uploads/2022/08/grilledcheese-1.jpg")
# recipe16.photo.attach(io: picture_recipe16, filename: "recipe10.jpg", content_type: "image/jpg")

recipe17 = Recipe.new(name: "Fondue savoyarde",
                      ingredients: "1, Garlic clove,
                                    2½ cups, White wine
                                    1 tablespoon, Cornstarch,
                                    7 oucnes, Compté,
                                    7 ounces, Beafort,
                                    7 ounces, Reblochon,
                                    1 pinch, Ground nutmeg,
                                    1 pinch, Black pepper,
                                    1 pinch, Paprika,
                                    3 tablespoons, Kirch,
                                    1 loaf, Bread",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: 20,
                      prep_time: 5,
                      description: "Step 1: Rub the inside of a saucepan with the cut side of the garlic, doing so thoroughly to transfer the flavor of the garlic on to the pan. Discard the garlic. |
                                    Step 2: In a small bowl, whisk together the wine and cornstarch. Add it to the saucepan and bring it to a gentle, rolling boil. Reduce the heat, so that the wine is just simmering. |
                                    Step 3: Add the cheeses, followed by the nutmeg, black pepper, and paprika. Using a wooden spoon, stir constantly until the fondue is melted and smooth. If you find the cheese is sticking, lower the heat. |
                                    Step 4: Keeping the heat low to medium, continue cooking—never boiling—the fondue for 15 minutes until it has thickened. |
                                    Step 5: Once thickened, add the Kirsch, stir, and cook for 1 minute longer. |
                                    Step 6: Transfer the fondue by pouring into a fondue pot set over a flame. Provide each guest with a long fork and serve your hot, thick fondue with the cubed bread.",
                      rating: 4.9)
picture_recipe17 = URI.open("https://assets.afcdn.com/recipe/20161130/59380_w1024h768c1cx2808cy1872.webp")
recipe17.photo.attach(io: picture_recipe17, filename: "recipe10.jpg", content_type: "image/jpg")

recipe18 = Recipe.new(name: "Grilled Salmon",
                      ingredients: "1 filet, Salmon,
                                    some, Olive oil,
                                    1 pinch, Salt,
                                    1 pinch, Black pepper,
                                    1, Lemon",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: 20,
                      prep_time: 20,
                      description: "Step 1: Prepare the grill for direct cooking over high heat, 450°F-550°F. Brush the cooking grates clean and close the lid to heat. |
                                    Step 2: Generously coat the flesh side of the salmon fillets with oil and season evenly with kosher salt and black pepper. Grill the salmon skin side down over direct high heat with the lid closed, for about 6-8 minutes or until the fish lightens in color, becomes more firm to the touch and you can lift the fillets off the cooking grates without them sticking.  |
                                    Step 3: Turn the salmon over, close the lid, and cook to 130°F or about 2-4 minutes for medium rare or longer to desired doneness. Transfer to a platter to rest for 1-2 minutes. Slide the salmon skin from the fillets and serve with wedges of lemon and tartar or cucumber dill sauce.",
                      rating: 3.7)
picture_recipe18 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe18.photo.attach(io: picture_recipe18, filename: "recipe10.jpg", content_type: "image/jpg")

recipe19 = Recipe.new(name: "Hachis Parmentier",
                      ingredients: "15, Potato,
                                    700 g, Minced pork and beef,
                                    300 g, Spinach,
                                    4 tablespoon, Butter,
                                    ½ l, Milk,
                                    some, Salt,
                                    some, Pepper,
                                    1, Onion,
                                    1, Garlic clove,
                                    2 teaspoon, Parsley,
                                    ½, Beef broth,
                                    1, Egg,
                                    ¾ c fresh grated, Parmesan",
                      user: user_admin,
                      author: "bob",
                      cuisine: "don't know",
                      cook_time: "15 min",
                      prep_time: "5 min",
                      description: "Step 1: In a medium pot over medium high heat, bring the potatoes to a boil in lightly salted water. Boil until very tender, roughly 15 minutes. |
                                    Step 2: Once the potatoes are tender, drain the water and mash them with the warm milk and 3 Tbsp of butter. |
                                    Step 3: While the potatoes are boiling, heat 1 Tbsp of butter in a large sauté pan. Add the onion and garlic and sauté over medium heat until softened, 3-5 minutes. |
                                    Step 4: Add the chopped beef** to the onion and garlic mixture. Mix well. Season with parsley and salt and pepper as needed. (The seasoning level here will depend on your roast’s flavor.) Add a splash or two of beef broth if the meat mixture looks dry. |
                                    Step 5: Remove the pan from the heat and add the beaten egg. Mix well. |
                                    Step 6: Preheat your oven to 400F. |
                                    Step 7: Spoon roughly 1 c of mashed potatoes into bottom of greased 8x8 baking dish. Spread to cover the bottom of the dish. |
                                    Step 8: Add the meat mixture, spreading to make it even. |
                                    Step 9: Top with the remaining mashed potatoes. |
                                    Step 10: Sprinkle with Parmesan cheese. |
                                    Step 11: Bake the dish for 20-25 minutes, until the cheese is golden and you can see little bubbles coming up the sides (if using a glass baking dish). |
                                    Step 12: Let stand for 10 minutes before serving.",
                      rating: 4.2)
picture_recipe19 = URI.open("https://www.curiouscuisiniere.com/wp-content/uploads/2019/10/French-Hachis-Parmentier-Potato-and-Beef-Casserole-8667-450-1.jpg")
recipe19.photo.attach(io: picture_recipe19, filename: "recipe10.jpg", content_type: "image/jpg")

recipe20 = Recipe.new(name: "Carbonnade à la Flamande",
                      ingredients: "1.4 kg, Onion,
                                    175 g, Flour,
                                    10 ml, Salt,
                                    5 ml, Black pepper,
                                    2.3 kg, Beef,
                                    1.25 l, Dark beer,
                                    2, Bay leaves,
                                    5 ml, Dried thyme,
                                    8, Parsley stems,
                                    8, Peppercorns,
                                    15 ml, Sugar",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "180 min",
                      prep_time: "30 min",
                      description: "Step 1: Peel the onions. Cut them into small dice. |
                                    Step 2: Cook the onions in a little fat over moderate heat until golden. Remove from the heat and set aside. |
                                    Step 3: Season the flour with salt and pepper. Dredge the meat in the flour. Shake off the excess flour. |
                                    Step 4: Brown the meat well in a sauté pan. Do a little at a time to avoid overcrowding the pan. As each batch is browned, add it to the pot with the onions. |
                                    Step 5: Deglaze the sauté pan with the beer and add it to the pot. Add the stock, sachet, and sugar. |
                                    Step 6: Bring to a boil, cover, and transfer to the oven. Cook at 325°F(160°C) until very tender, 2-3 hours. |
                                    Step 7: Degrease. Ad just the consistency of the sauce. If it is too thin, reduce over moderately high heat. If it is too thick, dilute with brown stock. |
                                    Step 8: Taste and ad just the seasonings. Serve with plain boiled potatoes.",
                      rating: 5)
picture_recipe20 = URI.open("https://www.julieandrieu.com/media/cache/web_recipe_detail/uploads/2021/BH/mars/carbonnade_bh_mars.jpg")
recipe20.photo.attach(io: picture_recipe20, filename: "carbonade_a_la_flamande.jpg", content_type: "image/jpg")

recipe21 = Recipe.new(name: "Veal Curry with Mangos and Cashews",
                      ingredients: "4.5 kg, Veal,
                                    250 ml, Olive oil,
                                    1.25kg, Onions,
                                    30 ml, Garlic,
                                    75 ml, Curry powder,
                                    15 ml, Ground corriander,
                                    12 ml, Paprika,
                                    5 ml, Ground cumin,
                                    5 ml, Black pepper,
                                    2 ml Cinnamon,
                                    2, Bay leaves,
                                    10 ml, Salt,
                                    125 g, Flour,
                                    2 l, White stock,
                                    300 g, Tomato concassé,
                                    250 ml, Whipped cream,
                                    4, Mangos,
                                    500 gr, Rice,
                                    120 g, Cashews,
                                    30 ml, Parsley",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "90 min",
                      prep_time: "30 min",
                      description: "Step 1: Cutthevealinto1-in.(2.5-cm)cubes. |
                                    Step 2: Heat the oil in a brazier over medium heat. Add the meat and cook it in the fat, stirring occasionally, until seared on all sides but only lightly browned. |
                                    Step 3: Add the onions and garlic to the pan. Sauté until softened, but do not brown. |
                                    Step 4: Add the spices and salt and stir. Cook 1 minute. |
                                    Step 5: Stir in the flour to make a roux and cook another 2 minutes. |
                                    Step 6: Add the stock and tomatoes. Bring to a boil while stirring. |
                                    Step 7: Cover and simmer slowly in the oven(300°F/150°C) or on top of the range until the meat is tender, 1–11⁄2 hours. |
                                    Step 8: Degrease, discard the bay leaf, and add the cream. Adjust the seasonings. |
                                    Step 9: Peel the mangos with a paring knife or vegetable peeler. Cut the mango flesh from the stone in thick slices. Cut into medium dice. |
                                    Step 10: To serve, place a bed of rice on a plate. Spoon the curry onto the center of the rice. Top with diced mango. Sprinkle with chopped cashews and chopped parsley.",
                      rating: 3.7)
picture_recipe21 = URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1670499885/Screenshot_2022-12-08_at_12.44.37_tu1aty.png")
recipe21.photo.attach(io: picture_recipe21, filename: "veal.png", content_type: "image/png")

recipe22 = Recipe.new(name: "Swedish Meatballs",
                      ingredients: "300 g, Onion,
                                    60 ml, Olive oil,
                                    300 g, Dry bread crumbs,
                                    500 ml, Milk,
                                    10, Egg,
                                    2.5 kg, Minced pork and beef,
                                    17 ml, Dill weed,
                                    2 ml, Nutmeg,
                                    2 ml, Allspice,
                                    30 g, Salt,
                                    2 l, Brown sauce,
                                    625 ml, Light cream",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "30 min",
                      prep_time: "25 min",
                      description: "Step 1: Sauté the onions in oil until tender but not brown. Cool thoroughly. |
                                    Step 2: Combine the bread crumbs with the milk and egg and let soak 15 minutes. |
                                    Step 3: Add the cooked onion and the crumb mixture to the meat in a mixing bowl. Add the spices and salt and mix gently until well combined. |
                                    Step 4: Portion the meat with a No.20 scoop into 2-oz(60-g) portions. Roll into balls and place on a sheet pan. |
                                    Step 5: Brown in a 400°F(200°C)oven. |
                                    Step 6: Remove meatballs from sheet pan and place in baking pans in a single layer. |
                                    Step 7: Add the hot cream and dill to the hot brown sauce and pour over the meatballs. |
                                    Step 8: Cover the pans and bake at 325°F(165°C) for 30 minutes, or until the meatballs are cooked. |
                                    Step 9: Skim fat from sauce. |
                                    Step 10: Serve 3 meatballs and 2 fl oz (60 mL) sauce per portion.",
                      rating: 4.05)
picture_recipe22 = URI.open("https://images.themodernproper.com/billowy-turkey/production/posts/2018/swedish-meatballs-13.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1599768329&s=e3c9c3311f2b121c90191902f31d6839")
recipe22.photo.attach(io: picture_recipe22, filename: "swedish_meatballs.jpg", content_type: "image/jpg")

recipe23 = Recipe.new(name: "Costolette di Vitello Ripiene alla Valdostana",
                      ingredients: "800 g, Veal,
                                    350 g, Fontina cheese,
                                    1 pinch, Salt,
                                    1 pinch, Black pepper,
                                    7 ml, Rosemary,
                                    100 g, Flour,
                                    1, Egg,
                                    60 g, Bread crumbs,
                                    a bit of, Butter",
                      user: user_admin,
                      author: "Bob ",
                      cuisine: "Belgian",
                      cook_time: "40 min",
                      prep_time: "20 min",
                      description: "Step 1: Remove the chine and feather bones so only the rib bone is attached to each chop. |
                                    Step 2: Cut a pocket in each. |
                                    Step 3: Flatten the chops lightly with a cutlet pounder to increase the diameter of the eye. Be careful not to tear a hole in the meat. |
                                    Step 4: Cut the cheese into thin slices. |
                                    Step 5: Stuff the chops with the cheese, making sure all of the cheese is insidethe pockets, with none hanging out. Press the edges of the pockets together and pound lightly to seal. If this is done carefully, you don’t need to skewer them shut. |
                                    Step 6: Season the chops with salt and pepper. |
                                    Step 7: Setup a breading station. Crumble the rosemary and mix it with the bread crumbs. |
                                    Step 8: Bread the chops. |
                                    Step 9: Sauté the chops in butter and serve immediately.",
                      rating: 3.2)
picture_recipe23 = URI.open("https://www.negroni.com/sites/negroni.com/files/styles/scale__1440_x_1440_/public/cotoletta_alla_valdostana.png?itok=5vCjV8tw")
recipe23.photo.attach(io: picture_recipe23, filename: "Costolette.jpg", content_type: "image/jpg")

recipe24 = Recipe.new(name: "Chorizo & mozzarella gnocchi bake",
                      ingredients: "1 tablespoon, Olive oil,
                                    1, Onion,
                                    2 crushed, Garlic cloves,
                                    120 g, Chorizo,
                                    800 g, Chopped Tomatoes,
                                    1 teaspoon, Sugar,
                                    600g, Gocchi,
                                    125g, Mozzarella,
                                    some, Basil,
                                    to serve, Salad",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "25 min",
                      prep_time: "10 min",
                      description: "Step 1: Heat the oil in a medium pan over a medium heat. Fry the onion and garlic for 8-10 mins until soft. Add the chorizo and fry for 5 mins more. Tip in the tomatoes and sugar, and season. Bring to a simmer, then add the gnocchi and cook for 8 mins, stirring often, until soft. Heat the grill to high. |
                                    Step 2: Stir ¾ of the mozzarella and most of the basil through the gnocchi. Divide the mixture between six ovenproof ramekins, or put in one baking dish. Top with the remaining mozzarella, then grill for 3 mins, or until the cheese is melted and golden. Season, scatter over the remaining basil and serve with green salad.",
                      rating: 4.3)
picture_recipe24 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gnocchi-1d16725.jpg?quality=90&webp=true&resize=440,400")
recipe24.photo.attach(io: picture_recipe24, filename: "chorizo.jpg", content_type: "image/jpg")

recipe25 = Recipe.new(name: "Teriyaki chicken",
                      ingredients: "2 tablespoon, Sesam oil,
                                    6 slices, Chicken,
                                    2, Garlic cloves,
                                    1 thumb-sized, Ginger,
                                    50 g, Honey,
                                    30 ml, Soy sauce,
                                    1 tablespoon, Rice wine vinegar,
                                    1 tablespoon, Sesame seeds,
                                    4, Spring onions,
                                    300 g, Rice,
                                    a bit, Steamed bok choi",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "15 min",
                      prep_time: "5 min",
                      description: "Step 1: Heat the oil in a non-stick pan over a medium heat. Add the chicken and fry for 7 mins, or until golden. Add the garlic and ginger and fry for 2 mins. Stir in the honey, soy sauce, vinegar and 100ml water. Bring to the boil and cook for 2 - 5 mins over a medium heat until the chicken is sticky and coated in a thick sauce. |
                                    Step 2: Scatter over the spring onions and sesame seeds, then serve the chicken with the rice and steamed veg.",
                      rating: 3.56)
picture_recipe25 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/easy-teriyaki-c845724.jpg?quality=90&webp=true&resize=440,400")
recipe25.photo.attach(io: picture_recipe25, filename: "teriyaki.jpg", content_type: "image/jpg")

recipe26 = Recipe.new(name: "One-pan spaghetti with nduja, fennel & olives",
                      ingredients: "400 g, Spaghetti,
                                    3, Garlic cloves,
                                    ½, fennel,
                                    75 g, Nduja,
                                    200 g, Tomato,
                                    75 g, Black olives,
                                    2 teaspoon, Tomato purée,
                                    3 tablespoon, Olive oil,
                                    2 teaspoon, Red wine vinegar,
                                    40 g, Pecorino,
                                    handful, Basil",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "15 min",
                      prep_time: "15 min",
                      description: "Step 1: Boil the kettle. Put all the ingredients except the pecorino and basil in a wide saucepan or deep frying pan and season well. Pour over 800ml kettle-hot water and bring to a simmer, using your tongs to ease the spaghetti under the liquid as it starts to soften. |
                                    Step 2: Simmer, uncovered, for 10-12 mins, tossing the spaghetti through the liquid every so often until it is cooked and the sauce is reduced and clinging to it. Add a splash more hot water if the sauce is too thick or does not cover the pasta while it cooks. Turn up the heat for the final few mins to drive off the excess liquid, leaving you with a rich sauce. Stir through the pecorino and basil, and serve with an extra drizzle of oil and pecorino on the side.",
                      rating: 4.3)
picture_recipe26 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/one-pan-spaghetti-with-nduja-fennel-olives-2308fb3.jpg?quality=90&webp=true&resize=440,400")
recipe26.photo.attach(io: picture_recipe26, filename: "spaghetti.jpg", content_type: "image/jpg")

recipe27 = Recipe.new(name: "Chicken fajitas",
                      ingredients: "2 breasts, Chicken,
                                    1, Red onion,
                                    1, Pepper,
                                    1, Red chilli,
                                    1, Paprika,
                                    1 tablespoon, Ground coriander,
                                    some, Ground cumin,
                                    2, Garlic cloves,
                                    4 tablespoon, Olive oil,
                                    1, Lime,
                                    some, Tabasco,
                                    8, Tortillas,
                                    230 g, Salad,",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "1O min",
                      prep_time: "15 min",
                      description: "Step 1: Heat oven to 200C/180C fan/gas 6 and wrap 8 medium tortillas in foil. |
                                    Step 2: Mix 1 heaped tbsp smoked paprika, 1 tbsp ground coriander, a pinch of ground cumin, 2 crushed garlic cloves, 4 tbsp olive oil, the juice of 1 lime and 4-5 drops Tabasco together in a bowl with a big pinch each of salt and pepper. |
                                    Step 3: Mix 1 heaped tbsp smoked paprika, 1 tbsp ground coriander, a pinch of ground cumin, 2 crushed garlic cloves, 4 tbsp olive oil, the juice of 1 lime and 4-5 drops Tabasco together in a bowl with a big pinch each of salt and pepper. |
                                    Step 4: Heat a griddle pan until smoking hot and add the chicken and marinade to the pan.|
                                    Step 5: Keep everything moving over a high heat for about 5 mins using tongs until you get a nice charred effect. If your griddle pan is small you may need to do this in two batches. |
                                    Step 6: To check the chicken is cooked, find the thickest part and tear in half – if any part is still raw cook until done. |
                                    Step 7: Put the tortillas in the oven to heat up and serve with the cooked chicken, a bag of mixed salad and one 230g tub of fresh salsa.",
                      rating: 4.9)
picture_recipe27 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chicken-fajitas-2-d7172f8.jpg?quality=90&webp=true&resize=440,400")
recipe27.photo.attach(io: picture_recipe27, filename: "fajitas.jpg", content_type: "image/jpg")

recipe28 = Recipe.new(name: "Ultimate chorizo ciabatta",
                      ingredients: "2, Ciabatta,
                                    150 g, Chorizo,
                                    75 g, Pesto,
                                    200 g, Pepper,
                                    Handful, Rocket",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "10 min",
                      prep_time: "5 min",
                      description: "Step 1: Heat oven to 180C/160C fan/gas 4 and put the ciabatta in to warm up. Put a griddle pan over a medium heat and cook the chorizo for 5 mins each side or until charred and cooked through. |
                                    Step 2: Open up the warmed ciabatta and spread the pesto on the bottom. Layer with the red peppers , then the warm chorizo. Scatter over the rocket, sandwich the ciabatta together, cut in two and serve.",
                      rating: 4.3)
picture_recipe28 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/ultimate-chorizo-ciabatta-c3f006e.jpg?quality=90&webp=true&resize=440,400")
recipe28.photo.attach(io: picture_recipe28, filename: "ultimate_chorizzo_chabiata.jpg", content_type: "image/jpg")

recipe29 = Recipe.new(name: "Tomato pizzas",
                      ingredients: "450 g, Flour,
                                    7 g, Yeast,
                                    2 tablespoon, Olive oil,
                                    350 ml, Water,
                                    5 tablespoon, Tomato sauce,
                                    8, Tomato,
                                    some, Parmesan",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "12 min",
                      prep_time: "10 min",
                      description: "Step 1: For the dough, put the flour, yeast and 2 tsp salt into a large bowl and mix. Make a well. Mix the oil and water in a jug, then tip into the bowl. Use a wooden spoon to work the liquid into the flour – it will seem pretty wet. Set the bowl aside for 15 mins. Leaving the dough like this will save you from lengthy kneading later. |
                                    Step 2: Turn the dough onto a well-floured surface, flour your hands, then knead it very gently for about 2 mins until it is fairly even, soft and bouncy. Return the dough to the bowl, cover with oiled cling film, then let it rise in a warm place (or in the fridge overnight) until doubled in size. |
                                    Step 3: When ready to cook, heat oven to 240C/220C fan/gas 9 or as hot as it will go, then put a baking sheet in on a high shelf. Dust another sheet with flour. Split the dough into 8, then roll 3 balls thinly into rough circles. Lift onto the floured sheet. Smear over a thin layer of the sauce, scatter over a few slices of tomato, season, then add sliced goat’s or grated Parmesan cheese if you want to. Slide the sheet on top of the heated sheet. Bake for 12 mins or until golden and crisp and the tomatoes are starting to caramelise around the edges. Top with any fresh toppings, then drizzle with more olive oil to serve.",
                      rating: 3)
picture_recipe29 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-424794_12-3730781.jpg?quality=90&webp=true&resize=440,400")
recipe29.photo.attach(io: picture_recipe29, filename: "tomatopizza.jpg", content_type: "image/jpg")

recipe30 = Recipe.new(name: "Oven frittata",
                      ingredients: "½ teaspoon, Olive oil,
                                    85, Fusili,
                                    1 Leek,
                                    85 g, Sweetcorn,
                                    85 g, Peas,
                                    1, Pepper,
                                    2, Egg,
                                    150 ml, Milk,
                                    1 tablespoon, Thyme,
                                    50 g, Cheddar,
                                    2 tablespoon, Parmsean",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: "40 min",
                      prep_time: "20 min",
                      description: "Step 1: Heat oven to 190C/fan 170C/gas 5. Grease a 1.2 litre baking dish with the olive oil. |
                                    Step 2: Cook the pasta in salted boiling water in a large pan for 8 mins. Add all the vegetables and cook for another 2-3 mins until the pasta is tender and the vegetables slightly softened. Drain, then tip into the baking dish and mix well. |
                                    Step 3: Beat together the eggs and milk in a jug and add the thyme. Mix the two cheeses together and add most of it to the egg mixture, then season. Pour into the baking dish, stir gently, then scatter the rest of the cheese on top. Bake for 35-40 mins until set and golden. Cool for a few mins, then serve with a green salad.",
                      rating: 4.7)
picture_recipe30 = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-327939_12-7d9a10f.jpg?quality=90&webp=true&resize=440,400")
recipe30.photo.attach(io: picture_recipe30, filename: "fritatat.jpg", content_type: "image/jpg")

recipe31 = Recipe.new(name: "Mojito",
                      ingredients: "1, Lime,
                                    2 tablespoon, Sugar,
                                    1 plant, Mint,
                                    1 big shot, Rhum,
                                    some, Sparkling water,
                                    some, Crushed ice",
                      user: user_admin,
                      author: "Bob",
                      cuisine: "Belgian",
                      cook_time: 0,
                      prep_time: 15,
                      description: "Step 1: Place mint leaves and 1 lime wedge into a sturdy glass. Use a muddler and crush to release mint oils and lime juice. |
                                    Step 2: Add remaining lime wedges and 2 tablespoons sugar, and muddle again to release the lime juice. Do not strain the mixture. |
                                    Step 3: Fill the glass almost to the top with ice. Pour in rum and fill the glass with sparkling water. |
                                    Step 4: Stir, taste, and add more sugar if desired.",
                      rating: 4.89)
picture_recipe31 = URI.open("https://thebigmansworld.com/wp-content/uploads/2021/06/keto-mojito4.jpeg")
recipe31.photo.attach(io: picture_recipe31, filename: "mojito.jpg", content_type: "image/jpg")

# recipe = Recipe.new(name: "",
#                       ingredients: "",
#                       user: user_admin,
#                       author: "",
#                       cuisine: "",
#                       cook_time: "",
#                       prep_time: "",
#                       description: "",
#                       rating: )
# picture_recipe = URI.open("")
# recipe.photo.attach(io: picture_recipe, filename: "", content_type: "image/jpg")

puts "Saving recipes"
recipe1.save
recipe2.save
recipe3.save
recipe4.save
recipe5.save
recipe6.save
recipe7.save
recipe8.save
recipe9.save
# recipe10.save
# recipe11.save
# recipe12.save
recipe13.save
recipe14.save
recipe15.save
# recipe16.save
recipe17.save
recipe18.save
recipe19.save
recipe20.save
recipe21.save
recipe22.save
recipe23.save
recipe24.save
recipe25.save
recipe26.save
recipe27.save
recipe28.save
recipe29.save
recipe30.save
recipe31.save
