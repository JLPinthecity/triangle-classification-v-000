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
    REAL_TRIANGLE = [
      [a + b > c],
      [b + c > a],
      [a + c > b]
    ]
    raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
