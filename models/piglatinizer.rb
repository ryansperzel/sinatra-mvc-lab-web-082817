require 'pry'

class PigLatinizer
  attr_reader :input

  def to_pig_latin(string)
      string = string.split(" ")
      string.map do |word|
        vowels = ["a", "e", "i", "o", "u"]
        if word[0].downcase == "i" || word[0].downcase == "e" || word[0].downcase == "a" || word[0].downcase == "o" || word[0].downcase == "u"
          word = word + "way"
        else
          until vowels.include?(word[0])
            letter = word[0]
            word.slice!(0)
            word += letter
          end
          word + "ay"
        end
      end.join(" ")


  end


  def piglatinize(string)
    vowels = ["a", "e", "i", "o", "u"]
    if string[0].downcase == "i" || string[0].downcase == "e" || string[0].downcase == "a" || string[0].downcase == "o" || string[0].downcase == "u"
      string = string + "way"
    else
      until vowels.include?(string[0])
        letter = string[0]
        string.slice!(0)
        string += letter
      end
      string + "ay"
    end
  end


end
