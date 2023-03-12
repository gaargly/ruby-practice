# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(number)

# 2. What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
# arr == [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last) # because (arr.first.last) returns a value which is 1, and that gets processed and passed to the delete method on the arr.first sub-array

# arr == [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]


arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # the second array is a two-dimensional array, [[1, 2, 3]]
arr.first.delete(arr.first.last)
# [["b"], ["a", [1, 2, 3]]]


# 3. How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]
arr[1][0]
# OR
arr.last.first

# 4. What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # 3 - this finds the index of the value 5 in arr

arr.index[5] # undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)

arr[5] #  8 - this finds the value at index 5 in arr


# 5. What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil

# 6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?
# ANSWER: The problem is that arrays don't have indexes that are strings.
# If we want to replace the element 'margaret' with 'jody', we can use the following code instead:

names[names.find_index('margaret')] = 'jody'

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

friends = ["sarah", "bj", "alene"]
friends.each_with_index {|idx, friend| puts "#{idx}: #{friend}" }

# 8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [10, 20, 30]

arr_plus_two = arr.map {|num| num += 2}

p arr
p arr_plus_two
