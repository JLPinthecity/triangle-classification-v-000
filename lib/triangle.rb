class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def validate_triangle
    sides = [@a, @b, @c]
    if sides.each do |side|
      side != 0 && @a + @b > @c || @b + @c > @a || @a + @c > @b
    end
    
      
  end



  class TriangleError < StandardError
    def message
    end
  end


end
