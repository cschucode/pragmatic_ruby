class Calculator
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end

  def subtract
    @num1 - @num2
  end
end

equation1 = Calculator.new(20, 11)

puts equation1.add
puts equation1.subtract
