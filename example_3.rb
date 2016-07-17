# because in ruby we use this kind of callback so much,
# there is a built-in syntax for callback.

# revamping the previous example in idiomatic way
# by using CODE BLOCK

def compute( a, b )
  yield( 3, 5 )
end

compute { |a,b| a + b }
compute { |a,b| a * b }

# or you can do it multiline
compute do |a,b|
  a + b
end

compute do |a,b|
  a * b
end
