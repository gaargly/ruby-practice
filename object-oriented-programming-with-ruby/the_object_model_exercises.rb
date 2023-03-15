# 1. How do we create an object in Ruby? Give an example of the creation of an object.

class MyClass
end

new_obj = MyClass.new

# 2. What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

module DoStuff
end

class MyClass
  include DoStuff
end

next_obj = MyClass.new
