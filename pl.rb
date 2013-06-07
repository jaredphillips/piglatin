class PigLatinConverter
	def self.convert(word)
		word.downcase
		vowels = %w[a e i o u]
		for i in word
			if i == vowels
				puts word
			else
				puts "Hi"
			end
		end
	end
end

PigLatinConverter.convert('Apple')



