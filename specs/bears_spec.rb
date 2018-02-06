require("minitest/autorun")
require_relative("../bears")
require_relative("../river")
require_relative("../fish")


class BearsTest < MiniTest::Test

  def setup
    @bear = Bears.new("Yogi")
  end

  def test_bear_eats_fish()
    @bear.eats_fish(" ")
    assert_equal(1, @bear.stomach().count)
  end


end
