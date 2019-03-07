class Game
  attr_reader :player, :hidden_word, :guessed_letters
  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def store_letter(letter)
    @guessed_letters << letter.downcase
  end

  def make_guess(letter)
    store_letter(letter)
    if @hidden_word.does_letter_appear(letter) == false
      @player.lose_a_life
    end
    return @hidden_word.does_letter_appear(letter)
  end


  # def is_won?
  #   if @hidden_word.all_guessed? == true  return true
  #     return false
  # end

  # def is_lost?(player)
  #   return true if player.lives == 0
  # end

end
