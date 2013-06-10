require_relative '../piglatin.rb'

require 'test/unit'



class TestContact < Test::Unit::TestCase

	def set_up
		a = PigLatinConverter.new
		a.valid_word("Happy")
	end

	def test_word_should_be_valid
		
end