
class PigLatinConverter
  def self.convert(word)
    word = word.downcase
    vowels = %w[a e i o u]
    consonant = []
    if vowels.include? word[0]
      puts word.capitalize
    else
      word.each_char do |a|
        if vowels.include? a
          break
        else
          consonant.push a
        end
        x = consonant.length
        puts word[x, 30].capitalize + consonant.join("").downcase + "ay"
      end
    end
  end 
end 


PigLatinConverter.convert("apple")
PigLatinConverter.convert("pop")
PigLatinConverter.convert("Computer")
PigLatinConverter.convert("Elephant")
PigLatinConverter.convert("Quiet")
PigLatinConverter.convert("Three")



