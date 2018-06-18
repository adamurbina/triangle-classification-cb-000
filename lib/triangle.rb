class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @sides = [side1, side2, side3].sort
  end

  def kind
      case
      when (@sides[0] + @sides[1] <= @sides[2])
          raise TriangleError
      when @sides.count(@sides[0]) == 3
          :equilateral
      when @sides.count(@sides[1]) == 2
          :isosceles
      else
          :scalene
      end
  end

  class TriangleError < StandardError
  end

end
