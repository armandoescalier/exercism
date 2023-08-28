# frozen_string_literal: true

class HighScores
  def initialize(input_scores)
    @scores = input_scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    @scores.last == @scores.max
  end
end
