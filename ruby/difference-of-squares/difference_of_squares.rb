# frozen_string_literal: true

class Squares
  def initialize(input_number)
    @number = input_number
  end

  def square_of_sum
    (1..@number).sum**2
  end

  def sum_of_squares
    (1..@number).reduce { |sum, number| sum + number**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
