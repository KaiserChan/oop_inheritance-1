# There are several types of bodies we're concerned about in our solar system:
# planets, stars (like our sun), and moons. We'll ignore asteroids and smaller
# planetoids (sorry Pluto).
#
# Each of our body types needs a class: Planet, Star, and Moon.
# All of these bodies have some similarities: they all have a name and a mass.
# So, let's also make them inherit from Body. They do have some unique qualities though.
#
# Planets:
#
# Have a day, which is the number of hours it takes for the planet to rotate all
# the way around once.
#
# Have a year, which is the number of days it takes for the planet to orbit the
# sun once. Whether you want to express this in Earth days or the planet's days is up to you.

# require_relative 'system'
require_relative 'body'

class Planet < Body

  def initialize(name, mass, planet_rotate_day, planet_orbit_year)
    super(name, mass)
    @planet_rotate_day = planet_rotate_day
    @planet_orbit_year = planet_orbit_year
  end

    def planet_rotate_day
    @planet_rotate_day
  end

  def planet_orbit_year
    @planet_orbit_year
  end

end
  # @@planets = []

  # def self.create(name, mass, planet_rotate_day, planet_orbit_year)
  #   new_body = Planet.new(name, mass, planet_rotate_day, planet_orbit_year)
  #   @@bodies << new_body
  #   @@bodies
  # end
#
#   def initialize(planet_name, planet_mass, planet_rotate_day, planet_orbit_year)
#     @planet_name = planet_name
#     @planet_mass = planet_mass
#     @planet_rotate_day = planet_rotate_day
#     @planet_orbit_year = planet_orbit_year
#   end
#
#   def planets
#     @@planets
#   end
#
#   def planet_name
#      @planet_name
#   end
#
#   def planet_mass
#     @planet_mass
#   end
#
#   def planet_rotate_day
#     @planet_rotate_day
#   end
#
#   def planet_orbit_year
#     @planet_orbit_year
#   end
#
# end
