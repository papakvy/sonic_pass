# frozen_string_literal: true

require 'test_helper'

class TestSonicPass < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SonicPass::VERSION
  end

  def test_generate_always_returns_array
    assert_kind_of Array, SonicPass.generate
  end

  def test_generate_always_returns_array_of_strings
    assert_kind_of String, SonicPass.generate.first
  end

  def test_generate_always_returns_array_of_strings_of_specified_length
    length = 3

    assert_equal length, SonicPass.generate(length).first.length
  end

  def test_generate_always_returns_array_of_strings_of_specified_count
    count = 2

    assert_equal count, SonicPass.generate(3, count).length
  end

  def test_generate_always_returns_array_of_strings_of_specified_length_and_count
    length = 3
    count = 2

    assert_equal length, SonicPass.generate(length, count).first.length
  end

  def test_generate_return_defaults_length_twelved
    assert_equal 12, SonicPass.generate.first.length
  end

  def test_generate_return_defaults_count_one
    assert_equal 1, SonicPass.generate(12).length
  end

  def test_cli_sonic_pass_command_with_no_arguments
    out = `bin/sonic_pass`.strip

    assert_match(/copied\ to\ clipboard/, out)
  end

  def test_cli_sonic_pass_command_with_one_argument
    out = `bin/sonic_pass 12`.strip

    assert_match(/copied\ to\ clipboard/, out)
  end

  def test_cli_sonic_pass_command_with_two_arguments
    out = `bin/sonic_pass 12 2`.strip

    assert_equal 2, out.split("\n").length
  end

  # private

  # def run_cli_sonic_pass(length, count)
  #   out = `bin/sonic_pass #{length} #{count}`.strip

  #   assert_match(/copied\ to\ clipboard/, out)
  #   out
  # end

  # def run_cli_sonic_pass_with_args(args)
  #   out = `bin/sonic_pass #{args}`.strip

  #   assert_match(/copied\ to\ clipboard/, out)
  #   out
  # end
end
