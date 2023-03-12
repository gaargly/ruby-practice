# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"

arr = ["laboratory", "experiment", "Pans Labyrinth",  "elaborate", "polar bear"]

arr.each do |word|
  if word =~ /lab/
    puts word
  end
end

# 2. What will the following program print to the screen? What will it return?
# ANSWER: "Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object."

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# 3. What is exception handling and what problem does it solve?
# ANSWER: Exception handling solves the problem of a program stopping when it encounters an error condition. It allows the program to "rescue" the exception and respond with an alternate output, then continuing to run.


# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 4. Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
# ANSWER: Because we need to use the ampersand (&) when passing a block to a method.
