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

    @guess_1 = "e"

  end

  def test_game_has_player
    assert_equal(@player_1, @game_1.player)
  end

  def test_game_has_word
    assert_equal(@hidden_word_1, @game_1.hidden_word)
  end

  def test_guess_passed_to_hidden_word
    @game_1.pass_guess(@guess_1)
    assert_equal("e", @hidden_word_1.guess)
  end

  def test_guessed_letter_has_been_stored
    @game_1.store_guess(@guess_1)
    assert_equal(["3"], @game_1.guessed_letters)
  end


end
