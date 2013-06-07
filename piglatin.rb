
class PigLatinConverter
  def self.convert(word)
    letter = word[0].downcase!
    vowels = %w[a e i o u]
    if letter == 'a'
      puts word
    elsif letter == 'e'
      puts word
    elsif letter == 'i'
      puts word
    elsif letter == 'o'
      puts word
    elsif letter == 'u'
      puts word
    else

      
      consonant = []
      word.each_char do |c|
        if vowels.include? c
          break
        else
          consonant.push c
        end
      end
      x = consonant.length
      puts word[x, 100].capitalize + consonant.join("").downcase + "ay"
    end 
  end 
end

PigLatinConverter.convert("Apple")
PigLatinConverter.convert("Pop")
PigLatinConverter.convert("Computer")
PigLatinConverter.convert("Elephant")
PigLatinConverter.convert("Quiet")
PigLatinConverter.convert("Three")