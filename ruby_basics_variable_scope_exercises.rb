# What's My Value Questions

# 1.
a = 7

def my_value(b)
  b += 10
end

my_value(a)   # 17
puts a    # 7 because the reassignment += operator does not mutate the method's caller or the argument passed to the method. "Another way to look at this is that numbers in Ruby are immutable. Thus, there is no way for my_value to mutate the value referenced by b, which means that my_value does not (and can not) change the object referenced by a (7).""

# 2.
a = 7

def my_value(a)
  a += 10
end

my_value(a)   # 17
puts a    # 7 "Local variables outside the method definition are not visible inside the method definition; so the top level a is not available inside my_value. Furthermore, local variables inside the method definition are not visible outside the method definition; so the a inside my_value is a local variable with no top-level visibility."

# 3.
a = 7

def my_value(b)
  a = b
end

my_value(a + 5) # 12
puts a # 7

# 4.
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a) # "-"   methods return the assigned value
puts a  # "Xy-zy"

"String#[]= is a mutating method; it actually modifies the string."


# 5.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)   # "yzzyX" b is pointing to a different string and a remains unchanged
puts a      # "Xyzzy"

# 6.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)   # error since a is defined outside of the method scope and the method does not have access to it. local variables initialized outside the method definition are not accessible from inside the method.
puts a    # 7


# 7.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a     # 3

# "We are now dealing with a method invocation that has a block. The scoping rules for a method invocation with a block differ from the rules for method definitions. With method definitions, local variable scope is restricted to the method definition itself. In contrast, a method invocation with a block has more open scoping rules; the block can use and modify local variables that are defined outside the block.

# In this case, a starts out as 7, then we set a to 1, 2 and 3 in sequence. By the time we get to the puts, a has a value of 3."

# in my words, blocks can use and modify local variables that were initialized outside of the block scope.

# 8.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a  # error because a is local to the block and is not accessible outside the block

# "The local variable a that is initialized in the block passed to the each method has a scope that is local to that block. Since there is no local variable named a initialized in a scope external to the scope of that block, the expression a = element on line 4 is initialization and not reassignment."

# 9.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a    # 7 because the outer a is "shadowed" by the a in the inner scope of the block (i.e. the block parameter a), so the outer a remains unchanged. however, if you puts a after a += 1 in the block, you will see the values 2 and 3 and 4 shown on the terminal


# 10.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b    # error because outer a is not in scope within the method here, even though the method includes a block inside of it.
  end
end

my_value(array)
puts a
