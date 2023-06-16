# frozen_string_literal: true

class Series
  def initialize(input)
    @series = input
  end

  def slices(input_slice)
    raise ArgumentError if input_slice > @series.length

    @series.split('').each_cons(input_slice).map(&:join)
  end
end
