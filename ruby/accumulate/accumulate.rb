# frozen_string_literal: true

# Given a collection and an operation to perform on each element of the collection
class Array
  def accumulate
    resulting_collection = []

    each do |item|
      return [] unless yield(item)

      resulting_collection.push(yield(item))
    end
    resulting_collection
  end
end
