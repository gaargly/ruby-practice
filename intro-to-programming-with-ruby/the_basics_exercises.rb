# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
# "<Firstname> <Lastname>"
# For example, if your name is John Doe, think about how you can put "John" and "Doe" together to get "John Doe".

first_name = "Lira"
last_name = "Samanta"

puts first_name + " " + last_name


# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

thousands = 4321 / 1000
hundreds = 4321 / 100 % 10 # "4321"[1].to_i
tens = 4321 / 10 % 10
ones = 321 % 10

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.
# 1975
# 2004
# 2013
# 2001
# 1981

movies = {
  :gladiator => 2000,
  :gravity => 2013,
  :dune => 2021
}

puts movies[:gladiator]
puts movies[:gravity]
puts movies[:dune]

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movies = [2000, 2013, 2021]

puts movies[0]
puts movies[1]
puts movies[2]

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 2.0 * 2.0
puts 3.1 * 3.1
puts 1999.873 * 1999.873

# 7. What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  # from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

  # Answer: It states that ruby was expecting a close curly bracket but instead encountered a closed parenthesis. This could've happened if a hash was created without being properly closed.
