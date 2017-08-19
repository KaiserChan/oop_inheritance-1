class System

  @@bodies = []

  def initialize
    @bodies
  end

  def bodies
    @bodies
  end

  def add(name, mass)
    @bodies << names
    @total_mass << mass
  end

  def total_mass
    @total_mass.sum
  end

  def system
    @@planets + @@stars
  end
end





class Planet < Body

  @@planets = []

  def self.create(planet_name, planet_mass, planet_rotate_day, planet_orbit_year)
    planet = Planet.new(planet_name, planet_mass, planet_rotate_day, planet_orbit_year)
    @@planets << planet
    @@planets
  end

  def initialize(planet_name, planet_mass, planet_rotate_day, planet_orbit_year)
    @planet_name = planet_name
    @planet_mass = planet_mass
    @planet_rotate_day = planet_rotate_day
    @planet_orbit_year = planet_orbit_year
  end

  def planets
    @@planets
  end

  def planet_name
     @planet_name
  end

  def planet_mass
    @planet_mass
  end

  def planet_rotate_day
    @planet_rotate_day
  end

  def planet_orbit_year
    @planet_orbit_year
  end

end


class Star < Body

  @@stars = []

  def self.create(star_name, star_mass, star_type)
    star = Star.new(star_name, star_mass, star_type)
    @@stars << star
    @@stars
  end

  def initialize(star_name, star_mass, star_type)
    @star_name = star_name
    @star_mass = star_mass
    @star_type = star_type
  end

  def stars
    @@stars
  end

  def star_name
    @star_name
  end

  def star_mass
    @star_mass
  end

  def star_type
    @star_type
  end

end


class Moon < Body

end

# solar_system = System.new
# solar_system.add("Mars", 2000)
# solar_system.add("MI-298", 250_000)

# puts solar_system.inspect
# puts solar_system.bodies
# puts solar_system.total_mass

mars = Planet.create("Mars", 250_000, 60, 800)
puts mars.inspect

sun = Star.create("Sun", 1_000_000, "G-Type")
puts sun.inspect
