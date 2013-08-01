# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative 'seeds_helper'


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

# Seed recipes data

# paths
directions = root + '/db/seed_recipe_directions.txt'
image = root + '/db/seed_recipes_image.txt'
title = root + '/db/seed_recipes_title.txt'
url = root + '/db/seed_recipes_url.txt'
qty = root + '/db/seed_recipe_qty_content.txt'

# load recipe attributes

for i in (1..19).to_a
  @r = Recipe.new
  @r.title = glff(title,i)
  @r.directions=glff(directions,1)
  @r.image=glff(image,i)
  @r.url=glff(url,i)
  @r.servings = 5
  @r.rating = 4.5
  @r.reviewcount = 55
  @r.save
  # load ingredients
  @r.ingredients = Ingredient.order("RANDOM()").limit(rand(3...15))  
  
  # load quantity content
  nqty = @r.quantities.count
  puts "for recipe id #{@r.id.to_s}, num_quantity: " + @r.quantities.count.to_s + " and num_ing: #{@r.ingredients.count.to_s}"
  
  for j in (1..nqty).to_a
    @q = @r.quantities[j-1]
    @q.content = glff(qty,j)
    @q.save
  end
end

# load recipe-ingredients



=begin
# open files
open(directions) do |directions|
  open(ingred_name) do |ingred_name|
    open(ingred_text) do |ingred_text|
      open(image) do |image|
        open(title) do |title|
          open(url) do |url|
            
            # send to Recipe attributes
            
            
            for i in (1..19).to_a
              @r = Recipe.new
              @r.id = i
              title.read.each_line do |l|
                @r.title = l.chomp
              end
              directions.read.each_line do |l|
                @r.directions = l.chomp
              end
              url.read.each_line do |l|
                @r.url = l.chomp
              end
              image.read.each_line do |l|
                @r.image = l.chomp         
              end     
              @r.save
              
              # save recipe ingredients. Each recipe has 5 random ingredients
              
              @r.ingredients = Ingredient.order("RANDOM()").limit(5)
              
              # set quantities 
            end
          end
        end
      end
    end
  end  
end              

=end
