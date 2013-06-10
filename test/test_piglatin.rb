require_relative '../piglatin.rb'

require 'test/unit'


class TestContact < Test::Unit::TestCase

	def set_up
		word = "Jared"
		@converter = PigLatinConverter.self.convert(word)
	end

	def test_user_gets_asked_for_a_word
		assert @converter.is_a?(Object)
	end

end