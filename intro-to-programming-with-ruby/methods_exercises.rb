# 1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "hello #{name}"
end

greeting("lira")


# 2. What do the following expressions evaluate to? That is, what value does each expression return?

    # 1. x = 2
    # ANSWER: ths returns 2

    # 2. puts x = 2
    # ANSWER: this returns nil

    # 3. p name = "Joe"
    # ANSWER: this returns "Joe"

    # 4. four = "four"
    # ANSWER: this returns "four"

    # 5. print something = "nothing"
    # ANSWER: this returns nil

# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

multiply(2,5)

# 4. What will the following code print to the screen?
# ANSWER: it prints nil

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# 5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
# ANSWER: it returns "Yippeee!!!!"

def scream(words)
  words = words + "!!!!"
  return words
  puts words
end

scream("Yippeee")


# 6. What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# ANSWER: it says the method call using the method calculate_product was expecting two arguments but only received one
