# Topic: Public and Private Interface
# Public interface of a class is the method that can be called
# externally for a class.

# Private interface is the method that is being used by the class
# internally only and should not be exposed externally.
# For example.

triangle = Triangle.new( 1, 2, 3, 4 )
# this will raise error because we are called the private method of the class.
triangle.area



class Triangle
  attr_reader :length, :height, :width

  def initialize( length, height, width, degree )
    @length = length
    @height = height
    @width = width
    @degree
  end

  public
  def volume
    1/2 * self.area
  end

  private
  def area
    self.length * self.height * Math.sin( degree )
  end
end
