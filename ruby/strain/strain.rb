# frozen_string_literal: true

# Implement the `keep` and `discard` operation on collections. Given a collection
# and a predicate on the collection's elements, `keep` returns a new collection
# containing those elements where the predicate is true, while `discard` returns
# a new collection containing those elements where the predicate is false.

class Array
  def keep
    (map { |item| item if yield(item) }).compact
  end

  def discard
    (map { |item| item unless yield(item) }).compact
  end
end
