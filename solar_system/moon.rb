# There are several types of bodies we're concerned about in our solar system:
# planets, stars (like our sun), and moons. We'll ignore asteroids and smaller
# planetoids (sorry Pluto).
#
# Each of our body types needs a class: Planet, Star, and Moon.
# All of these bodies have some similarities: they all have a name and a mass.
# So, let's also make them inherit from Body. They do have some unique qualities though.
#
# Moons:
#
# Have a month, which is the number of days it takes for the moon to orbit its
# planet. Again, this can either be Earth days or the planet's days, your choice.
# Have a planet that they orbit. We want to store the whole Planet object here.




require_relative 'body'

class Moon < Body

  def initialize(name, mass, moon_orbit_day, moon_orbit_planet)
    super(name, mass)
    @moon_orbit_day = moon_orbit_day
    @moon_orbit_planet = moon_orbit_planet
  end

  def moon_orbit_day
    @moon_orbit_day
  end

  def moon_orbit_planet
    @moon_orbit_planet
  end

end
