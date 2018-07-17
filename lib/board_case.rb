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