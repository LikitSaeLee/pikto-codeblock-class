# Topic: Different between Lambda and Proc
lambda_obj = lambda { |a,b| a + b  }
proc_obj = proc.new { |a,b| a + b  }

# the second different is how they treat the argument
# you can call lambda with any number of argument
# return 3
lambda_obj.call( 1, 2, 3, 4 )

# do this in proc will return in error
# because we didn't define the function to accept more than 2 arguments.
proc_obj.call( 1, 2, 3, 4 )

