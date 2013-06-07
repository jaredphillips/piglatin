
class PigLatinConverter
  def self.convert(word)
    letter = word[0].downcase!
    vowels = %w[a e i o u]
    consonant = []
    word.each_char do |a|
      if vowels.include? a
        puts word
      else
        consonant.push a
        x = consonant.length
        puts word[x, 100].capitalize + consonant.join("").downcase + "ay"
      end
    end   
  end 
end 

PigLatinConverter.convert("Apple")
PigLatinConverter.convert("Pop")
PigLatinConverter.convert("Computer")
PigLatinConverter.convert("Elephant")
PigLatinConverter.convert("Quiet")
PigLatinConverter.convert("Three")



