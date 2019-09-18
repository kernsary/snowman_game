require('minitest/autorun')
require('minitest/rg')
require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../hidden_word.rb')

class GameTest < MiniTest::Test

  def setup

    @player_1 = Player.new("Les")

    @hidden_word_1 = HiddenWord.new("Hidden")

    @game_1 = Game.new(@player_1, @hidden_word_1)

  end

  def test_game_has_player
    assert_equal(@player_1, @game_1.player)
  end


end
