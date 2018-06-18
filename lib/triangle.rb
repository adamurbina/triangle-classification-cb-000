class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @sides = [side1, side2, side3]
  end

  def kind
      case
      when @sides
          :equilateral
      #when @side1 == @side2 || @side2 == @side3
      end
  end

  class TriangleError < StandardError
  end

end
