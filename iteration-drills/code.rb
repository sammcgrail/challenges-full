#Write Ruby<->English answers here as comments in your code

# Ruby -> English

# 1) For each number in an array, print 3 * that number.

# 2) For each name in an array, print the length of the name

# 3) For each number in an array, add it to the running total, stored in variable sum

# 4) For each name and age keypair in the hash, print them in the middle of a template string.

# 5) For each transaction and value keypair in the hash, add the value to the running total, stored in varaible sum. then put it in a template puts statement

# 6) for each name and address keypair in the hash, print it within the puts template statement

######

# English -> Ruby

######

# 1) For every element 'word' in the array 'sentences' print out the word.

# sentences.each do |word|
#   puts word
# end

# 2) For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.

# numbers.each do |phone_number|
#   if phone_number.starts_with?("508", "617", "774", "413", "978")  #not doing for all area coes?
#     puts phone_number
# end

# 3) For every element number in the array 'numbers' print out every odd number.

# numbers.each do |number|
#   if number % 2 != 0
#     puts number
#   end
# end

# 4)For every name-age pair in the hash 'ages', print out each pair.

# ages.each do |name, age|
#   puts name, age
# end

# 5) For every name-age pair in the hash 'ages', print out a pair if the age is > 10.

# ages.each do |name, age|
#   if age > 10,
#     puts name, age
# end

# 6) For every name-age pair in the hash 'ages', print out a pair if the age is even.

# ages.each do |name, age|
#   if age % 2 == 0
#     puts age
#   end
# end




######


array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
puts array.reduce :+

# * How would you print out each value of the array?
puts array

# * What is the sum of all of the even numbers?
puts "even numbers"
amount_even = 0
total_even = 0
array.each do |val|
  if val % 2 == 0
    puts val
    amount_even += 1
    total_even += val
  end
end
puts "total number of even val:#{amount_even}"
puts "sum of even val:#{total_even}"

# * What is the sum of all of the odd numbers?
puts "odd numbers"
amount_odd = 0
total_odd = 0
array.each do |val|
  if val % 2 != 0
    puts val
    amount_odd += 1
    total_odd += val
  end
end
puts "total number of odd val:#{amount_odd}"
puts "sum of odd val:#{total_odd}"

# * What is the sum of all the numbers divisble by 5?
puts "numbers divisible by 5"
amount_divby5 = 0
total_divby5 = 0
array.each do |val|
  if val % 5 == 0
    puts val
    amount_divby5 += 1
    total_divby5 += val
  end
end
puts "total number of values divisible by 5:#{amount_divby5}"
puts "sum of values divisble by 5:#{total_divby5}"

# * What is the sum of the squares of all the numbers in the array?
sum_of_squares = 0
array.each do |val|
  sum_of_squares += val * val
end
puts "The sum of the squares of all the numbers in the array: #{sum_of_squares}"


######



array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each do |name|
  puts name.reverse
end

# * What are the total number of characters in the names in `array`?
total_char = 0
array.each do |name|
  total_char += name.length
end
puts "There are #{total_char} total characters"

# * How many names in `array` are less than 5 characters long?
puts "There are #{array.count} names"
num_names_lessthan5 = 0
array.each do |name|
  if name.length < 5
    num_names_lessthan5 += 1
  end
end
puts "There are #{num_names_lessthan5} names less than 5 characters"
# * How many names in `array` end in a vowel?
num_names_endinvowel = 0
array.each do |name|
  if name.end_with?('a','e','i','o','u')  # could use regex - look up how to use regex to solve?
    num_names_endinvowel += 1
  end
end
puts "There are #{num_names_endinvowel} names that end in a vowel"

# * How many names in `array` are more than 5 characters long?
num_names_morethan5 = 0
array.each do |name|
  if name.length > 5
    num_names_morethan5 += 1
  end
end
puts "There are #{num_names_morethan5} names with more than 5 characters"

# * How many names in `array` are exactly 5 characters in length?
num_names_length5 = 0
array.each do |name|
  if name.length == 5
    num_names_length5 += 1
  end
end
puts "There are #{num_names_length5} names with exactly 5 characters"


########



best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

#  Write Ruby code to find out the answers to the following questions:
# * How would you print out all the names of the artists?
puts best_records.keys
# * How would you print out all the names of the albums?
puts best_records.values
# * Which artist has the longest name?
best_records.each { |k, v| puts k if k == best_records.keys.max }

# only catches wu-tang, and not led zep as well.. How to get both?

# * How would you change all the album titles for every artist to `Greatest Hits`?

best_records.update(best_records){ |k,v| "#{"Greatest Hits"}" }


# * How would you delete a key-value pair if the artist's name ends in a vowel?
best_records.delete_if { |key| key.end_with?('a','e','i','o','u') }


# best_records.each do |key,value|         # other working solution
#   if key.end_with?('a','e','i','o','u')  # could use regex - look up how to use regex to solve?
#     puts "delete artist end in vowel"    # instead of regex, solved with delete_if method above
#   end
# end

#######

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:
# * How would you print out all the names of `ages`?
puts ages.keys
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each do |key, value|
  puts "#{key} is #{value} years old."
end
# * How would you print out every person with odd numbered age?
puts "people with odd numbered age"
ages.each do |key, value|
  if value % 2 != 0
    puts "#{key} is #{value} years old."
  end
end

# * What is the name and age of everyone with a name greater than or equal to 5 characters?
puts "name greater than or equal to 5 char"
ages.each do |key, value|
  if key.length >= 5
    puts "#{key} is #{value} years old."
  end
end

# * How would you delete everyone under 25 years of age?
ages.delete_if { |key, value| value <= 25 }

# reordered last two questions - look up how to return values to a hash ? because actually deleting everyone under 25 messes up the next question.

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:
# * How would you print out all the names of `people`?
puts people.keys

# * How would you print out all the names of `people` and which company they work for?
people.each_key {|key| puts "#{key} works at #{people[key]["company"]}"}

# * What are the names of all the children of everyone in `people`?
people.each_key {|key| puts "#{people[key]["children"]}"}     # can we remove these square brackets?

# * What are the names of all the companies that people work for?
people.each_key {|key| puts "#{people[key]["company"]}"}

# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |key,value|
  people[key]["phone"].gsub!(")","")
  people[key]["phone"].gsub!("(","")
  people[key]["phone"].gsub!(".","-")
  people[key]["phone"].gsub!(" ","-")
  people[key]["phone"].prepend("1-") unless people[key]["phone"].start_with?("1-")
end

#####

people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:
# * What are the names of everyone in `people`?
people.each do |hash|
  hash.each_key {|key| puts key}
end

# * What are the names of all the children in `people`?
people.each do |hash|
  hash.each_pair {|key, value| puts value["children"] if value["children"]!=nil }
end

# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = Hash.new
people.each do |hash|
  hash.each_pair {|key, value| phone_numbers[key] = value["phone"] }
end

# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
employers = Hash.new
people.each do |hash|
  hash.each_pair {|key, value| employers[key] = value["company"] }
end

# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
children_count = Hash.new
people.each do |hash|
  hash.each_pair do |key, value|    children_count[key] = value["children"].size if value["children"]!=nil
    children_count[key] = 0 if value["children"]==nil
  end
end
