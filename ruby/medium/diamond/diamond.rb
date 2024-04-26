ALPHABET = ("A".."Z").to_a

class Diamond
  def self.make_diamond(main_char)
    return "A\n" if main_char == "A"

    pattern = ""
    middle_path = ""

    char_index = ALPHABET.index(main_char)
    max_lateral_spaces = char_index - 1
    max_length = ((max_lateral_spaces * 2) + 1)

    ALPHABET.each_with_index do |x, index|
      break middle_path << handle_middle(max_length, x) if main_char == x

      exterior = handle_exterior_spaces(max_lateral_spaces, index)
      interior = handle_interior_spaces(max_length, exterior)

      next pattern << exterior + x + exterior + "\n" if x == "A"
      pattern <<  exterior + x + interior + x + exterior + "\n"
    end

    pattern + middle_path + pattern.split("\n").reverse.join("\n") + "\n"
  end

  def self.handle_exterior_spaces(max_lateral_spaces, index)
    exterior_spaces = max_lateral_spaces - index
    " " * (exterior_spaces + 1)
  end

  def self.handle_interior_spaces(max_length, exterior)
    max = max_length - (exterior.length * 2)
    " " * max.abs
  end

  def self.handle_middle(max_length, x)
    row = ""
    row << x
    row << " " * max_length
    row << x
    row << "\n"
  end
end
