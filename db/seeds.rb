# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hot_dogs = Recipe.create([{ title: 'Fabulous Hot Dogs'},
                          { url: 'http://www.hotdogs.com'},
                          { directions: '1. Cook hot dog, 2. eat'},
                          { image: 'http://www.hotdogs.com/image'},
                          { servings: 1 },
                          { time: 10 },
                          { rating: 5 },
                          { reviewcount: 25 },
                          ])

root = Dir.pwd
filepath = '/db/seed_ingredients.txt'
path = root + filepath

# Seed ingredients data
Ingredient.delete_all
open(path) do |seed_ingredients|
  seed_ingredients.read.each_line do |seed_ingredient|
    name = seed_ingredient.chomp
    Ingredient.create!(:name => name)
  end  
end

filepath2 = '/db/seed_recipes.txt'
path2 = root + filepath2
#Seed recipes data
Recipe.delete_all
open(path2) do |seed_recipes|
  seed_recipes.read.each_line do |seed_recipe|
    url, title = seed_recipe.split('|')
    Recipe.create!(:title => title, :url => url)
  end
end

#Seed ingredients and quantity
Quantity.delete_all
for each_recipe in Recipe.all
  i = 0
  ingredient_num = rand(1..3)
  while i < ingredient_num do
    i+=1
    ingredient_id = Ingredient.find_by_name("apples").id+rand(0..165)
    each_ingredient = Ingredient.find_by_id(ingredient_id)
    each_recipe.ingredients.push(each_ingredient)
    Quantity.create!(:recipe => each_recipe, :ingredient => each_ingredient, :content => "1lb")
  end
end
#all_quantity = Quantity.all.uniq
#Quantity.all = all_quantity








