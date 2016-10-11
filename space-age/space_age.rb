class SpaceAge
  attr_reader :seconds
    SECONDS_IN_EARTH_YEAR = (60 * 60 * 24 * 365.25).to_f.freeze
    ORBITAL_PERIODS = { mercury: 0.2408467,
                        venus:   0.61519726,
                        earth:   1,
                        mars:    1.8808158,
                        jupiter: 11.862615,
                        saturn:  29.447498,
                        uranus:  84.016846,
                        neptune: 164.79132 }.freeze

    def initialize(seconds)
      @seconds = seconds.to_f.freeze
    end

  def earth_years
    @seconds / SECONDS_IN_EARTH_YEAR
  end
end
