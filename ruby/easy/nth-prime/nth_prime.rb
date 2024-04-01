# frozen_string_literal: true

# Given a number n, determine what the nth prime is.
class Prime
  def self.nth(input_number)
    raise ArgumentError if input_number < 1

    posible_nth_prime = 1
    count = 0

    while count < input_number
      posible_nth_prime += 1
      count += 1 if prime?(posible_nth_prime)
    end
    posible_nth_prime
  end

  def self.prime?(posible_nth_prime)
    (2...posible_nth_prime).each { |x| return false if (posible_nth_prime % x).zero? }
  end
end
