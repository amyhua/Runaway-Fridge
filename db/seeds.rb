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

                          
                          
