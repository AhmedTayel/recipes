class Recipe < ApplicationRecord
  has_many :instructions
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients

  def self.create_from_url url= "https://www.allrecipes.com/recipe/279771/beef-meatball-bourguignon/"
    data = HTMLParser.load url
    recipe = Recipe.create(title: "#{data[:title]}", description: "#{data[:description]}")
    data[:ingredients].each do |ingredient| 
      ingredient_entry =  Ingredient.newInstance ingredient

      #The algorithm breaks if you called #get_name before #get_amount
      ingredient_amount = ingredient_entry.get_amount 
      ingredient_name = ingredient_entry.get_name
      #Do not change the order of line 12 and 13

      ingredient_entry.exists? 
      unless ingredient_found.nil? 
        RecipesIngredient.create(recipe_id: "#{recipe[:id]}", ingredient_id:"#{ingredient_found[:id]}", quantity: "#{ingredient_amount}")
      else
        placebo = Ingredient.create(name: "#{ingredient_name}")
        RecipesIngredient.create(recipe_id: "#{recipe[:id]}", ingredient_id:"#{placebo[:id]}")
      end
    end
  end
    

end
