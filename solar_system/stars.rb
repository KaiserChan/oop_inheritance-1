# There are several types of bodies we're concerned about in our solar system:
# planets, stars (like our sun), and moons. We'll ignore asteroids and smaller
# planetoids (sorry Pluto).
#
# Each of our body types needs a class: Planet, Star, and Moon.
# All of these bodies have some similarities: they all have a name and a mass.
# So, let's also make them inherit from Body. They do have some unique qualities though.
#
# Stars:
#
# Have a type (ie. our Sun is a G-type star)






require_relative 'body'

class Star < Body

  def initialize(name, mass, star_type)
    super(name, mass)
    @star_type = star_type
  end

  def star_type
    @star_type
  end

end


  # def self.create(star_name, star_mass, star_type)
  #   star = Star.new(star_name, star_mass, star_type)
  #   @@stars << star
  #   @@stars
  # end
  #
  # def initialize(star_name, star_mass, star_type)
  #   @star_name = star_name
  #   @star_mass = star_mass
  #   @star_type = star_type
  # end
  #
  # def stars
  #   @@stars
  # end
  #
  # def star_name
  #   @star_name
  # end
  #
  # def star_mass
  #   @star_mass
  # end
  #
  # def star_type
  #   @star_type
  # end
