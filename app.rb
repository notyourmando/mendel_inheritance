require 'bundler' # using ruby to require a gem
Bundler.require # load all the gems in the gemfile

class Peaplant

  attr_accessor :seeds, :meta

  # when the plant germinates
  def initialize(flower_color, *meta)
    @flower_color = flower_color
    @@seeds = true
    @meta = meta
  end

  def to_s
    "A simple plea plant with #{@flower_color} flowers."
  end

end

class MutantPeaplant < Peaplant # Inheritance

end

class SpaceStationPeaPlant < Peaplant

  attr_accessor :flower_color

  def absorb_radiation(amount)
    @flower_color = 'translucent and majical in space'
  end

end

white_flower_pea_plant = Peaplant.new('white')
p white_flower_pea_plant
p white_flower_pea_plant.to_s
magenta_flower_pea_plant = Peaplant.new('magenta')
p magenta_flower_pea_plant
p magenta_flower_pea_plant.to_s
purple_flower_pea_plant = Peaplant.new('purple')
p purple_flower_pea_plant
p purple_flower_pea_plant.to_s
horrific_green_pea_plant = MutantPeaplant.new('terribe, ugly green')
p horrific_green_pea_plant.to_s
space_plant = SpaceStationPeaPlant.new('purple')
p space_plant.flower_color
space_plant.absorb_radiation(9000000000000)
p space_plant.to_s
