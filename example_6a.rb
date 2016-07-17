# Topic: Object oriented thinking
# Given this problem:
# Calculate the sum of the volume of two triangles
# with length, height, width of [ 2,3,4 ] and [ 3,4,5 ]
#
# solving it in produral way

sum_of_volume( [ 2, 3, 4 ], [ 3, 4, 5 ] )

def sum_of_volume( first_triangle, second_triangle )
  calculate_volume( *first_triangle ) + calculate_volume( *second_triangle )
end

def calculate_volume( length, height, width )
  1/2 * length * height * width
end

# solving it in object oriented way

Triangle.new( 2, 3, 4 ).volume + Triangle.new( 3, 4, 5 ).volume

class Triangle

  def initialize( length, height, width )
    @length = length
    @height = height
    @width = width
  end

  def volume
    1/2 * self.length * self.height * self.height
  end

  def length
    @length
  end

  def height
    @height
  end

  def width
    @width
  end
end
