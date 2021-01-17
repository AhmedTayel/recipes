

# if Ingredient.count == 0
#   FoodParser.load
# end

if Recipe.count == 0
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/273001/homemade-cream-horns/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/282787/instant-pot-teriyaki-chicken-wings/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/278271/air-fryer-stuffed-mushrooms/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/202975/potstickers-chinese-dumplings/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/166526/orange-and-rosemary-baked-olives/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/21649/sausage-balls/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/20669/double-tomato-bruschetta/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/13509/feta-cheese-foldovers/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/20694/asiago-toasted-cheese-puffs/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/26975/stuffed-jalapenos-iii/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/230225/bisquick-sausage-balls/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/56168/curry-cheese-ball/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/90544/chicken-wing-dip/'
    Recipe.create_from_url 'https://www.allrecipes.com/recipe/279771/beef-meatball-bourguignon/'
end