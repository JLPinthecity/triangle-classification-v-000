class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

    sides = [@a, @b, @c]

  def validate_triangle
    if a + b !> == c || @side2 + @side3 !> == @side1 ||
       @side1 + @side3 !> == @side2
  end



  class TriangleError < StandardError
    def message
    end
  end


end
