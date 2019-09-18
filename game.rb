class Game
attr_reader :player

  def initialize(player, hidden_word)

    @player = player
    @hidden_word = hidden_word
    @guess_letters = []

  end

end
