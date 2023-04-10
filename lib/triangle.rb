class Triangle
   attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    raise TriangleError if !valid_triangle?
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def valid_triangle?
    a > 0 && b > 0 && c > 0 && a + b > c && b + c > a && a + c > b
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end
end
