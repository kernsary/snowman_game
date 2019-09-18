require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word.rb')
require_relative('../game.rb')
require_relative('../player.rb')

class HiddenWordTest < MiniTest::Test

def setup

@hidden_word_1 = HiddenWord.new("Hidden")

@player_1 = Player.new("Les")

@game_1 = Game.new(@player_1, @hidden_word_1)


end


end
