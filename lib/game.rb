
class Game
  def initialize

    Player.new
    Board.new

  end

  def go
# TO DO : lance la partie
  end

  def turn

    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    @grid
    puts "quel nombre veux tu choisir"
    @place_character = gets.chomp.to_i - 1
  end

end

Game.new.go
