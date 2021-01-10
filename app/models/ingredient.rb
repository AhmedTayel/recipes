class Ingredient < ApplicationRecord
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients

  attr_accessor :ingredient, :length
  #Initializes an instance thats takes an entry from the ingredients as a string and tokenizes it
  def self.newInstance ingredient_string
    ingredient = self.new
    ingredient.ingredient = ingredient_string.split(" ")
    ingredient.length =  ingredient.ingredient.length
    ingredient
  end

  #Returns the first two tokens assumed to be an amount and a unit
  def get_amount 
    @ingredient.shift(2).join(" ")
  end
  #Returns the remaining tokens
  def get_name 
    @ingredient.pop(@length).join(" ")
  end

  def exists?
    if  Ingredient.find_by(name: "#{@ingredient.get_name}")
      
    else
      
    end
   
  end
end
