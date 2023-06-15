# frozen_string_literal: true

class Integer
  def to_roman
    "#{THOUSANDS[digits[3]]}#{HUNDREDS[digits[2]]}#{DOZENS[digits[1]]}#{FIRST_TEN_NUMBERS[digits[0]]}"
  end
end

FIRST_TEN_NUMBERS = {
  1 => 'I',
  2 => 'II',
  3 => 'III',
  4 => 'IV',
  5 => 'V',
  6 => 'VI',
  7 => 'VII',
  8 => 'VIII',
  9 => 'IX'
}.freeze

DOZENS = {
  1 => 'X',
  2 => 'XX',
  3 => 'XXX',
  4 => 'XL',
  5 => 'L',
  6 => 'LX',
  7 => 'LXX',
  8 => 'LXXX',
  9 => 'XC'
}.freeze

HUNDREDS = {
  1 => 'C',
  2 => 'CC',
  3 => 'CCC',
  4 => 'CD',
  5 => 'D',
  6 => 'DC',
  7 => 'DCC',
  8 => 'DCCC',
  9 => 'CM'
}.freeze

THOUSANDS = {
  1 => 'M',
  2 => 'MM',
  3 => 'MMM'
}.freeze
