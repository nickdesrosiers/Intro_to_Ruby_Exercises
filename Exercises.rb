# Introduction to Programming with Ruby Exercises 


# Preparations Exercises

# 1
# mkdir my_folder
# cd my_folder
# touch one.rb two.rb 
# Open both files in the text editor
# In one.rb type 'puts "this is file one"' and save it 
# In two.rb type 'puts "this is file two"' and save it 
# $ ruby one.rb
# $ ruby two.rb

# 2
# Back in terminal... $ cd ../
# rm -r my_folder 


# Basics Exercises

# 1
puts "Nick " + "Desrosiers"

# 2
puts thousands = 4936 / 1000
puts hundreds = 4936 % 1000 / 100
puts tens = 4936 % 1000 % 100 / 10
puts ones = 4936 % 1000 % 100 % 10

# 3
movies = { lords_of_dogtown: 2005,
           anchorman: 2004,
           grind: 2010,
           enough: 2002,
           shallow_hal: 2001 }

puts movies[:lords_of_dogtown]
puts movies[:anchorman]
puts movies[:grind]
puts movies[:enough]
puts movies[:shallow_hal]

# 4
dates = [2005, 2004, 2010, 2002, 2001]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

# 5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# 6
puts 4.30 ** 2
puts 6.13 ** 2
puts 124.34 ** 2

# 7
# On line 2 of the progran there is an open bracket without a closing bracket following it


# Variable Exercises

# 1 
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}!"

# 2
puts "How old are you?"
age = gets.chomp.to_i

puts "In 10 years you will be:"
puts age + 10 
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

# 3
puts "What is your name?"
name = gets.chomp
puts "Hello, #{name}!"
10.times { puts name } 

# 4
puts "What is your first name?"
first = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello #{first} #{last}!"

# 5
# The first one prints 3 
# The second one gives an error because the variable x is created in the do/end block so is out of scope to be called on

# 6
# On line 3 the program is trying to reference a variable or method called 'shoes' but it is not defined or out of scope


# Methods Exercises

# 1
def greeting(name)
  "Hello, " + name +". How are you?"
end

puts greeting("Nick")

# 2
# => 2
# nil
# => "Joe"
# => "four"
# => nil

# 3
def multiply(num1,num2)
  num1 * num2
end

puts multiply(6, 8)

# 4
# It prints nothing

# 5
def scream(words)
      words = words + "!!!!"
      puts words
    end

    scream("Yippeee")

    #returns nil

# 6
# A method called calculate_product requires two arguments and only one is provided


# Flow Control Exercises

# 1
 #1. false
 #2. false
 #3. false
 #4. true
 #5. true 

# 2
def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Nick")
puts caps("Nick Desrosiers")

# 3
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

# 4
 #1. "FALSE"
 #2. "Did you get it right?"
 #3. "Alright now!"

# 5
def evaluate_num(num)
  if num < 0
    puts "You can't enter a negative num!"
  elsif num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case1_num(num)
  case
  when num < 0
    puts "You can't enter a negative num!"
  when num <= 50
    puts "#{num} is between 0 and 50"
  when num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case2_num(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{num} is above 100"
    end
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case1_num(number)
evaluate_case2_num(number)

# 6
# This error is because the if/else statement is not closes with an 'end'. 


# Loops and Iterators Exercises

# 1
=> [1, 2, 3, 4, 5]

# 2
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

# 3
top_five_games = ["mario brothers",
                  "super smash bros",
                  "kingdom hearts",
                  "halo",
                  "assassins creed"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end

# 4 
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)


# Arrays Exercises

# 1
if arr.include?(number)
  puts "#{number} is in the array."
end

arr.include?(3)

# 2
1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]

# 3
arr.last.first

# 4
  #1. 3
  #2. NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
  #from (irb):81
  #from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
  #3. 8

# 5
a = "e"
b = "T"
c = "A"

# 6
# Indexes of arrays are integers, not strings
names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]

# 7
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr


# Hash Exercises

# 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

# 2
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}

# 3
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

# 4
puts person[:name]

# 5
has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

# 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end

# 7
# The first one created x as the key and the second used the string value of the x variable as a key

# 8
# B


# More Stuff Exercises

# 1
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

# 2
# Nothing is executed to the screen
# => #<Proc:0x007fa3938dc0a0@(irb):5>

# 3
# Exception handling looks at the possibility of an error occurring in a program
# It handles the error by changing control flow

# 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5
# The method parameter 'block' is missing and the '&' that allows a block to be passed


# Exercises

# 1
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |num| puts num } 

# 2
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |num| puts num if num > 5 }

# 3
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = array.select { |num| num % 2 != 0 }

# 4
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr << 11
arr. unshift(0)

# 5
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr.pop
arr << 3

# 6
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.uniq!

# 7
# A hash contains key value pairs for referencing by a key

# 8
hash = {:name => 'Nick'}
hash = {name: 'Nick'}

# 9
h = {a:1, b:2, c:3, d:4}
h[:b]
h [e:] = 5
h.delete_if { |k, v| v < 3.5 }

# 10
# Yes
hash = {names: ['bob', 'joe', 'susan']}
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

# 11
# I'm a fan of ruby-doc.org
# The information on there is well laid out, defines what the object is and concise in explaining methods for it

# 12
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# 14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

# 15
arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") }

# 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

# 17
These hashes are the same!



