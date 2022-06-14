class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(initial_moment)
    initial_moment + GIGASECOND
  end
end
