lambda_obj = lambda { |a,b| a + b  }
proc_obj = proc.new { |a,b| a + b  }

# the second different is how they consider the argument

# you can call lambda with any number of argument
# return 3
lambda_obj.call( 1, 2, 3, 4 )

# do this in proc will return in error
proc_obj.call( 1, 2, 3, 4 )

