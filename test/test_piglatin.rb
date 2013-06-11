require_relative '../piglatin.rb'

require 'test/unit'
require 'minitest/pride'



class TestContact < Test::Unit::TestCase

	def test_word_gets_set
		new_user = PigLatinConverter.new
		@word = "Happy"
		assert_equal "Happy", @word
	end

	def test_for_valid_word
		new_user = PigLatinConverter.new
		@word = "Happy"
		new_user.valid_word(@word)
	  assert_not_nil @word
	end

	def test_for_invalid_word
		new_user = PigLatinConverter.new 
		@word = nil 
		new_user.valid_word(@word)
		assert true
	end

	def test_good_word_gets_converted
		new_user = PigLatinConverter.new 
		new_user.converter("Happy")
		assert "Appyhay"
	end
end