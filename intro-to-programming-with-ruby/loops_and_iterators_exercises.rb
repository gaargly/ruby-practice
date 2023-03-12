# 1. What does the each method in the following program return after it is finished executing?
# ANSWER: It returns the array represented by x at the first line, i.e. 1, 2, 3, 4, 5

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

loop do
  puts "state a number you want multiplied by 2 until you want to STOP"
  num = gets.chomp.to_i
  puts num * 2
  puts "do you want to STOP?"
  stop = gets.chomp
  if stop == "STOP"
    break
  end
end


# 3. Write a method that counts down to zero using recursion.

def countdown(num)
  puts num
  if num < 0    # if num is negative, we will count up to 0
    num += 1
    countdown(num)
  elsif num > 0
    num -= 1
    countdown(num)
  end
end

countdown(-9)
countdown(0)
countdown(10)
