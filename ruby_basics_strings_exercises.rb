# 1. Create an empty string using the String class and assign it to a variable.

empty_string = String.new

# 2. Modify the following code so that double-quotes are used instead of single-quotes.

puts 'It\'s now 12 o\'clock.'

# Modified code
puts "It's now 12 o' clock."

# 3. Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

puts true if name.downcase == 'RoGeR'.downcase
puts false if name.downcase != 'DAVE'.downcase

# given solution
puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# 4. Modify the following code so that the value of name is printed within "Hello, !".

name = 'Elizabeth'

puts "Hello, !"

# modified code
puts "Hello, #{name}!"

# 5. Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name


# 6. Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

state = 'tExAs'

puts state.capitalize!
puts state

# 7. Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
puts greeting

greeting.gsub!('Hello!', 'Goodbye!')
puts greeting

# 8. Using the following code, split the value of alphabet by individual characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

# 9. Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'
arr = words.split(" ")

arr.each do |word|
  puts "#{word}s"
end

# 10. Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

colors.include?("yellow")
colors.include?("purple")
