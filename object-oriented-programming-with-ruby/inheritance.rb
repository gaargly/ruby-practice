# Exercises

# 1. Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end


class MyCar < Vehicle
  attr_accessor :color
  attr_reader :year

  NUMBER_OF_WHEELS = 3

  def initialize(year, color, model, speed=0)
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def info
    "#This #{@color} #{@model} car is from #{@year}
      and it's going at #{@speed} miles per hour."
  end

  def speed_up(mph)
    @speed += mph
  end

  def brake
    @speed = 0 
  end

  def shut_off
  end

  def spray_paint(new_color)
    self.color = new_color
  end
end

class MyTruck < Vehicle
  NUMBER_OF_WHEELS = 18
end


# 2. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  @@number_of_descendant_objects = 0

  def number_of_vehicle_descendant_objects
    puts @@number_of_descendant_objects
  end

  def initialize
    @@number_of_descendant_objects += 1
  end

end

class MyCar < Vehicle
  attr_accessor :color
  attr_reader :year

  NUMBER_OF_WHEELS = 3

  def initialize(year, color, model, speed=0)
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def info
    "#This #{@color} #{@model} car is from #{@year}
      and it's going at #{@speed} miles per hour."
  end

  def speed_up(mph)
    @speed += mph
  end

  def brake
    @speed = 0 
  end

  def shut_off
  end

  def spray_paint(new_color)
    self.color = new_color
  end
end

class MyTruck < Vehicle
  NUMBER_OF_WHEELS = 18
end


# 3. Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  @@number_of_descendant_objects = 0

  def number_of_vehicle_descendant_objects
    puts @@number_of_descendant_objects
  end

  def initialize
    @@number_of_descendant_objects += 1
  end
end

module LoudHonk
  def loud_honk
    "HONK"
  end
end

class MyCar < Vehicle
  attr_accessor :color
  attr_reader :year

  NUMBER_OF_WHEELS = 3

  def initialize(year, color, model, speed=0)
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def info
    "#This #{@color} #{@model} car is from #{@year}
      and it's going at #{@speed} miles per hour."
  end

  def speed_up(mph)
    @speed += mph
  end

  def brake
    @speed = 0 
  end

  def shut_off
  end

  def spray_paint(new_color)
    self.color = new_color
  end
end

class MyTruck < Vehicle
  NUMBER_OF_WHEELS = 18
  include LoudHonk
end

linda = MyTruck.new
puts linda.loud_honk
puts "---"

# # 4. Print to the screen your method lookup for the classes that you have created.

puts Vehicle.ancestors
puts "---"
puts MyCar.ancestors
puts "---"
puts MyTruck.ancestors

# 5. Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.

class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  @@number_of_descendant_objects = 0

  def number_of_vehicle_descendant_objects
    puts @@number_of_descendant_objects
  end

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model, speed=0)
    @@number_of_descendant_objects += 1
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def info
    "#This #{@color} #{@model} vehicle is from #{@year}
      and it's going at #{@speed} miles per hour."
  end

  def speed_up(mph)
    @speed += mph
  end

  def brake
    @speed = 0 
  end

  def shut_off
  end

  def spray_paint(new_color)
    self.color = new_color
  end
end

module LoudHonk
  def loud_honk
    "HONK"
  end
end

class MyCar < Vehicle
  NUMBER_OF_WHEELS = 3
end

class MyTruck < Vehicle
  NUMBER_OF_WHEELS = 18
  include LoudHonk
end

fit = MyCar.new(2018, "Blue", "Sport", 22)
puts fit.info

behemoth = MyTruck.new(2020, "White", "18 Wheeler", 12)
puts behemoth.info

behemoth.speed_up(10)
puts behemoth.info

fit.brake
puts fit.info

puts behemoth.loud_honk

# 6. Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@number_of_descendant_objects = 0

  def number_of_vehicle_descendant_objects
    puts @@number_of_descendant_objects
  end

  def initialize(year, color, model, speed=0)
    @@number_of_descendant_objects += 1
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def info
    "#This #{@color} #{@model} vehicle is from #{@year}
      and it's going at #{@speed} miles per hour."
  end

  def speed_up(mph)
    @speed += mph
  end

  def brake
    @speed = 0 
  end

  def shut_off
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def age
    "Your vehicle is #{years_old} years old."
  end

  private

  def years_old
    Time::now.year - self.year
  end

end

module LoudHonk
  def loud_honk
    "HONK"
  end
end

class MyCar < Vehicle
  NUMBER_OF_WHEELS = 3
end

class MyTruck < Vehicle
  NUMBER_OF_WHEELS = 18
  include LoudHonk
end

fit = MyCar.new(2018, "Blue", "Sport", 22)
puts fit.age

# 7. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...

class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(pupil)
    grade > pupil.grade
  end

  protected

  def grade
    @grade
  end

end

carlos = Student.new("Carlos", 100)
reginald = Student.new("Reginald", 90)

puts carlos.name

puts carlos.better_grade_than?(reginald)

# 8. Given the following code...

bob = Person.new
bob.hi

# And the corresponding error message...

# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# What is the problem and how would you go about fixing it?

# The problem is there is no method named hi that is defined for the class Person. I would add a method called hi in the Person class to fix this error, like so:

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def hi
    "#{name} says hi!"
  end
end

bob = Person.new("Bob")
puts bob.hi


