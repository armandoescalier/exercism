# frozen_string_literal: true

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.

class Raindrops
  def self.convert(input_number)
    raindrop_sound = ''

    pling = (input_number % 3).zero?
    plang = (input_number % 5).zero?
    plong = (input_number % 7).zero?

    raindrop_sound += 'Pling' if pling
    raindrop_sound += 'Plang' if plang
    raindrop_sound += 'Plong' if plong
    raindrop_sound += input_number.to_s if raindrop_sound.empty?
    raindrop_sound
  end
end
