# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings_names = family.select { |k, v| k == :sisters || k == :brothers }.values
new_arr = siblings_names.flatten


# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

old_hash = {name: "Lira"}
new_hash = {age: 34}

# this does not save the change
old_hash.merge(new_hash)

# this does save the change
old_hash.merge!(new_hash)

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

# prints keys
family.each do
  |k, v| puts k
end

# prints values
family.each do
  |k, v| puts v
end

# prints both keys and values
family.each do
  |k, v| puts "#{k}: #{v}"
end

# 4. Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

person.value? 'painting'

# 6. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?
# ANSWER: The first hash has one key which is the symbol x as the key. The second hash uses the string value originally assigned to x outside the hashes, i.e. "hi there" as the key

# 7. If you see this error, what do you suspect is the most likely problem?

NoMethodError: undefined method `keys' for Array

# ANSWER: B. There is no method called keys for Array objects.
