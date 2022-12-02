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

ingredient3 = Ingredient.create(name: "Sweet potatoes", quantity: "3", expiration_date: Date.today + 25, fridge: my_fridge_user_admin)
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

ingredient32 = Ingredient.create(name: "Nem", quantity: "1200", expiration_date: Date.today + 12, fridge: my_fridge_user2)
picture_ingredient32 = URI.open("https://chefonefoods.com/wp-content/uploads/2016/09/Pork-Egg-Roll.png")
ingredient32.photo.attach(io: picture_ingredient32, filename: "nem.png", content_type: "image/png")

ingredient15 = Ingredient.create(name: "Ham", quantity: "1 kg", expiration_date: Date.today + 6, fridge: my_fridge_user2)
picture_ingredient15 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient15.photo.attach(io: picture_ingredient15, filename: "snow.png", content_type: "image/png")

ingredient16 = Ingredient.create(name: "Mozarella", quantity: "6 balls", expiration_date: Date.today + 5, fridge: my_fridge_user2)
picture_ingredient16 = URI.open("https://cdn-icons-png.flaticon.com/512/95/95899.png")
ingredient16.photo.attach(io: picture_ingredient16, filename: "snow.png", content_type: "image/png")

ingredient17 = Ingredient.create(name: "Basil", quantity: "1 plant", expiration_date: Date.today + 30, fridge: my_fridge_user_admin)
picture_ingredient17 = URI.open("https://cdn.shopify.com/s/files/1/0245/1010/3615/products/Basil_1c9cb179-248a-46ce-b153-b22a84de5f92_1080x.png?v=1582011356")
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

###############################################################################################################

ingredient32 = Ingredient.create(name: "Olive oil", quantity: "1 l", expiration_date: Date.today + 300, fridge: my_fridge_user_admin)
picture_ingredient32 = URI.open("https://bulknaturaloils.com/media/catalog/product/cache/5b89197651ea0053483b6b3397eafb60/o/l/olive-pure-470_3_1_8.png")
ingredient32.photo.attach(io: picture_ingredient32, filename: "Olive oil.png", content_type: "image/png")

ingredient33 = Ingredient.create(name: "Pasta", quantity: "3 kg", expiration_date: Date.today + 100, fridge: my_fridge_user_admin)
picture_ingredient33 = URI.open("https://www.soubry.be/storage/files/2523f79d-06f1-4d68-a3e0-c6a14660cb0a/product_large_volkoren-spaghetti.webp")
ingredient33.photo.attach(io: picture_ingredient33, filename: "Pasta.png", content_type: "image/png")

ingredient34 = Ingredient.create(name: "Bread", quantity: "4", expiration_date: Date.today + 3, fridge: my_fridge_user_admin)
picture_ingredient34 = URI.open("https://panamarbakery.com/public/Image/2021/3/161547107712959normal_Galeria.png")
ingredient34.photo.attach(io: picture_ingredient34, filename: "Bread.png", content_type: "image/png")

ingredient35 = Ingredient.create(name: "Mayonnaise", quantity: "750 ml", expiration_date: Date.today + 80, fridge: my_fridge_user_admin)
picture_ingredient35 = URI.open("https://www.belgian-sauces.com/uploads/2015/02/mayonnaise-oeuf-belgium-550ml-full.png")
ingredient35.photo.attach(io: picture_ingredient35, filename: "Mayonnaise.png", content_type: "image/png")

ingredient36 = Ingredient.create(name: "Butter", quantity: "500 gr", expiration_date: Date.today + 9, fridge: my_fridge_user_admin)
picture_ingredient36 = URI.open("https://cdn.shopify.com/s/files/1/0588/7236/5211/products/cultured-butter-sea-salt-featured_1_x1880.png?v=1661805910")
ingredient36.photo.attach(io: picture_ingredient36, filename: "Butter.png", content_type: "image/png")

