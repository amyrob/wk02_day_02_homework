class Bears

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eats_fish(fish)
    @stomach.push(fish) if !fish.nil?
  end


end
