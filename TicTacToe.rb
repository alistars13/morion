class Board
  #creation du plateau
  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end
#ennoncé des regles
  def rules
    print "\n"*3
    puts "     Tic Tac Toe <3 ",
         "    pick a number to",
         "     put you sign in  ",
         "    the related box ! "

    print "\n"

    puts "        1 | 2 | 3 ",
         "       -----------",
         "        4 | 5 | 6 ",
         "       -----------",
         "        7 | 8 | 9 "

    print "\n"*3#pour aerer
  end

  def show_board
    (0..2).each do |row|
      print "        "
      (0..2).each do |column|
        print @board[row][column]
        print " | " unless column == 2
      end
      print "\n"#pour aerer
      print "        ---------\n" unless row == 2
    end
    print "\n"*3#pour aerer
  end
def verify_winner
    @left_top = @board[0][0]
    @middle_top = @board[0][1]
    @right_top = @board[0][2]
    @middle_left = @board[1][0]
    @middle_middle = @board[1][1]
    @middle_right = @board[1][2]
    @bottom_left = @board[2][0]
    @bottom_middle = @board[2][1]
    @bottom_right = @board[2][2]
  if  @left_top == 'O' && @middle_top == 'O' && @right_top == 'O' || @middle_left == 'O' && @middle_middle == 'O' && @middle_right == 'O' || @bottom_left == 'O' && @bottom_middle == 'O' && @bottom_right == 'O' || @left_top == 'O' && @middle_left == 'O' && @bottom_left == 'O' || @middle_top == 'O' && @middle_middle == 'O' && @bottom_middle == 'O' || @right_top == 'O' && @middle_right == 'O' && @bottom_right == 'O' || @left_top == 'O' && @middle_middle == 'O' && @bottom_right == 'O' || @right_top == 'O' && @middle_middle == 'O' && @bottom_left == 'O' || @left_top == 'X' && @middle_top == 'X' && @right_top == 'X' || @middle_left == 'X' && @middle_middle == 'X' && @middle_right == 'X' || @bottom_left == 'X' && @bottom_middle == 'X' && @bottom_right == 'X' || @left_top == 'X' && @middle_left == 'X' && @bottom_left == 'X' || @middle_top == 'X' && @middle_middle == 'X' && @bottom_middle == 'X' || @right_top == 'X' && @middle_right == 'X' && @bottom_right == 'X' || @left_top == 'X' && @middle_middle == 'X' && @bottom_right == 'X' || @right_top == 'X' && @middle_middle == 'X' && @bottom_left == 'X'
    return "you win"
  else
  return "nobody_win" unless @board.join.split('').include?(" ") #no more free space = nobody win
  return "keep_playing" #if no winner, return this string that is used for the while loop
  end
end
def print_position(character_O_or_X, row, column) #define the position of the character_O_or_X
  @board[row][column] = character_O_or_X if (0..2) === row &&
                              (0..2) === column &&
                              @board[row][column] == " "
end
end

board = Board.new
board.rules
player = "X"

while board.verify_winner == "keep_playing"
  puts " #{player}'s has to select one free",
       "   space between 1 and 9"
  print "free space n° > "
  place_character = gets.chomp.to_i - 1
    print "\n"*3#pour aerer
  row = place_character / 3 #position of the row
  column = place_character % 3 #modulo to get the position of the column

  if board.print_position(player, row, column)#utilise la methode print position et remplace "character_O_or_X" par le nom de l'utilisateur soit X ou O
    if player == "X"
      player = "O"
    else
      player = "X"
    end
  else
    puts "Wrong input, try a free space or a number between 1 and 9 !" #condition de la methode print position renvoie False alors message apparait
  end

  board.show_board
end

winner = board.verify_winner

  if winner == "nobody_win"
    puts "NOBODY WIN, TRY AGAIN "
  elsif winner == "you win"
    puts "___________________________"
    puts " Congratulation YOU  WIN  ! "
    puts "---------------------------"
  end
  print "\n"*3 #pour aerer
