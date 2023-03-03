# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  puts num
end

# 2. Same as above, but only print out values greater than 5.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  if num > 5
    puts num
  end
end

# OR
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |num| num > 5 }.each { |num| puts num }

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |num| num % 2 != 0 }

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr << 11
arr.unshift 0

p arr

# 5. Get rid of 11. And append a 3.
arr.pop
arr << 3

# 6. Get rid of duplicates without specifically removing any one value.
arr.uniq!

# 7. What's the major difference between an Array and a Hash?
# ANSWER: An Array has numerical indices starting at 0 whereas a Hash has key-value pairs that used to be unordered until a later version of Ruby.

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.
books = {
  :dracula => 7
}

other_books = {
  cinderella: 5
}

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

    # 1. Get the value of key `:b`.
    # 2. Add to this hash the key:value pair `{e:5}`
    # 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

    h[:b]
    h[:e] = 5
    h.delete_if { |k, v| v < 3.5 }

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# ANSWER: Yes, hash values can be any data type. And yes, you can have an array of hashes.

hash_with_array_values = {
  firstarr: [1, 2, 3],
  secondarr: [4, 5, 6]
}

second_hash_with_array_values = {
  firstarr: [11, 22, 33],
  secondarr: [44, 55, 66]
}

array_of_hashes = [hash_with_array_values, second_hash_with_array_values]


# 11. Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]


# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |ele| ele.start_with? "s"}

# Then recreate the arr and get rid of all of the strings that start with "s" or start with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |ele| ele.start_with?("s","w") }

# 14. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

new_a = a.map { |phrase| phrase.split }.flatten

# 15. What will the following program output?
# ANSWER: "These hashes are the same!"

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# 16. Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

    # Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

    contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
    contacts = {"Joe Smith" => {}}
    info_keys = [:email, :address, :phone]

    # Expected output:
    #  {
    #    "Joe Smith" => {
    #      :email => "joe@email.com",
    #      :address => "123 Main st.",
    #      :phone => "555-123-4567"}
    #  }

    contacts.each do |person, info_hash|
      info_keys.each do |k|
        info_hash[k] = contact_data.shift
      end
    end


    # As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

    contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
    info_keys = [:email, :address, :phone]

    # Learning how to use the each_with_index method on a hash lol!

    # this is pretty cool, you can get the key, the value, and the "index" of all the objects in a hash all with the each_with_index method!
    contacts.each_with_index {|value, idx| puts "#{value} is at Index: #{idx}"}

    # attempting the solution
    contacts.each_with_index do |(person, info_hash), idx|
      info_keys.each do |k|
        info_hash[k] = contact_data[idx].shift # I still don't understand what info_hash[k] works; why don't you need the index of the info_hash in the solution??
      end
    end
