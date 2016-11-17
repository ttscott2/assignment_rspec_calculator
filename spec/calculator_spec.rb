# Your code here
require_relative 'spec_helper.rb'
require 'calculator.rb'


describe Calculator do
  describe '#add' do
    it 'properly adds positive integers' do
      expect(Calculator.new.add(1, 2)).to eq(3)
    end
    it 'properly adds negative integers' do
      expect(Calculator.new.add(-3, -4)).to eq(-7)
    end
    it 'properly adds positve floats' do
      expect(Calculator.new.add(2.5, 1.5)).to eq(4.0)
    end
    it 'properly adds negative floats' do
      expect(Calculator.new.add(-3.5, -4.0)).to eq(-7.5)
    end
  end

  describe '#subtract' do
    it 'properly subtracts positive integers' do
      expect(Calculator.new.subtract(2, 1)).to eq(1)
    end
    it 'properly subtracts negative integers' do
      expect(Calculator.new.subtract(-1, -2)).to eq(1)
    end
    it 'properly subtracts positive floats' do
      expect(Calculator.new.subtract(2.0, 3.5)).to eq(-1.5)
    end
    it 'properly subtracts negative floats' do
      expect(Calculator.new.subtract(-2.0, -3.5)).to eq(1.5)
    end
  end

  describe '#multiply' do
    it 'properly multiplies positive integers' do
      expect(Calculator.new.multiply(3, 4)).to eq(12)
    end
    it 'properly multiplies negative integers' do
      expect(Calculator.new.multiply(-3, 4)).to eq(-12)
    end
  end

  describe '#divide' do
    it 'properly divides positive integers' do
      expect(Calculator.new.divide(9, 3)).to eq(3)
    end
    it 'raises an error if the second argument is zero' do
      expect { Calculator.new.divide(2, 0) }.to raise_error(ArgumentError)
    end
    it 'returns an integer if there is no remainder' do
      expect(Calculator.new.divide(6, 2)).to eq(3)
    end
    it 'returns a float if there is a remainder' do
      expect(Calculator.new.divide(6, 2.5)).to eq(2.4)
    end
  end

  describe '#pow' do
    it 'properly raises positive integers to their power' do
      expect(Calculator.new.pow(5, 2)).to eq(25)
    end
    it 'properly raises negative integers to their power' do
      expect(Calculator.new.pow(-5, 2)).to eq(25)
    end
    it 'properly raises positive floats to their power' do
      expect(Calculator.new.pow(2.5, 2)).to eq(6.25)
    end
    it 'properly raises negative floats to their power' do
      expect(Calculator.new.pow(-2.5, 2)).to eq(6.25)
    end
  end

  describe '#sqrt' do
    it 'properly determines the square root for positive integers' do
      expect(Calculator.new.sqrt(9)).to eq(3)
    end
    it 'raises an error for negative inputs' do
      expect { Calculator.new.sqrt(-9) }.to raise_error(ArgumentError)
    end
    it 'returns integers for round roots' do
      expect(Calculator.new.sqrt(36)).to eq(6)
    end
    it 'returns two digit decimals for non-round roots' do
      expect(Calculator.new.sqrt(6.25)).to eq(2.50)
    end
  end

end
