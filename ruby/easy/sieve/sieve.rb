# frozen_string_literal: true

# Use the Sieve of Eratosthenes to find all the primes from 2 up to a given number.
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    prime_numbers = []
    multiples_marked = []

    return [] if @limit < 2

    (2..@limit).each do |first_range_number|
      next if multiples_marked.include?(first_range_number)

      prime_numbers.push(first_range_number)

      (2..@limit).each { |second_range_number| multiples_marked.push(first_range_number * second_range_number) }
    end
    prime_numbers
  end
end
