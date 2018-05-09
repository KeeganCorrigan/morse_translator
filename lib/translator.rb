require 'pry'

class Translator


  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(text_to_translate)
    morse_code_translated_array = []
    english_text_array = []
    english_text_array = text_to_translate.downcase.split('')
    english_text_array.each do |letter|
      morse_code_translated_array << @dictionary[letter]
    end
    morse_code_translated_array.join
  end

  def from_file(file_input)
    file_input_array = []
    File.open("./lib/#{file_input}", "r") do |f|
      f.each_line do |line|
        file_input_array << line.split('')
      end
    end
end



File.open("./lib/input.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end

# file = File.open("input.txt", "r")
# contents = file.read
# puts contents
### Iteration 2
# Translate English to Morse Code
# * from a file
#
# ```
# # in input.txt
# I am in a file
# ```
#
# ```ruby
#   $ translator = Translate.new
#   => #<Translate:0x007fa1ab98cac0>
#   $translator.from_file("input.txt")
#   => ".. .--- ..-. .- ..-....-..."
# ```
