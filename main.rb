require './player'
require './game_manager'

player1 = Player.new("player1")
player2 = Player.new("player2")
game = GameManager.new(player1, player2)
game.start_game