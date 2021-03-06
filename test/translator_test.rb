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

  def test_iteration_2_eng_to_morse_from_file
    translator = Translator.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_iteration_3_morse_code_to_english
    translator = Translator.new
    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
