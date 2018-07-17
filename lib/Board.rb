require_relative 'boardcase.rb'
class Board
  include Enumerable

    attr_accessor :grid

  def initialize
    @grid = []
     #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe


    @cases1 = BoardCase.new(1, [0][0])

    @cases2 = BoardCase.new(2, [0][1])

    @cases3 = BoardCase.new(3, [0][0])

    @cases4 = BoardCase.new(4, [0][0])

    @cases5 = BoardCase.new(5, [0][0])

    @cases6 = BoardCase.new(6, [0][0])

    @cases7 = BoardCase.new(7, [0][0])

    @cases8 = BoardCase.new(8, [0][0])

    @cases9 = BoardCase.new(9, [0][0])

    @grid =
    [[@cases1.num_case,@cases2.num_case,@cases3.num_case],
    [@cases4.num_case,@cases5.num_case,@cases6.num_case],
    [@cases7.num_case,@cases8.num_case,@cases9.num_case]]

    to_string2

  end

  def to_string2
    place_character = gets.chomp.to_i - 1
    row = place_character / 3 #position of the row
    column = place_character % 3 #modulo to get the position of the column
    @grid[row][column]= "X"

    puts @grid.map { |a| a.map { |i| i.to_s.rjust(3) }.join }

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)


   place_character = gets.chomp.to_i - 1
   row = place_character / 3 #position of the row
   column = place_character % 3 #modulo to get the position of the column
  end

  def victory?
  end

end
Board.new
