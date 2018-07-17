

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
    attr_accessor :player_name1, :player_name2
    attr_accessor :valeur1, :valeur2
    attr_writer :win


  def initialize
    @player_name1 = nil
    @player_name2 = nil
    @valeur1 = nil
    @valeur2 = nil

    new_player
  end

  def new_player

    puts "Bienvenue dans mon jeu Tic Tac Toe!"
    puts "JOUEUR 1, veuillez entrer votre blaz:"
    @player_name1 = gets.chomp.to_s
    puts "Bonjour " +  @player_name1
    puts "Quel symbole choisis-tu ? (X ou O)"
    @valeur1 = gets.chomp.to_s.upcase


      while @valeur1 != "X" && @valeur1 != "O"
        puts "Tu as rentrés un mauvais symbole"
        puts "Quel symbole choisis-tu ? (X ou O)"
        @symbole1 = gets.chomp.to_s
      end

      if @valeur1 == "X"
        @valeur2 = "O"
      else
        @valeur2 = "X"
      end


    puts " JOUEUR 2, veuillez entrer votre blaz:"
    @player_name2 = gets.chomp.to_s
    puts "Bonjour " +  @player_name2
  end

end
