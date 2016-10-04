gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'fraction_calculator'

class FractionCalculatorTest < Minitest::Test
  def test_simple_addition
    assert_equal "1/1", FractionCalculator.add("1/2", "1/2")
    assert_equal "8/15", FractionCalculator.add("1/3", "1/5")
    assert_equal "5/6", FractionCalculator.add("1/2", "1/3")
    assert_equal "5/12", FractionCalculator.add("1/6", "1/4")
  end

  def test_reduce_addition
    assert_equal "1/2", FractionCalculator.add("1/4", "2/8")
    assert_equal "1/2", FractionCalculator.add("2/16", "3/8")
    assert_equal "1/3", FractionCalculator.add("2/9", "3/27")
  end

  def test_invalid_addition
    assert_raises ArgumentError do
      FractionCalculator.add("1/0", "2/8")
      FractionCalculator.add("1/4", "2/0")
      FractionCalculator.add("1/0", "2/0")
    end
  end

  def test_simple_subtraction
    assert_equal "1/1", FractionCalculator.subtract("3/2", "1/2")
    assert_equal "2/15", FractionCalculator.subtract("1/3", "1/5")
    assert_equal "1/6", FractionCalculator.subtract("1/2", "1/3")
    assert_equal "-1/12", FractionCalculator.subtract("1/6", "1/4")
  end

  def test_reduce_subtraction
    assert_equal "1/4", FractionCalculator.subtract("2/4", "2/8")
    assert_equal "-1/4", FractionCalculator.subtract("2/16", "3/8")
    assert_equal "1/9", FractionCalculator.subtract("2/9", "3/27")
  end

  def test_invalid_subtraction
    assert_raises ArgumentError do
      FractionCalculator.subtract("1/0", "2/8")
      FractionCalculator.subtract("1/4", "2/0")
      FractionCalculator.subtract("1/0", "2/0")
    end
  end

  def test_simple_multiplication
    assert_equal "1/1", FractionCalculator.multiply("2/2", "4/4")
    assert_equal "1/15", FractionCalculator.multiply("1/3", "1/5")
    assert_equal "1/6", FractionCalculator.multiply("1/2", "1/3")
    assert_equal "1/24", FractionCalculator.multiply("1/6", "1/4")
  end

  def test_reduce_multiplication
    assert_equal "1/6", FractionCalculator.multiply("2/3", "1/4")
    assert_equal "1/2", FractionCalculator.multiply("3/4", "2/3")
    assert_equal "3/49", FractionCalculator.multiply("3/7", "3/21")
  end

  def test_invalid_multiplication
    assert_raises ArgumentError do
      FractionCalculator.multiply("1/0", "2/8")
      FractionCalculator.multiply("1/4", "2/0")
      FractionCalculator.multiply("1/0", "2/0")
    end
  end

  def test_simple_division
    assert_equal "1/1", FractionCalculator.divide("1/3", "1/3")
    assert_equal "5/3", FractionCalculator.divide("1/3", "1/5")
    assert_equal "3/2", FractionCalculator.divide("1/2", "1/3")
    assert_equal "4/3", FractionCalculator.divide("1/3", "1/4")
  end

  def test_reduce_division
    assert_equal "3/2", FractionCalculator.divide("1/4", "1/6")
    assert_equal "9/25", FractionCalculator.divide("3/5", "10/6")
    assert_equal "5/3", FractionCalculator.divide("5/4", "3/4")
  end

  def test_invalid_division
    assert_raises ArgumentError do
      FractionCalculator.divide("1/0", "2/8")
      FractionCalculator.divide("1/4", "2/0")
      FractionCalculator.divide("1/0", "2/0")
    end
  end
end
