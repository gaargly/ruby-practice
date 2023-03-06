# 1. Write a program that asks the user to type something in, after which your program should simply display what was entered.

puts "write something"
x = gets.chomp
puts x

# 2. Write a program that asks the user for their age in years, and then converts that age to months.
age_in_months = gets.chomp.to_i * 24
puts "your age in months is #{age_in_months}"

# 3. Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts "do you want me to print the word 'something'? y/n"
instruction = gets.chomp
puts "something" if instruction == "y"

# 4. Modify your program from above so it prints an error message for any inputs that aren't y or n, and then asks you to try again. Keep asking for a response until you receive a valid y or n response. In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice. Whenever possible, accept both uppercase and lowercase inputs.

loop do
  puts "do you want me to print the word 'something'? y/n"
  instruction = gets.chomp
  if instruction == "y" || instruction == "Y"     # OR: %w(y Y).include?(choice)
    puts "something"
    break
  elsif instruction == "n" || instruction == "N"  # OR: %w(n N).include?(choice)
    puts "okay, naysayer"
    break
  else
    puts "Error: please state y or n"
  end
end

# 5. Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

loop do
  puts "How many times do you want me to output the message? Please state a number >= 3!"
  num = gets.chomp.to_i
  if num >= 3
    num.times { puts "Launch School is the best!" }
    break
  else
    puts "Error: Please state a number >= 3."
  end
end

# 6. Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

USER_PASSWORD = "thekey"

loop do
  puts "What is the correct password?"
  pw = gets.chomp
  if pw == USER_PASSWORD
    puts "Welcome, verified user!"
    break
  else
    puts "Error: that was not the correct password. Please enter the correct password."
  end
end

# 7. In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

USER_NAME = "lira"
USER_PASSWORD = "thekey"

loop do
  puts "What is your username?"
  un = gets.chomp
  puts "What is the correct password?"
  pw = gets.chomp
  if un == USER_NAME && pw == USER_PASSWORD
    puts "Welcome, verified user!"
    break
  else
    puts "Error! Incorrect username or password"
  end
end

#
# puts "enter an integer you want divided (numerator)"
# numerator = gets.chomp
#
# puts "enter an integer you want to divide by (denominator)"
# denominator = gets.chomp
#
# if valid_number?(numerator) && valid_number?(denominator)
#   puts numerator.to_f / denominator.to_f
# else
#   puts "Error: one of your inputs was invalid"
# end


# 8. Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "enter an integer you want divided (numerator)"
  numerator = gets.chomp

  if !valid_number?(numerator)
    loop do
      puts "error: that was not an integer. please enter an integer you want divided (numerator)."
      numerator = gets.chomp
      break if valid_number?(numerator)
    end
  end

  puts "enter a non-zero integer you want to divide by (denominator)"
  denominator = gets.chomp

  if !valid_number?(denominator) || denominator == "0"
    loop do
      puts "error: that was not a non-zero integer. please enter an integer you want to divide by (denominator)."
      denominator = gets.chomp
      break if valid_number?(denominator) || denominator != "0"
    end
  end
  # if valid_number?(numerator) && valid_number?(denominator)
  puts numerator.to_f / denominator.to_f
  break
end


# 9. In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
  user_input = gets.chomp.downcase
  if user_input == "q"
    break
  elsif user_input.to_i >= 3
    user_input.to_i.times { puts "Launch School is the best!" }
  else
    puts "Error: Please state a number >= 3."
  end
end


# 10. Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  first_num = gets.chomp.to_i
  puts ">> Please enter a second positive or negative integer:"
  second_num = gets.chomp.to_i
  if (first_num > 0 && second_num < 0) || (first_num < 0 && second_num > 0)
    puts first_num + second_num
    break
  else
    puts ">> Sorry. One integer must be positive, one must be negative. Please start over."
  end
end
