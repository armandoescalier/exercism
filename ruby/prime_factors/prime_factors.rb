# frozen_string_literal: true

# Prime Factors Challenge
class PrimeFactors
  def self.of(test_number)
    prime_factors = []
    divisor = 2

    while test_number > 1
      if (test_number % divisor).zero?
        prime_factors.push(divisor)
        test_number /= divisor
      else
        divisor += 1
      end
    end
    prime_factors
  end
end
