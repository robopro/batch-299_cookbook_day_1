class Bottle
  # STATE AND BEHAVIOR
  @@serials = []

  def initialize(color, volume)
    @color = color
    @volume = volume
    @filled = false
    @@serials << @@serials.size + 1
  end

  def fill
    @filled = true
  end

  #attr_reader :color
  def color
    return @color
  end

  def self.serials
    p @@serials
  end
end

bottle1 = Bottle.new("green", 50)
bottle2 = Bottle.new("brown", 33)

p bottle1

Bottle.serials

