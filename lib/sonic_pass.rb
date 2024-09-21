# frozen_string_literal: true

require_relative 'sonic_pass/version'

# Strong password generator.
#
# Generates strong
module SonicPass
  ALPHANUMERIC_CHARSETS = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
  SPECIAL_CHARSETS = %w[! @ # $ % ^ & * ( ) - _ = + { } [ ] | : ; " ' < > ? , . /].freeze
  CHARSETS = ALPHANUMERIC_CHARSETS + SPECIAL_CHARSETS
  # Generates a strong password of a specified length.
  #
  # @param length [Integer] The length of the password to be generated. Defaults to 12.
  #
  # @return [String] A strong password of the specified length.

  # Combine them into a single charset if needed
  # @param length [Integer] The length of the password to be generated. Defaults to 12.
  # @param count [Integer] The number of passwords to generate. Defaults to 1.
  # @return [Array<String>] An array of strong passwords of the specified length.
  def self.generate(length = 12, count = 1)
    passwords = Array.new(count) { (Array.new(length) { CHARSETS.sample }).join }

    count == 1 ? passwords[0] : passwords
  end
end
