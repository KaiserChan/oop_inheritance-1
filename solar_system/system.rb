# First we'll need a class to represent the solar system. Let's call it System,
# and give it an attribute bodies. bodies will start as an empty array (ie. []).


 # Let's make bodies read-only, and give System an instance method called add
 # which will add a celestial body to the list. We'll also need an instance
 # method called total_mass which should add up the mass of all the bodies in
 # bodies, and return it.

require_relative 'planets'
require_relative 'stars'
require_relative 'moon'


class System

  @@bodies = []
  @@total_mass = []

  def initialize
   @@bodies = []
   @@total_mass = []
  end

  def bodies
    @@bodies
  end

  def add_body(new_body)
    @@bodies << new_body
  end

  # def add_mass(new_mass)
    # @@total_mass << new_mass
  # end

  def total_mass
    @@total_mass.sum
  end

end


m78_system = System.new

pk266 = Planet.new("PK-266", 250_000, 500, 3)
m78_system.add_body(pk266)
# m78_system.add_mass(250_000)

sl298 = Star.new("SL-298", 50_000_000, "Death Star")
m78_system.add_body(sl298)
# m78_system.add_mass(50_000_000)

mt337 = Moon.new("MT-337", 10_000, 180, "Rom-PI-946 ")
m78_system.add_body(mt337)
# m78_system.add_mass(10_000)

puts m78_system.bodies.inspect
puts m78_system.total_mass
