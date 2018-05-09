require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test
  def test_it_exists
    translator = Translator.new
    assert_instance_of(Translator, translator)
  end

  def test_eng_to_morse_for_iteration_0
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_eng_to_morse_for_iteration_1_case_insensitive_with_numbers
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end
end
