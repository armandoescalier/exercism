# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(input_number)
    sanitized_numbers = input_number.to_s.gsub(/\D/, '').to_i
    array_of_digits = sanitized_numbers.digits

    total_sum = array_of_digits.reduce(0) { |sum, digit| sum += digit**array_of_digits.length }

    sanitized_numbers == total_sum
  end
end
