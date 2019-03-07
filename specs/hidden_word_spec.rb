require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../player")
require_relative("../game")

class TestHiddenWord < MiniTest::Test

  def setup
    @hiddenword1 = HiddenWord.new("Frosty the Snowman")
    @player1 = Player.new("Rob")
    @game1 = Game.new(@player1, @hiddenword1)
  end

  def test_hidden_word_has_word
    assert_equal("frosty the snowman", @hiddenword1.show_word)
  end

  def test_hidden_word_has_display
    assert_equal("****** *** *******", @hiddenword1.show_display)
  end

  def test_does_letter_appear__true
    assert_equal(true, @hiddenword1.does_letter_appear("f"))
  end
  def test_does_letter_appear__false
    assert_equal(false, @hiddenword1.does_letter_appear("x"))
  end

  def test_reveal_letter
    assert_equal("***s** *** s******", @hiddenword1.reveal_letter("s"))
  end



end
