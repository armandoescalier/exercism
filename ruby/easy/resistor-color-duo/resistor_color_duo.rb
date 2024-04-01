# frozen_string_literal: true

# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.

# Resistor Color Duo Challenge
class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(input_colors)
    first_color_value = COLORS.find_index(input_colors[0])
    second_color_value = COLORS.find_index(input_colors[1])

    "#{first_color_value}#{second_color_value}".to_i
  end
end
