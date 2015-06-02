# RECIPE CLASS NEEDS WORK

class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    <<SUMMARY
    "#{@quantity}, #{@unit} #{@name}"
    SUMMARY
  end
end

class Recipe
  attr_reader :name
  # attr_writer :name        # go over in class

  def initialize(name, instructions, ingredients)
    @name = name   # wouldnt need with reader?
    @instructions = name
    @ingredients = ingredients
end

  def summary
    <<-SUMMARY

      pseudo  - #{name} , #{each ingred},  #{each instruc}

    SUMMARY
  end
  # pseudo

  # def each ingredient
  # def each intruction
  # def name

  # pseudo - dont need name method with attr_reader

  # def name
  #   "Name: #{@name}"             =   attr_reader :name
  # end

  def name
    "Name: #{@name}"
  end

name = "Roasted Brussles Sprouts"

ingredients = [
    Ingredient.ne
    w(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

#
# puts ingredient.summary
#
# recipe = Recipe.new(name, instructions, ingredients)