ingredient37 = Ingredient.create(name: "Parmesan", quantity: "278 gr", expiration_date: Date.today + 15, fridge: my_fridge_user_admin)
picture_ingredient37 = URI.open("https://www.nzmp.com/content/dam/nzmp/global/images/product-shots/product-page-master/product-images-grey-background/tile-800x600-_0007_Parmesan-Block-large-shaving.png")
ingredient37.photo.attach(io: picture_ingredient37, filename: "Parmesan.png", content_type: "image/png")

ingredient38 = Ingredient.create(name: "Cheddar", quantity: "969 gr", expiration_date: Date.today + 5, fridge: my_fridge_user_admin)
picture_ingredient38 = URI.open("https://www.kaas.nl/wp-content/uploads/2020/03/130778_Cheddar-Rood-1.png")
ingredient38.photo.attach(io: picture_ingredient38, filename: "Cheddar.png", content_type: "image/png")

ingredient39 = Ingredient.create(name: "American cheese", quantity: "1 kg", expiration_date: Date.today + 6, fridge: my_fridge_user_admin)
picture_ingredient39 = URI.open("https://homshop.app/wp-content/uploads/2019/04/american.png")
ingredient39.photo.attach(io: picture_ingredient39, filename: "American cheese.png", content_type: "image/png")

### RECIPES
puts "creating recipes..."

recipe1 = Recipe.create!(name: "Baked Mac and Cheese for One",
                         ingredients: "3 tablespoons uncooked macaroni, pasta,
                                       1 tablespoon, butter,
                                       1 tablespoon all-purpose, flour,
                                       ¼ teaspoon, salt,
                                       1 pinch, pepper,
                                       ⅛ teaspoon, onion powder,
                                       ½ cup, milk,
                                       ⅓ cup shredded, Cheddar cheese,
                                       ⅛ teaspoon ground, mustard,
                                       1 dash, Worcestershire sauce,
                                       1 dash, hot sauce,
                                       1 teaspoon, bread,
                                       1 tablespoon shredded, Cheddar cheese",
                         user: user_admin,
                         author: "amydoll",
                         cuisine: "american",
                         cook_time: 20,
                         prep_time: 10,
                         description: "Step 1: Preheat an oven to 200 degrees C. Grease an oven-proof soup crock or 1 cup baking dish.
                                       Step 2: Fill a small saucepan with water, and bring to a boil. Stir in the macaroni; boil until cooked but still firm to the bite, about 8 minutes. Drain well, and reserve.
                                       Step 3: In the same saucepan, melt the butter over medium-high heat. Stir in the flour, salt, pepper, onion powder, and milk; whisk until smooth. Cook, stirring, for 2 minutes. Reduce heat to low, and whisk in 1/3 cup cheese, mustard, Worcestershire sauce, and hot sauce. Stir in the cooked macaroni. Spoon the macaroni and cheese into the prepared dish. Sprinkle with bread crumbs and 1 tablespoon cheddar cheese.
                                       Step 4: Bake, uncovered, until the cheese is melted and the macaroni is heated through, about 10 minutes.",
                         rating: 4.4)

picture_recipe1 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4516736.jpg")
recipe1.photo.attach(io: picture_recipe1, filename: "recipe1.jpg", content_type: "image/jpg")

recipe2 = Recipe.create!(name: "Pesto Pasta Caprese Salad",
                         ingredients: "1 ½ cups rotini, pasta,
                                       3 tablespoons, pesto,
                                       1 tablespoon extra-virgin, olive oil,
                                       ¼ teaspoon, salt,
                                       ¼ teaspoon granulated, garlic,
                                       ⅛ teaspoon, pepper,
                                       ½ cup halved, grape tomatoes,
                                       ½ cup small (pearlini) fresh balls, mozzarella ,
                                       2 leaves fresh finely shredded leaves, basil",
                         user: user_admin,
                         author: "thedailygourmet",
                         cuisine: "italian",
                         cook_time: 10,
                         prep_time: 10,
                         description: "Step 1: Bring a large pot of lightly salted water to a boil; cook the rotini at a boil until tender yet firm to the bite, about 8 minutes; drain.
                                       Step 2: Mix pesto, olive oil, salt, granulated garlic, and black pepper in a bowl; add rotini. Toss to coat. Fold in tomatoes, mozzarella, and fresh basil.",
                         rating: 4.6)

