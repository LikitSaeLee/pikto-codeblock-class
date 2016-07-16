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
