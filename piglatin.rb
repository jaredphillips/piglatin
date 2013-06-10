
class PigLatinConverter



  def self.convert(word)
    word = word.downcase
    vowels = %w[a e i o u]
    consonant = []
    if vowels.include? word[0]
      return word.capitalize
    else
      word.each_char do |a|
        if vowels.include? a
          break
        else
          consonant.push a
        end
        x = consonant.length
        end_of_word = word[x..-1].capitalize
        first_consonant_set = consonant.join("").downcase
        return end_of_word + first_consonant_set + "ay"
      end
    end
  end 
end 


puts "What word do you want to convert?"
word = gets.chomp

puts PigLatinConverter.convert(word)




