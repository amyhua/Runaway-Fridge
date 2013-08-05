# Runaway Fridge

Runaway Fridge is a common-sense take on searching for recipes online.
The emphasis is on cooking with what you have and preventing trips to the grocery store.
Sometimes you can cook chicken without needing to run to the store for olive oil; you 
can make stew without needing butter; and so forth.

The first prompt asks you to list some main ingredients you might want to eat.
The search engine then aggregates recipes that contain at least one of those main ingredients
you listed. It also displays a list of ingredients contained across all the recipes on your results page,
and you can choose to filter out ingredients you don't have / don't like.

In future iterations of Runaway Fridge, you can also save your recipe results,
build a Shopping List, and save your ingredient filters.

Runaway Fridge will be live on www.runawayfridge.com some time in late 2013.

Developed, designed, and maintained by Amy Hua.

##Resources

Runaway Fridge is based upon Rails 3.2.13 on Ruby 2.0.0 and utilizes a many-to-many model among
Recipes, Ingredients, and Searches, whereby

* An **Ingredient** *has many* **Recipes** *through* **Quantity**
* A **Recipe** *has many* **Ingredients** *through* **Quantity**
* An **Ingredient** *has many* **Quantities**
* A **Recipe** *has many* **Quantities**
* A **Quantity** *belongs to* a **Recipe** and an **Ingredient**



For testing, we use the Capybara-Webkit gm, which depends upon Qt. If you don't have Qt installed,
do `brew update` and `brew install qt` before running `bundle install`.
