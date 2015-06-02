require 'erb'
require 'sinatra'
recipe = {
  name: "Roasted Brussel Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
    ],
  directions: [
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
  }

# ANDREW USING RUBY CODE

# counter = 1
#
# puts "#=================================#"
# puts "# Recipe: #{recipe[:name]} #"
# puts "#=================================#"
# puts
# puts "Ingredients\n" + "-----------"
# puts
# recipe[:ingredients].each do |type|
#  puts type
# end
# puts
# puts "Directions\n" + "------------"
# recipe[:directions].each do |instruct|
# puts
#  puts "#{counter}. #{instruct}\n"
#  puts
#  counter += 1
# end

# BRIAN USING RUBY CODE

def print_headline(hash)
  width = hash[:name].length + 11
  puts "#" + "=" * width + "#"
  puts "# Recipe:" + hash[:name].center(width - 8) + "#"
  puts "#" + "=" * width + "#"
end

def print_ingredients(hash)
  puts
  puts "Ingredients"
  puts "-----------"
  puts
  puts hash[:ingredients]
end

def print_directions(hash)
  puts
  puts "Directions"
  puts "----------"
  puts
  step = 1
  hash[:directions].each do |item|
    puts "#{step}. #{item}"
    puts
    step += 1
  end
end

print_headline(recipe)
print_ingredients(recipe)
print_directions(recipe)

headline = print_headline(recipe)
ingredients = print_ingredients(recipe)
directions = print_directions(recipe)
template_string = "<%= headline %><%= ingredients %><%= directions %>"
template = ERB.new template_string
