# The first different is how they return
def echo( &func )
  func.call( 2, 4 )
  puts 'Lambda return at this line' # return nil
end

lambda = lambda { |a,b| a + b }
proc = proc.new { |a,b| a + b }

# print 'Lambda return at this line' and return nil
# because puts will return nil.
# after lambda is called, the echo function
# continue to execute
echo( lambda )

# return 6, without printing the message
echo( proc )
