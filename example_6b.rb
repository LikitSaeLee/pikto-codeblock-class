# Topic: Basic Syntax of class
# Lets say we want to keep track of the volume of all initialized triangle.
def main
  a = Triangle.new( 2, 3, 4 )
  b = Triangle.new( 4, 5, 6 )
  a.volume
  b.volume
  Triangle.total_volume
end

class Triangle

  attr_reader :length, :height, :width

  def initialize( length, height, width )
    # instance variable
    @length = length
    @height = height
    @width = width
    # For every triangle initialized, we add its volume
    # to store in its class variables
    @@total_volume += self.volume
  end

  def self.total_volume
    @total_volume
  end

  def volume
    1/2 * self.length * self.height * self.height
  end
end

main
