class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def validate_triangle
    real_triangle = [(@a + @b > @c), (@b + @c > @a), (@a + @c > @b)]
    
  end



  class TriangleError < StandardError
    def message
    end
  end


end
