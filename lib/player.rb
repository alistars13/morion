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