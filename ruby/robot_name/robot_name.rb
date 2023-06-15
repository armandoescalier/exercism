# frozen_string_literal: true

class Robot
  attr_reader :name

  def initialize
    obtain_new_name
  end

  def obtain_new_name
    @name = @@robots_names_collection.pop
  end

  def self.forget
    @@robots_names_collection = ('AA000'..'ZZ999').to_a
  end

  def reset
    obtain_new_name
  end
end
