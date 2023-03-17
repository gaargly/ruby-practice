# 1. Generic Greeting (Part 1)
# Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

# 2. Using the following code, add an instance method named #rename that renames kitty when invoked.

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    @name = new_name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name

# 3. Using the following code, add a method named #identify that returns its calling object.

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify

# 4. Using the following code, add two methods: ::generic_greeting and #personal_greeting. The first method should be a class method and print a greeting that's generic to the class. The second method should be an instance method and print a greeting that's custom to the object.

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

# 5. Using the following code, create a class named Cat that tracks the number of times a new Cat object is instantiated. The total number of Cat instances should be printed when ::total is invoked.

class Cat
  @@total = 0

  def initialize
    @@total += 1
  end

  def self.total
    puts @@total
  end
end


kitty1 = Cat.new
kitty2 = Cat.new
kitty3 = Cat.new

Cat.total

# 6. Using the following code, create a class named Cat that prints a greeting when #greet is invoked. The greeting should include the name and color of the cat. Use a constant to define the color.

class Cat
  COLOR = "black"

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{self.name} and I'm a #{COLOR} cat."
  end
end

kitty = Cat.new('Sophie')
kitty.greet

# 7. Update the following code so that it prints I'm Sophie! when it invokes puts kitty.

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
    puts "I'm #{self.name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty

# 8. Using the following code, create a class named Person with an instance variable named @secret. Use a setter method to add a value to @secret, then use a getter method to print @secret.

class Person
  def initialize(secret="")
    @secret = secret
  end

  def secret
    @secret
  end

  def secret=(s)
    @secret = s
  end
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret

# 9. Using the following code, add a method named share_secret that prints the value of @secret when invoked.

class Person
  attr_writer :secret

  def initialize(secret="")
    @secret = secret
  end

  def share_secret
    puts @secret 
  end

  # private

  # attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret


# 10. Using the following code, add an instance method named compare_secret that compares the value of @secret from person1 with the value of @secret from person2.

class Person
  attr_writer :secret

  def compare_secret(individual)
    self.secret == individual.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)
