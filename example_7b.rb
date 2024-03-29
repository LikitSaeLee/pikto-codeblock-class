class Shape
  attr_reader :length, :height, :width

  def initialize( length, height, width )
    @length = length
    @height = height
    @width = width
  end
end

class Triangle < Shape
  def volume
    1/2 * self.length * self.height * self.width
  end
end

class Rectangle < Shape
  def volume
    self.length * self.height * self.width
  end
end
