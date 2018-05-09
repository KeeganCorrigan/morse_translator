require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test
  def test_it_exists
    translator = Translator.new
    assert_instance_of(Translator, translator)
  end

  def test_eng_to_morse_for_one_letter
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-.", translator.eng_to_morse("hello world")
  end
end
