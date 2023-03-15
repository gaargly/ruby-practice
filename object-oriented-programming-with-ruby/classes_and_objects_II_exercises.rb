# Chapter examples

# Class Methods & Variables

class GoodDog
  @@number_of_dogs = 0 

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
puts GoodDog.total_number_of_dogs

dog2 = GoodDog.new
puts GoodDog.total_number_of_dogs

# CONSTANTS

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age 

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky

# More About Self

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
  puts self
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self 

# Exercises

# 1. Add a class method to your MyCar class that calculates the gas mileage of any car.

class MyCar
  def self.mileage(miles, gallons)
    puts "This car has a mileage of #{miles/gallons} mpg."
  end
end

MyCar.mileage(42, 1)

# 2. Override the to_s method to create a user friendly print out of your object.

class Person
  def initialize(n)
    @name = n
  end

  def to_s
    puts "My name is #{@name}!"
  end
end

lira = Person.new("lira")
lira.to_s

# 3. When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# Why do we get this error and how do we fix it?

# We get this error because we're using the attr_reader method rather than the attr_accessor or attr_writer methods. Let's fix it.


class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"


