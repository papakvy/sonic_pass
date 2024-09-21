# frozen_string_literal: true

require 'test_helper'

class TestSonicPass < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SonicPass::VERSION
  end

  def test_generate_returns_strings_count_one
    assert_kind_of String, SonicPass.generate
  end

  def test_generate_always_returns_array_of_strings_with_count_more_than_one
    assert_kind_of Array, SonicPass.generate(12, 2)
  end

  def test_generate_always_returns_array_of_strings_of_specified_count
    count = 2

    assert_equal count, SonicPass.generate(3, count).length
  end

  def test_generate_return_defaults_length_eq_twelved
    assert_equal 12, SonicPass.generate.length
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
end
