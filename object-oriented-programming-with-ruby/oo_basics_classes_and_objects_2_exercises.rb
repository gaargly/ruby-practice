# # 1. Generic Greeting (Part 1)
# # Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

# class Cat
#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end
# end

# Cat.generic_greeting

# # 2. Using the following code, add an instance method named #rename that renames kitty when invoked.

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def rename(new_name)
#     @name = new_name
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty.name
# kitty.rename('Chloe')
# puts kitty.name

## 3. Using the following code, add a method named #identify that returns its calling object.

# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify

## 4. Using the following code, add two methods: ::generic_greeting and #personal_greeting. The first method should be a class method and print a greeting that's generic to the class. The second method should be an instance method and print a greeting that's custom to the object.

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "Hi, I'm a generic cat! i.e. class method"
  end

  def personal_greeting
    puts "Howdy do, I'm the specific instance of cat named #{self.name}!"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting