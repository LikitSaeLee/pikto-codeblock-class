# in ruby, you can think lambda as an anonymous function
# given the previous example in javascript

sum = lambda { |a, b| a + b }
multiply = lambda { |a, b| a * b }

# or
sum = lambda do |a,b|
  a + b
end

# return 6
sum.call( 2, 4 )

# return 8
multiply.call( 2, 4 )

# in ruby, you add a & infront of your argument
# to indicate that argument is a function
def compute( &math_func )
  math_func.call( 3, 5 )
end

# return 8
compute( sum );

# like javascript, you can also passing in the function directly without
# assigning it to a variable
# return 8
# but its not a common practise so don't do this
compute( lambda { |a,b| a + b } )

# return 15
compute( multiply );
compute( lambda { |a,b| a * b } )
