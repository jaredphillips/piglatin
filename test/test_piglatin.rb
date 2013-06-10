require_relative '../piglatin.rb'

require 'test/unit'



class TestContact < Test::Unit::TestCase

	def set_up
		@converter = PigLatinConverter.new.convert("Happy")
	end

	def test_user_gets_asked_for_a_word
		assert @converter.is_a?(Object)
	end

	def test_vowels_contains_vowels
	  assert_equal @vowels, %w[a e i o u] 
	end
end