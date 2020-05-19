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
      side == 0 
    raise TriangleError
  else 
    sides.max.pop > sides.sum
  end

  def kind
    validate_triangle
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end


class TriangleError < StandardError
end

end
