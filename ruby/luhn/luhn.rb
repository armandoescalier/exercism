# frozen_string_literal: true

# The task is to check if a given string is valid.
class Luhn
  def self.valid?(input_number)
    number_without_space = input_number.gsub(/\s/, '')

    return false if number_without_space.length <= 1 || number_without_space.match(/\D/)

    arr_of_digits = number_without_space.reverse.chars.map { |digit| digit.to_i }
    sum = 0

    arr_of_digits.each_with_index do |digit, index|
      digit *= 2 if index.odd?
      digit -= 9 if digit > 9

      sum += digit
    end
    sum % 10 == 0
  end
end
