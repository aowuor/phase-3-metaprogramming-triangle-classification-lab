class Triangle
  # write code here
  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def kind
    if valid_type?
      unique_sides = [@num1, @num2, @num3].uniq.length
      if (unique_sides == 1)
        :equilateral
      elsif (unique_sides == 2)
        :isosceles
      else
        :scalene
      end

    else
      raise TriangleError
      end
  end
 

  def valid_type?
    valid_length = @num1 > 0 && @num2 > 0 && @num3 > 0
    valid_side_equality =(@num1 < @num2 + @num3) && (@num2 < @num1 + @num3) && (@num3 < @num2 + @num1)
    valid_length && valid_side_equality
  end

  class TriangleError < StandardError
    
  end

end

