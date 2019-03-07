class HiddenWord

  def initialize(word)
    @word = word.downcase
    @display = []
    for char in word.chars
      if char != " "
        @display << "*"
      else
        @display << " "
      end
    end
  end

  def show_word
    return @word
  end

  def show_display
    return @display.join
  end

  def does_letter_appear(letter)
    @word.chars.include?(letter.downcase)
  end

  def reveal_letter(letter)

    guessed_letter = letter.downcase

    word = @word.chars

    indexes = []
    for character in word

      if guessed_letter == character
        @display[word.index(character)] = character
        word[word.index(character)] = "*"
      end

    end
     p indexes
    @display.join

  end

  


end
