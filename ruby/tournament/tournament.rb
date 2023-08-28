# frozen_string_literal: true

WIN_POINTS = 3
DRAW_POINTS = 1

class Tournament
  def self.tally(matches_data)
    games = matches_data.split("\n")
    game_stats = {}

    games.each do |game|
      team_1, team_2, result = game.split(';')
      game_stats[team_1] = { team: team_1, mp: 0, w: 0, d: 0, l: 0, p: 0 } unless game_stats[team_1]
      game_stats[team_2] = { team: team_2, mp: 0, w: 0, d: 0, l: 0, p: 0 } unless game_stats[team_2]

      game_stats[team_1][:mp] += 1
      game_stats[team_2][:mp] += 1

      case result
      when 'win'
        game_stats[team_1][:w] += 1
        game_stats[team_1][:p] += WIN_POINTS
        game_stats[team_2][:l] += 1
      when 'loss'
        game_stats[team_1][:l] += 1
        game_stats[team_2][:w] += 1
        game_stats[team_2][:p] += WIN_POINTS
      when 'draw'
        game_stats[team_1][:d] += 1
        game_stats[team_2][:d] += 1
        game_stats[team_1][:p] += DRAW_POINTS
        game_stats[team_2][:p] += DRAW_POINTS
      end
    end

    table = "#{'Team'.ljust(31)}| MP |  W |  D |  L |  P\n"
    game_stats
      .sort_by { |team, stat| [-stat[:p], team] }
      .each do |_team, stat|
      table += (stat[:team]).to_s.ljust(31) + "|  #{stat[:mp]} |  #{stat[:w]} |  #{stat[:d]} |  #{stat[:l]} |  #{stat[:p]}\n"
    end
    table
  end
end
