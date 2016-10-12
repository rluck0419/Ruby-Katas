class SpaceAge
  attr_reader :seconds
    SECONDS_IN_EARTH_YEAR = (60 * 60 * 24 * 365.25).to_f
    ORBITAL_PERIODS = { mercury: 0.2408467,
                        venus:   0.61519726,
                        earth:   1,
                        mars:    1.8808158,
                        jupiter: 11.862615,
                        saturn:  29.447498,
                        uranus:  84.016846,
                        neptune: 164.79132 }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  ORBITAL_PERIODS.each do |planet, orbital_period|
    define_method "on_#{planet}" do
      earth_years / orbital_period
    end
  end

  private

  def earth_years
    @seconds / SECONDS_IN_EARTH_YEAR
  end
end
