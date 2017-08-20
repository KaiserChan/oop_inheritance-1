#We'll also need a class to represent the various celestial bodies. We'll call
#it Body. Each of them will need a name and a mass. Let's make these read-only;
#we'll assign them when we create the body.

class Body

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


# def self.create (name, mass)
#   new_body = Body.new(name, mass)
#   @@bodies << new_body
#   @@bodies
# end


# mars = Body.new ("mars")
# puts mars.body

# mars = Body.create("Mars", 250_000)
# puts mars.inspect
#
# jupiter = Body.create("Jupiter", 5_000_000)
# puts jupiter.inspect
#
# mk298 = Body.create("mk298", 100_000_000)
# puts mk298.inspect
