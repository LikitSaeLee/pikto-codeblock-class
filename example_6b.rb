def main
  a = Triangle.new( 2, 3, 4 )
  b = Triangle.new( 4, 5, 6 )
  a.volume
  b.volume
  Triangle.total_volume
end

class Triangle

  def initialize( length, height, width )
    @length = length
    @height = height
    @width = width
    @@total_volume += self.volume
  end

  def self.total_volume
    @total_volume
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

main
