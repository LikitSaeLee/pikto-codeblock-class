# Topic: DIfferent between Lambda and Proc
#
# The first different is how they return
def echo( &func )
  func.call( 2, 4 )
  return 'Lambda return at this line'
end

lambda_obj = lambda { |a,b| a + b }
proc_obj = proc.new { |a,b| a + b }

# return 'Lambda return at this line'
# this is because after lambda function is called, the echo function
# continue to execute and return the message
echo( lambda_obj )

# return 6, without printing the message
# because the return keyword for proc function
# with interrupt its caller function.
echo( proc_obj )
