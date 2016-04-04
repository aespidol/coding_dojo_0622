require_relative "human"

class Wizard < Human
  attr_accessor :health, :intelligence
  
  def initialize
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end
end