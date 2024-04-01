# frozen_string_literal: true

class Year
  def self.leap?(year)
    year_div_by_four = (year % 4).zero?
    year_div_by_one_hundred = (year % 100).zero?
    year_div_by_four_hundred = (year % 400).zero?

    (year_div_by_four && !year_div_by_one_hundred) || year_div_by_four_hundred
  end
end
