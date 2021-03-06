class Recipe < ApplicationRecord
  has_many :instructions
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients

  def self.create_from_url url= "https://www.allrecipes.com/recipe/274970/instant-pot-caldillo/"
    data = HtmlParser.load url
    recipe = Recipe.create(title: "#{data[:title]}", description: "#{data[:description]}", URL: url)
    data[:ingredients].each do |ingredient| 

      ingredient_entry =  Ingredient.new_instance ingredient

      # The algorithm breaks if you called #get_name before #get_amount
      ingredient_amount = ingredient_entry.get_amount 
      ingredient_name = ingredient_entry.get_name
      # Do not change the order of line 12 and 13
      
      
      ingredient_found = ingredient_entry.exists?

      if ingredient_found 
        # Connected the recipe to the ingredient in the join table and adds the amount associated with it
        RecipesIngredient.create(recipe_id: "#{recipe[:id]}", ingredient_id:"#{ingredient_found[:id]}", quantity: "#{ingredient_amount}")
  
      else
        # Creates the ingredient in the database, and add the connection between the recipe and the ingredient in the join table
        # and adds the amount associated with it
        placebo = Ingredient.create(name: "#{ingredient_name}")
        RecipesIngredient.create(recipe_id: "#{recipe[:id]}", ingredient_id:"#{placebo[:id]}", quantity: "#{ingredient_amount}")
      end

    end

    data[:instructions].each_with_index do |instruction, i|
      recipe.instructions.create(order: (i+1), action: instruction)
    end
  end
   

end
  
