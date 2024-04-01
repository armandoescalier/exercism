# frozen_string_literal: true

MAX_DIGITS = 11
NANP_LENGTH = 10
NANP_COUNTRY_CODE = 1
MIN_VALID_NUMBER = 2

class PhoneNumber
  def self.clean(raw_number)
    sanitized_number = raw_number.gsub(/\D/, '').chars.map(&:to_i)
    valid_phone_number = ''

    if sanitized_number.length == MAX_DIGITS

      country_code = sanitized_number.slice(0, 1)
      area_code = sanitized_number.slice(1, 3)
      exchange_code = sanitized_number.slice(4, sanitized_number.size)

      return nil if country_code.first != NANP_COUNTRY_CODE
      return nil if area_code.first < MIN_VALID_NUMBER
      return nil if exchange_code.first < MIN_VALID_NUMBER

      valid_phone_number = (area_code + exchange_code).join

    elsif sanitized_number.length == NANP_LENGTH

      area_code = sanitized_number.slice(0, 3)
      exchange_code = sanitized_number.slice(3, sanitized_number.size)

      return nil if area_code.first < MIN_VALID_NUMBER
      return nil if exchange_code.first < MIN_VALID_NUMBER

      valid_phone_number = (area_code + exchange_code).join
    end
  end
end