picture_recipe2 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4794067.jpg")
recipe2.photo.attach(io: picture_recipe2, filename: "recipe2.jpg", content_type: "image/jpg")

recipe3 = Recipe.create!(name: "Creamy Penne Pasta Primavera",
                         ingredients: "2 cups penne, pasta,
                                       2 teaspoons, olive oil,
                                       1 pound trimmed and cut into 2-inch pieces, asparagus,
                                       3 cut into strips, carrots,
                                       2 cups halved, cherry tomatoes,
                                       1 clove minced or more to taste, garlic,
                                       1 cup grated, Parmesan,
                                       1 cup heavy, whipped cream,
                                       ¼ teaspoon ground, pepper",
                         user: user_admin,
                         author: "gretchen",
                         cuisine: "italian",
                         cook_time: 20,
                         prep_time: 15,
                         description: "Step 1: Bring a large pot of lightly salted water to a boil; add penne and cook, stirring occasionally, until tender yet firm to the bite, about 11 minutes. Drain.
                                       Step 2: Heat olive oil in a large skillet over medium heat-high heat; saute asparagus and carrots until tender yet firm to the bite, about 5 minutes. Add tomatoes and garlic; saute until garlic is fragrant, about 1 minute.
                                       Step 3: Stir Parmesan cheese, cream, and black pepper into vegetable mixture until cheese melts and sauce is smooth, 2 to 3 minutes. Add pasta to sauce and toss to coat.",
                         rating: 4.5)

picture_recipe3 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1126428.jpg")
recipe3.photo.attach(io: picture_recipe3, filename: "recipe3.jpg", content_type: "image/jpg")

recipe4 = Recipe.create!(name: "Tomato and Garlic Pasta",
                         ingredients: "2 pounds, tomatoes,
                                       1 (8 ounce) package angel hair, pasta,
                                       1 tablespoon, olive oil,
                                       4 cloves crushed, garlic,
                                       1 tablespoon tomato ,paste,
                                       a pinch, salt,
                                       ground, pepper,
                                       1 tablespoon chopped fresh, basil,
                                       ¼ cup grated, Parmesan",
                         user: user_admin,
                         author: "ALMA-LOU",
                         cuisine: "italian",
                         cook_time: 30,
                         prep_time: 15,
                         description: "Step 1 : Place tomatoes in a large pot and cover with cold water. Bring just to a boil. Pour off water, and cover again with cold water. Peel the skin off tomatoes and cut into small pieces.
                                       Step 2: Bring a large pot of lightly salted water to a boil. Cook angel hair pasta in the boiling water, stirring occasionally, until tender yet firm to the bite, 4 to 5 minutes.
                                       Step 3: Meanwhile, heat olive oil in a large skillet or pan, making sure there is enough to cover the bottom of the pan, and sauté garlic until opaque but not browned. Stir in tomato paste. Immediately stir in the tomatoes, salt, and pepper. Reduce heat, and simmer until pasta is ready, adding basil at the end.
                                       Step 4: Drain pasta, do not rinse in cold water. Toss with a bit of olive oil, then mix into the sauce.
                                       Step 5: Reduce heat as low as possible. Keep warm, uncovered, for about 10 minutes when it is ready to serve. Garnish generously with fresh Parmesan cheese.",
                         rating: 4.4)

picture_recipe4 = URI.open("https://www.allrecipes.com/thmb/Pqd5cmqNpCSO6oqxiSzIYcZ4dFc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/837215-3fd78897006b4046a3babf9e5f05237b.jpg")
recipe4.photo.attach(io: picture_recipe4, filename: "recipe4.jpg", content_type: "image/jpg")

