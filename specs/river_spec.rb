require("minitest/autorun")
require_relative("../river")
require_relative("../fish")
require_relative("../bears")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon",["Sleepy", "Dopey", "Jaws"])
    @bear = Bears.new("Yogi")
  end

  def test_count_fish()
    number = @river.count_fish
    assert_equal(3, number)
  end

 def test_looses_fish()
   @river.looses_fish("Sleepy")
   left = @river.fish
   assert_equal(2, @river.fish().count)
 end

 def test_bear_eats_fish
   @bear.eats_fish("Jaws")
   @river.looses_fish("Jaws")

   assert_equal(1, @bear.stomach().count)
   assert_equal(2, @river.fish().count)
 end

end

def method_name

end
