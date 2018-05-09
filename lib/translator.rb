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
    morse_code_translated_array = []
    file_text_array = []
    file_text = File.read("./lib/#{file_input}")
    file_text_array = file_text.downcase.split('')
    file_text_array.each do |letter|
      morse_code_translated_array << @dictionary[letter]
    end
    morse_code_translated_array.join
  end
end
