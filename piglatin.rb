
class PigLatinConverter

  attr_accessor :vowels, :consonant, :word

  def initialize
    @word = word
    @vowels = %w[a e i o u]
    @consonant = []
  end

  def user_interaction
    puts "----------------------------------"
    puts "Welcome to the Pig Latin Converter"
    puts "----------------------------------"
    puts "\n\n\n"
    puts "What word do you want to convert?"
    word = gets.chomp
    valid_word(word)
  end

  def valid_word(word)
    case word
    when nil
      puts "Not a valid word"
    when " "
      puts "Not a valid word"
    else
      converter(word)  
    end
  end



  def converter(word)
    word = word.downcase
    @vowels = %w[a e i o u]
    consonant = []
    if @vowels.include? word[0]
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
        puts end_of_word + first_consonant_set + "ay"
      end
    end
  end 
end 

PigLatinConverter.new.user_interaction




