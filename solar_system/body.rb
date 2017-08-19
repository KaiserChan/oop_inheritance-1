require_relative 'system'

class Body
  #
  # def self.create(name, mass)
  #
  # end


  def initialize(name, mass)
    @name = name
    @mass = mass
  end


  def name
    @name
  end

  def mass
    @mass
  end

end
