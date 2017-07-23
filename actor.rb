class Actor
  attr_accessor :name, :films

  def initialize(name)
    @name = name
    @films = []
  end

  def degrees
    radi = [{0 => @films}]
    return radi
  end
end
