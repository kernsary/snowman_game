class Game
  attr_reader :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)

    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []

  end

  def pass_guess(guess)
    @hidden_word.receive_guess(guess)
  end

  def store_guess(guess)
    @guessed_letters.push(guess)
  end

end
