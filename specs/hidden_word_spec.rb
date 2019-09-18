require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word.rb')
require_relative('../game.rb')
require_relative('../player.rb')

class HiddenWordTest < MiniTest::Test

  def setup

    # @hidden_word_1 = HiddenWord.new("Hidden", "e")
    #
    # @hidden_word_2 = HiddenWord.new("Hidden", "z")

    @player_1 = Player.new("Les")

    @game_1 = Game.new(@player_1, @hidden_word_1)


  end

  def test_hidden_word_has_word
    assert_equal("Hidden", @hidden_word_1.word)
  end

  def test_hidden_word_has_displayed_word
    assert_equal("******", @hidden_word_1.displayed_word)
  end

  # def test_hidden_word_true_false__true
  #   assert_equal(true, @hidden_word_1.check_letter_included())
  # end
  #
  # def test_hidden_word_true_false__false
  #   assert_equal(false, @hidden_word_2.check_letter_included())
  # end
end
