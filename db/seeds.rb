puts "🌱 Seeding spices..."

Cocktail.create(name: "Zombie", alcohol: "Alcoholic", glass: "Hurricane glass", image: "https://www.thecocktaildb.com/images/media/drink/2en3jk1509557725.jpg")
Cocktail.create(name: "Paloma", alcohol: "Alcoholic", glass: "Collins glass", image: "https://www.thecocktaildb.com/images/media/drink/samm5j1513706393.jpg")
Cocktail.create(name: "Martini", alcohol: "Alcoholic", glass: "Cocktail glass", image: "https://www.thecocktaildb.com/images/media/drink/71t8581504353095.jpg")
Cocktail.create(name: "Egg Cream", alcohol: "Non-Alcoholic", glass: "Coffee mug", image: "https://www.thecocktaildb.com/images/media/drink/mvis731484430445.jpg")
Cocktail.create(name: "Mojito", alcohol: "Alcoholic", glass: "Highball glass", image: "https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg")

Ingredient.create(ing1: "Light rum", ing2: "Lime", ing3: "Sugar", ing4: "Vodka", cocktail_id: 5)
Ingredient.create(ing1: "Rum", ing2: "Gold Rum", ing3: "151 proof rum", ing4: "Lime", cocktail_id: 1)
Ingredient.create(ing1: "Chocolate Syrup", ing2: "Milk", ing3: "Soda Water", ing4: "Coffee", cocktail_id: 4)
Ingredient.create(ing1: "Gin", ing2: "Dry Vermouth", ing3: "Olive", ing4: "Soda Water", cocktail_id: 3)
Ingredient.create(ing1: "Grape Soda", ing2: "Tequila", ing3: "Lime Juice", ing4: "Grape-fruite juice", cocktail_id: 2)

puts "✅ Done seeding!"
