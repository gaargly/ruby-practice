# Chapter examples

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info
sparky.change_info("Spartacus", "100 inches", "100 lbs")
puts sparky.info


# Exercises
# 1. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
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
end

fit = MyCar.new(2018, "blue", "sport", 22)
puts fit.info
fit.speed_up(10)
puts fit.info
fit.brake
puts fit.info

# 2. Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

class MyCar
  attr_accessor :color
  attr_reader :year

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
end

fit = MyCar.new(2018, "blue", "sport", 22)
puts fit.info

# We can access the color because of the accessor method 
puts fit.color

# We can update the color also because of the accessor method
fit.color = "black"
puts fit.color
puts fit.info

# We can access the year because of the reader method
puts fit.year

# But we cannot update the year because there is no write access
fit.year = 2020
puts fit.year


# 3. You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.


class MyCar
  attr_accessor :color
  attr_reader :year

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

fit = MyCar.new(2018, "blue", "sport", 22)
puts fit.info

fit.spray_paint("yellow")
puts fit.info

