class River

  attr_reader :name, :fish

  def initialize (name, fish = [])
    @name = name
    @fish = fish
  end

  def count_fish
    return @fish.count
  end

  def looses_fish(name)
    @fish.delete(name)
    return @fish
  end

  def bear_eats_fish(fish)
    bear.eats_fish(fish)
    looses_fish
  end
end
