# because in ruby we use callback so much,
# there is a built-in syntax for callback named code block

# revamping the previous example in idiomatic way

def compute( a, b )
  yield( 3, 5 )
end

compute { |a,b| a + b }
compute { |a,b| a * b }
