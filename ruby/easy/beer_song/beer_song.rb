# frozen_string_literal: true

class BeerSong
  def self.recite(available_bottles, bottles_out)
    bottles_on_wall = available_bottles
    song = ''

    (0...bottles_out).each do
      case bottles_on_wall
      when 0
        song += "No more bottles of beer on the wall, no more bottles of beer.\n"
        song += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      when 1
        song += "#{bottles_on_wall} bottle of beer on the wall, #{bottles_on_wall} bottle of beer.\n"
        song += "Take it down and pass it around, no more bottles of beer on the wall.\n"
      when 2
        song += "#{bottles_on_wall} bottles of beer on the wall, #{bottles_on_wall} bottles of beer.\n"
        song += "Take one down and pass it around, #{bottles_on_wall - 1} bottle of beer on the wall.\n"
      else
        song += "#{bottles_on_wall} bottles of beer on the wall, #{bottles_on_wall} bottles of beer.\n"
        song += "Take one down and pass it around, #{bottles_on_wall - 1} bottles of beer on the wall.\n"
      end
      song += "\n" if bottles_out > 1
      bottles_out -= 1
      bottles_on_wall -= 1
    end
    song
  end
end
