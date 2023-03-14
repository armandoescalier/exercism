# frozen_string_literal: true

# Take a nested list and return a single flattened list with all values except nil/null.
class FlattenArray
  def self.flatten(original_array)
    original_array.flatten.reject(&:nil?)
  end
end
