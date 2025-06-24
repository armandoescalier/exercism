# frozen_string_literal

class EliudsEggs
  def self.egg_count(decimal_eggs)
    decimal_eggs.to_s(2).count("1")
  end
end
