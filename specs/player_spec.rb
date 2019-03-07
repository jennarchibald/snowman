require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Rob")
  end

  def test_player_has_name
    assert_equal("Rob", @player1.name)
  end

  def test_player_has_lives
    assert_equal(6, @player1.lives)
  end

  def test_lose_a_life
    @player1.lose_a_life
    assert_equal(5, @player1.lives)
  end
end