recipe5 = Recipe.create!(name: "Pasta and Garlic",
                         ingredients: "1 ½ pounds, pasta,
                                       ¼ cup, olive oil,
                                       2 cloves or more to taste crushed, garlic,
                                       a pinch, salt,
                                       a pinch, pepper,
                                       ¼ cup grated, Parmesan",
                         user: user_admin,
                         author: "Josie Strazzulla",
                         cuisine: "italian",
                         cook_time: 10,
                         prep_time: 5,
                         description: "Step 1: In a large pot of salted water boil pasta until al dente. Drain well.
                                       Step 2: In a small saucepan heat oil slightly, add garlic. Saute garlic until it is lightly browned. Be careful not to burn garlic.
                                       Step 3: Combine pasta and garlic, salt and pepper to taste. Top with Parmesan or Romano cheese and serve.",
                         rating: 4.32)

picture_recipe5 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1110792.jpg")
recipe5.photo.attach(io: picture_recipe5, filename: "recipe5.jpg", content_type: "image/jpg")

recipe6 = Recipe.create!(name: "Gourmet Grilled Cheese Sandwiches",
                         ingredients: "1 (3 ounce) package, cream cheese,
                                       ¾ cup, mayonnaise,
                                       8 ounces shredded, Colby-Monterey Jack cheese,
                                       ¾ teaspoon, garlic salt,
                                       8 slices, French bread,
                                       2 tablespoons, butter",
                         user: user_admin,
                         author: "SARAHGRETZMIER",
                         cuisine: "american",
                         cook_time: 8,
                         prep_time: 12,
                         description: "Step 1: In a medium bowl, combine cream cheese, mayonnaise, shredded cheese and garlic salt. Beat until smooth.
                                       Step 2: Preheat a large skillet over medium heat. Spread cheese mixture on 4 slices of bread, then top with the other 4 bread slices. Lightly butter both sides of each sandwich. Place sandwiches in skillet, and grill until golden brown on both sides, about 4 minutes per side.",
                         rating: 3.9)

picture_recipe6 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5081975.jpg")
recipe6.photo.attach(io: picture_recipe6, filename: "recipe6.jpg", content_type: "image/jpg")

recipe7 = Recipe.create!(name: "Elvis' Grilled Cheese Sandwich",
                         ingredients: "2 slices, bacon,
                                       1 tablespoon smooth, peanut butter,
                                       2 slices soft, bread,
                                       1 slice, American cheese,
                                       1 tablespoon softened, butter",
                         user: user_admin,
                         author: "Ricky Cooks",
                         cuisine: "american",
                         cook_time: 20,
                         prep_time: 5,
                         description: "Step 1: Place the bacon in a large, deep skillet, and cook over medium-high heat, turning occasionally, until evenly browned, about 10 minutes. Drain the bacon slices on a paper towel-lined plate.
                                       Step 2: Spread peanut butter on a slice of white bread, and cover with cheese slice and bacon. Top with the other piece of bread. Spread butter on both sides of the sandwich, and pan-fry in a skillet over medium heat until the bread is golden brown and the cheese has melted, 2 to 3 minutes per side. Serve hot.",
                         rating: 4)

picture_recipe7 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F729312.jpg")
recipe7.photo.attach(io: picture_recipe7, filename: "recipe7.jpg", content_type: "image/jpg")

recipe8 = Recipe.create!(name: "Inside-Out Grilled Cheese Sandwich",
                         ingredients: "2 tablespoons divided, butter,
                                       2 slices, bread,
                                       ½ cup shredded extra sharp divided, Cheddar",
                         user: user_admin,
                         author: "Chef John",
                         cuisine: "american",
                         cook_time: 10,
                         prep_time: 5,
                         description: "Step 1: Melt 1 1/2 tablespoons butter in a nonstick skillet over medium-low heat. Place bread slices in the skillet on top of the melted butter.
                                       Step 2: Spread about 1/4 cup Cheddar cheese on one slice of bread; place the other slice of bread, butter-side up, on top of the cheese. Spread about 2 tablespoons of cheese on top of the sandwich.
                                       Step 3: Melt remaining 1/2 tablespoon butter in the skillet next to the sandwich. Flip the sandwich onto the melted butter so that the cheese-side is facing down. Spread remaining cheese on top of the sandwich. Cook sandwich until cheese on the bottom is crispy and caramelized, 3 to 4 minutes. Flip sandwich and cook until cheese is crispy and caramelized on the other side, another 3 to 4 minutes.",
                         rating: 4.65)

