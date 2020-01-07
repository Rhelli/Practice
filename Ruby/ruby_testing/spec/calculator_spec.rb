#spec/calculator_spec.rb
require './lib/calculator'

RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)). to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the multiplication of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5, 10)).to eql(50)
    end

    it "returns the multiplcation of two or more numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5, 9)).to eql(135)
    end
  end
end
