require_relative 'player.rb'
require_relative 'board.rb'

class BoardCase

    #la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :valeur
    attr_accessor :num_case
  
  def initialize (num_case=" ", valeur=" ")
    #doit régler sa valeur, ainsi que son numéro de case
    @num_case = num_case
    @valeur = valeur

  end
  
  def to_string
    #TO DO : doit renvoyer la valeur au format string
    @num_case = @num_case.to_s
    @valeur = @valeur.to_s
  end

end





class Board
  include Enumerable

    attr_accessor :grid

  def initialize
    @grid = []
     #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe

    @@cases1 = BoardCase.new(1, "1")
    @@cases2 = BoardCase.new(2, "2")
    @@cases3 = BoardCase.new(3, "3")
    @@cases4 = BoardCase.new(4, "4")
    @@cases5 = BoardCase.new(5, "5")
    @@cases6 = BoardCase.new(6, "6")
    @@cases7 = BoardCase.new(7, "7")
    @@cases8 = BoardCase.new(8, "8")
    @@cases9 = BoardCase.new(9, "9")

    to_string2

  end


  def to_string2

    @grid = [[@@cases1.valeur,@@cases2.valeur,@@cases3.valeur],[@@cases4.valeur,@@cases5.valeur,@@cases6.valeur],[@@cases7.valeur,@@cases8.valeur,@@cases9.valeur]]
    puts @grid.map { |a| a.map { |i| i.to_s.rjust(3) }.join }

    play

  end



  def play 

    puts "Où voulez-vous jouer?"
    @entrer = gets.chomp.to_i

          case @entrer

              when 1
                @@cases1.valeur = "X"
                victory?
              when 2
                @@cases2.valeur = "X"
                victory?
              when 3
                @@cases3.valeur = "X"
                victory?
              when 4
                @@cases4.valeur = "X"
                victory?
              when 5
                @@cases5.valeur = "X"
                victory?
              when 6
                @@cases6.valeur = "X"
                victory?
              when 7
                @@cases7.valeur = "X"
                victory?
              when 
                @@cases8.valeur = "X"
                victory?
              when 9
                @@cases9.valeur = "X"
                victory?
          end

        to_string2

  end

  def victory? 
      if  @@cases1.valeur == 'O' && @@cases2.valeur == 'O' && @@cases3.valeur == 'O' || 
          @@cases4.valeur == 'O' && @@cases5.valeur == 'O' && @@cases6.valeur == 'O' || 
          @@cases7.valeur == 'O' && @@cases8.valeur == 'O' && @@cases9.valeur == 'O' || 
          @@cases1.valeur == 'O' && @@cases4.valeur == 'O' && @@cases7.valeur == 'O' || 
          @@cases2.valeur == 'O' && @@cases5.valeur == 'O' && @@cases8.valeur == 'O' || 
          @@cases3.valeur == 'O' && @@cases6.valeur == 'O' && @@cases9.valeur == 'O' || 
          @@cases1.valeur == 'O' && @@cases5.valeur == 'O' && @@cases9.valeur == 'O' || 
          @@cases3.valeur == 'O' && @@cases5.valeur == 'O' && @@cases7.valeur == 'O' || 
          @@cases1.valeur == 'X' && @@cases2.valeur == 'X' && @@cases3.valeur == 'X' || 
          @@cases4.valeur == 'X' && @@cases5.valeur == 'X' && @@cases6.valeur == 'X' || 
          @@cases7.valeur == 'X' && @@cases8.valeur == 'X' && @@cases9.valeur == 'X' || 
          @@cases1.valeur == 'X' && @@cases4.valeur == 'X' && @@cases7.valeur == 'X' || 
          @@cases2.valeur == 'X' && @@cases5.valeur == 'X' && @@cases8.valeur == 'X' || 
          @@cases3.valeur == 'X' && @@cases6.valeur == 'X' && @@cases9.valeur == 'X' || 
          @@cases1.valeur == 'X' && @@cases5.valeur == 'X' && @@cases9.valeur == 'X' || 
          @@cases3.valeur == 'X' && @@cases5.valeur == 'X' && @@cases7.valeur == 'X'

        puts "---------------------"
        puts "YOU WIN"
        puts "---------------------"
        Game.new

      end
  end
end







class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
    attr_accessor :names
    attr_accessor :valeur
    attr_writer :win

  
  def initialize (names,valeur,win=false)
    @names = names
    @valeur = valeur
    @win
  end

end



class Game
  def initialize

    puts "Bienvenue dans mon jeu Tic Tac Toe!"

    puts "JOUEUR 1, veuillez entrer votre blaz:"
    @player_name1 = gets.chomp.to_s
    @joueur1=Player.new(@player_name1,"X")

    puts "JOUEUR 2, veuillez entrer votre blaz:"
    @player_name2 = gets.chomp.to_s
    @joueur2=Player.new(@player_name2,"O")

    go

  end

  def go
    Board.new
    turn
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end
    
                        

end

Game.new
