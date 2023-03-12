# 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

puts "tell us your name, o great one!"
name = gets.chomp
puts "howdy do, " + name + "!"


# 2. Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

# output of age.rb for someone 20 yrs old

# How old are you?
# In 10 years you will be:
# 30
# In 20 years you will be:
# 40
# In 30 years you will be:
# 50
# In 40 years you will be:
# 60

puts "how old are you?"
age = gets.chomp
puts "In 10 years you will be: " + "\n" + (age.to_i + 10).to_s
puts "In 20 years you will be: " + "\n" + (age.to_i + 20).to_s
puts "In 30 years you will be: " + "\n" + (age.to_i + 30).to_s
puts "In 40 years you will be: " + "\n" + (age.to_i + 40).to_s


# 3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

10.times {puts name}


# 4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

puts "what is your first name?"
first_name = gets.chomp
puts "now, what is your last name?"
last_name = gets.chomp

puts first_name + " " + last_name

# 5. Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x # x will be 3

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x # error bc x exists only in the scope of the block and cannot be accessed outside the block

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
