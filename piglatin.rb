
class PigLatinConverter

  attr_accessor :vowels, :consonant, :word

  def initialize
    @word = word
    @vowels = %w[a e i o u]
    @consonant = []
  end

  def user_interaction
    puts "\e[H\e[2J"
    puts ""
    puts "----------------------------------"
    puts "Welcome to the Pig Latin Converter"
    puts "----------------------------------"
    puts "\n\n"
    puts "What word do you want to convert?"
    @word = gets.chomp
    valid_word(@word)
  end

  def valid_word(word)
    case @word
    when nil
      puts "Not a valid word"
    when ""
      puts "Not a valid word"
    else
      starts_with_a_vowel(@word)  
    end
  end

  def starts_with_a_vowel(word)
    word = word.downcase
    if word.start_with?("a", "e", "i", "o", "u") 
      display(word)
    else
      converter(word)
    end
  end

  def converter(word)
    @word.each_char do |a|
      if vowels.include? a
        break
      else
        consonant.push a
      end
      x = consonant.length
      end_of_word = word[x..-1].capitalize
      first_consonant_set = consonant.join("").downcase
      @word = end_of_word + first_consonant_set + "ay"
      display(word)
    end
  end 

  def display(word)
    puts "Calculating......"
    puts "......."
    puts "\n\n"
    puts "Got it: #{word.capitalize}"
    puts "\n\n"
  end
end 

# PigLatinConverter.new.user_interaction




