require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../player")
require_relative("../game")

class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Rob")
    @player2 = Player.new("Jenn")
    @hiddenword1 = HiddenWord.new("Frosty the Snowman")
    @hiddenword2 = HiddenWord.new("hello")

    @game1 = Game.new(@player1, @hiddenword1)
    @game2 = Game.new(@player1, @hiddenword1)

  end

  def test_game_has_player
    assert_equal(@player1, @game1.player)
  end

  def test_game_has_hidden_word
    assert_equal(@hiddenword1, @game1.hidden_word)
  end

  def test_game_has_guessed_letters
    assert_equal([], @game1.guessed_letters)
  end

  def test_store_letter
    @game1.store_letter("b")
    assert_equal(["b"], @game1.guessed_letters)
  end



  def test_make_guess__wrong
  result = @game1.make_guess("b")
  assert_equal(["b"], @game1.guessed_letters)
  assert_equal(5, @player1.lives)
  assert_equal(false, result)
  end

  def test_make_guess__correct
  result = @game1.make_guess("F", )
  assert_equal(["f"], @game1.guessed_letters)
  assert_equal(6, @player1.lives)
  assert_equal(true, result)
  end

  # def test_is_won
  #   assert_equal(true, @game1.is_won?)
  #   @game1.make_guess("f")
  #   @game1.make_guess("r")
  #   @game1.make_guess("o")
  #   @game1.make_guess("s")
  #   @game1.make_guess("t")
  #   @game1.make_guess("y")
  #   @game1.make_guess("h")
  #   @game1.make_guess("e")
  #   @game1.make_guess("n")
  #   @game1.make_guess("w")
  #   @game1.make_guess("m")
  #   @game1.make_guess("a")
  #   @game1.make_guess("m")
  #
  #   assert_equal(true, @game1.is_won?)
  # end

  # def test_is_lost
  # assert_equal(true, @game1.is_lost?)


  # assert_equal(true, @game1.is_lost?)
  # end

end
