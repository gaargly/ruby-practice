# 1. What will the following code print? Why? Don't run it until you've attempted to answer.
# ANSWER: It will print Breakfast

def meal
  return 'Breakfast'
end

puts meal


# 2. What will the following code print? Why? Don't run it until you've attempted to answer.
# ANSWER: It will print Evening because that's what the method's implicit return is

def meal
  'Evening'
end

puts meal

# 3. What will the following code print? Why? Don't run it until you've attempted to answer.
# It will print 'Breakfast' because of the explicit return on line 2 of the method, after which point the method will stop executing, so the last line 'Dinner' will not be processed

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# 4. What will the following code print? Why? Don't run it until you've attempted to answer.
# It will print:
# Dinner
# Breakfast (which is the return value)

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# 5. What will the following code print? Why? Don't run it until you've attempted to answer.
# ANSWER
# Dinner
# nil

def meal
  'Dinner' # nothing is printed to the screen, the return value is nil
  puts 'Dinner' # 'Dinner' is printed to the screen, the return value is nil (final return value of this method is one nil from this line)
end

p meal # this will output the return value of the method which is nil from the last line of the method

# 6. What will the following code print? Why? Don't run it until you've attempted to answer.
# Breakfast (because of the explicit return on the second line of the method meal)

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# 7. What will the following code print? Why? Don't run it until you've attempted to answer.
# answer
# 0
# 1
# 2
# 3
# 4
# 5 # return value of the .times method

def count_sheep
  5.times do |sheep|
    puts sheep # this will output 0 to 4
  end # the .times method returns the original integer that called .times which was 5
end

puts count_sheep

# 8. What will the following code print? Why? Don't run it until you've attempted to answer.
# 0
# 1
# 2
# 3
# 4
# 10 # return value of the .times method which is 10 as inplicitly returned on the last line of the method. "Integer#times is no longer the last line in count_sheep"

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 9. What will the following code print? Why? Don't run it until you've attempted to answer.
# 0
# 1
# 2 # the 5.times block starts over after each loop so the if sheep >= 2 gets run the 3rd time the block is running & at that point, the block returns
# nil # there is nothing provided to the return keyword so nil is returned, which the p method displays on the screen as well


def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 10. What will the following code print? Why? Don't run it until you've attempted to answer.
# 1

def tricky_number
  if true
    number = 1 # doesn't matter that a local variable was assigned here; the method would still return 1 without the assignment
  else
    2
  end
end

puts tricky_number
