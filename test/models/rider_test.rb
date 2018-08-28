require '../test_helper'

class RiderTest < ActiveSupport::TestCase

  def test_that_riders_swing
    # Use your knowledge of factories to make the test pass!
    # this time use create( ... ) instead of build
    aegon = nil
    daenerys = nil
    aegon = create(:rider, name: "Aegon", sword: "Blackfyre")
    daenerys = create(:rider, name: "Daenerys", sword: "Lightbringer")

    binding.pry

    # can't change the assert_ statements!
    skip unless aegon && daenerys
    assert_equal('Daenerys brings Lightbringer crashing down!', daenerys.swing)
    assert_equal('Aegon brings Blackfyre crashing down!', aegon.swing)
  end

end
