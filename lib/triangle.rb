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
    else
    raise TriangleError
    end
  end

  def kind
    validate_triangle
    if @a == @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end


    end



  class TriangleError < StandardError
    def message
    end
  end


end
