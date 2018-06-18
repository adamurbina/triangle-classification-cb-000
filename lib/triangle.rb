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
      when @sides.count {|s| s<=0 } > 0 || (@sides[0] + @sides[1] <= @sides[2])
          raise TriangleError
      when @sides.count(@side1) == 3
          :equilateral
      when @sides.count(@side2) == 2
          :isosceles
      else
          :scalene
      end
  end

  class TriangleError < StandardError
  end

end