picture_recipe8 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F4462829.jpg")
recipe8.photo.attach(io: picture_recipe8, filename: "recipe8.jpg", content_type: "image/jpg")

recipe9 = Recipe.create!(name: "Spicy Grilled Cheese Sandwich",
                         ingredients: "2 tablespoons, butter,
                                       4 slices, bread,
                                       2 slices, American cheese,
                                       1 roma (plum) thinly sliced ,tomato,
                                       ¼ small chopped, Onion,
                                       1 jalapeno chopped, Pepper ",
                         user: user_admin,
                         author: "PATELGURL",
                         cuisine: "american",
                         cook_time: 3,
                         prep_time: 2,
                         description: "Step 1: Heat a large skillet over low heat. Spread butter or margarine onto one side of two slices of bread.
                                       Step 2: Place both pieces buttered side down in the skillet. Lay a slice of cheese on each one, and top with slices of tomato, onion and jalapeno. Butter one side of the remaining slices of bread, and place on top buttered side up. When the bottom of the sandwiches are toasted, flip and fry until brown on the other side.",
                         rating: 4.63)

picture_recipe9 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F5081856.jpg")
recipe9.photo.attach(io: picture_recipe9, filename: "recipe9.jpg", content_type: "image/jpg")

recipe10 = Recipe.create!(name: "Grilled Cheese Sandwich",
                          ingredients: "4 slices, bread,
                                        3 tablespoons, butter,
                                        2 slices, Cheddar cheese",
                          user: user_admin,
                          author: "sal",
                          cuisine: "american",
                          cook_time: 15,
                          prep_time: 5,
                          description: "Step 1: Preheat a nonstick skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side down in the hot skillet; add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side up on top of cheese.
                                        Step 2: Cook until lightly browned on one side; flip over and continue cooking until cheese is melted. Repeat with remaining 2 slices of bread, butter, and slice of cheese.",
                          rating: 4.77)

picture_recipe10 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2016%2F10%2F2206436_Grilled-Cheese-Sandwich_Photo-by-Buckwheat-Queen.jpg")
recipe10.photo.attach(io: picture_recipe10, filename: "recipe10.jpg", content_type: "image/jpg")

recipe11 = Recipe.create!(name: "Hachis Parmentier",
                          ingredients: "1kg, Potatoes,
                                        1kg, Minced pork and beef,
                                        1kg, Spinach,
                                        1kg, Cream,
                                        1kg, Cheese",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "cook everything the wright way",
                          rating: 4.77)

picture_recipe11 = URI.open("https://www.curiouscuisiniere.com/wp-content/uploads/2019/10/French-Hachis-Parmentier-Potato-and-Beef-Casserole-8667-450-1.jpg")
recipe11.photo.attach(io: picture_recipe11, filename: "recipe10.jpg", content_type: "image/jpg")

recipe12 = Recipe.create!(name: "Grilled Salmon",
                          ingredients: "1kg, Salmon,
                                        1 spoon, Olive Oil,
                                        a pinch, Salt,
                                        a pinch, Pepper",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "This recipe for grilled salmon doesn’t call for fancy marinades or mercurial methods. All that’s needed is quality ingredients and a hot grill.
                                        The main question is, which salmon is best?
                                        I prefer wild-caught salmon because it has more flavor, but if you’re dealing with eaters who are mild fish fans, a quality farm-raised salmon will have a more mellow flavor. Like any protein, higher fat fish yields a more buttery bite. Salmon caught in the wild have to work harder than farm-raised, so they tend to be leaner and more fish-like in taste.",
                          rating: 4.77)

