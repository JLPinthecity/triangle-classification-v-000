class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    signs = [@a, @b, @c]
    if signs.each do |side|
      side = 0
    signs << false
    elsif
      signs.max < signs.delete(signs.max)
    signs << false
    end
    raise TriangleError if signs.include?(false)
  end
  end

  class TriangleError < StandardError
  end

end
