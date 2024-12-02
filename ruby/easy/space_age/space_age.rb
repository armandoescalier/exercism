class SpaceAge
  def initialize(age_in_seconds)
    @earth_age = age_in_seconds.to_f / 31557600
  end

  def on_earth = calculate_space_age

  def on_mercury = calculate_space_age(0.2408467)

  def on_venus = calculate_space_age(0.61519726)

  def on_mars = calculate_space_age(1.8808158)

  def on_jupiter = calculate_space_age(11.862615)

  def on_saturn = calculate_space_age(29.447498)

  def on_uranus = calculate_space_age(84.016846)

  def on_neptune = calculate_space_age(164.79132)

  private

  def calculate_space_age(orbital_period_on_earth_days = 1)
    @earth_age / orbital_period_on_earth_days
  end
end
