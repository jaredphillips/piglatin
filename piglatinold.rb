
class PigLatinConverter
	def self.convert(word)
		vowels = %w[a e i o u]
		word_array = word.each_char.to_a

		if word_array[0] == vowels 
			puts word
		else
			puts "Yes"
		end
	end
end

PigLatinConverter.convert("aJJJaJ")