picture_recipe12 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe12.photo.attach(io: picture_recipe12, filename: "recipe10.jpg", content_type: "image/jpg")
#################################################################################################################################

# testing recipes

recipe13 = Recipe.create!(name: "Pasta basil",
                          ingredients: "1kg, Pasta,
                                        1kg, Olive oil,
                                        1kg, Basil",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "cook everything good",
                          rating: 4.77)

picture_recipe13 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe13.photo.attach(io: picture_recipe13, filename: "recipe10.jpg", content_type: "image/jpg")

recipe14 = Recipe.create!(name: "Salmon Omelette ",
                          ingredients: "1kg, Egg,
                                        1kg, Olive oil,
                                        1kg, Salmon,
                                        1kg, Butter",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "Omelette good good",
                          rating: 4.77)

picture_recipe14 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe14.photo.attach(io: picture_recipe14, filename: "recipe10.jpg", content_type: "image/jpg")

recipe15 = Recipe.create!(name: "Frites de Sweet Potatoes",
                          ingredients: "1kg, Sweet potatoes,
                                        1kg, Olive oil,
                                        1kg, Mayonnaise",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "frites miam miam good",
                          rating: 4.77)

picture_recipe15 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe15.photo.attach(io: picture_recipe15, filename: "recipe10.jpg", content_type: "image/jpg")

recipe16 = Recipe.create!(name: "Grilled Cheese Sandwich",
                          ingredients: "1kg, Bread,
                                        1kg, Butter,
                                        1kg, Cheddar",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "Miam Mial",
                          rating: 4.77)

picture_recipe16 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe16.photo.attach(io: picture_recipe16, filename: "recipe10.jpg", content_type: "image/jpg")

recipe17 = Recipe.create!(name: "Fondue un peu speciale",
                          ingredients: "1kg, Cheddar,
                                        1kg, Parmesan,
                                        1kg, American cheese,
                                        1kg, Butter,
                                        1kg, Mayonnaise,
                                        1kg, Bread,
                                        1kg, Pasta",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "Don't eat it, I don't think it will taste that good RIP",
                          rating: 4.77)

picture_recipe17 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe17.photo.attach(io: picture_recipe17, filename: "recipe10.jpg", content_type: "image/jpg")

recipe18 = Recipe.create!(name: "Grilled Salmon",
                          ingredients: "1kg, Salmon,
                                        1kg, Olive oil,
                                        1kg, Salt,
                                        1kg, Pepper",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "This recipe for grilled salmon doesn’t call for fancy marinades or mercurial methods. All that’s needed is quality ingredients and a hot grill.
                                        The main question is, which salmon is best?
                                        I prefer wild-caught salmon because it has more flavor, but if you’re dealing with eaters who are mild fish fans, a quality farm-raised salmon will have a more mellow flavor. Like any protein, higher fat fish yields a more buttery bite. Salmon caught in the wild have to work harder than farm-raised, so they tend to be leaner and more fish-like in taste.",
                          rating: 4.77)

picture_recipe18 = URI.open("https://www.foodiecrush.com/wp-content/uploads/2019/05/Grilled-Salmon-foodiecrush.com-023.jpg")
recipe18.photo.attach(io: picture_recipe18, filename: "recipe10.jpg", content_type: "image/jpg")

recipe19 = Recipe.create!(name: "Hachis Parmentier",
                          ingredients: "1kg, Potatoes,
                                        1kg, Minced pork and beef,
                                        1kg, Spinach,
                                        1kg, Cream,
                                        1kg, Cheese",
                          user: user_admin,
                          author: "bob",
                          cuisine: "don't know",
                          cook_time: 15,
                          prep_time: 5,
                          description: "cook everything the wright way",
                          rating: 4.77)

picture_recipe19 = URI.open("https://www.curiouscuisiniere.com/wp-content/uploads/2019/10/French-Hachis-Parmentier-Potato-and-Beef-Casserole-8667-450-1.jpg")
recipe19.photo.attach(io: picture_recipe19, filename: "recipe10.jpg", content_type: "image/jpg")
