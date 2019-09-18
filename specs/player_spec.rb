require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class PlayerTest < MiniTest::Test

  def setup
    @player_1 = Player.new("Les")
  end

  def test_player_has_name
    assert_equal("Les", @player_1.name)
  end

  def test_number_of_lives
    assert_equal(6, @player_1.lives)
  end

end
