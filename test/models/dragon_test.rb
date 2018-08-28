require '../test_helper'

class DragonTest < ActiveSupport::TestCase

  def test_that_dragon_shoots_fire
    dragon = build(:dragon)
    assert_equal( "#{dragon.name} emits a jet of flame!", dragon.dracarys )
  end

  def test_that_normal_dragon_cannot_eat_forty_sheep
    dragon = build(:dragon)
    refute( dragon.can_eat_40_sheep? )
  end

  def test_that_insatiable_dragon_can_eat_forty_sheep
    hungry_dragon = build(:dragon, appetite: 'Insatiable')
    assert( hungry_dragon.can_eat_40_sheep? )
  end

  def test_that_young_dragons_from_asoiaf
    # use your knowledge of factories to make this test pass!
    young_dragon = nil
    young_dragon = build(:dragon, age: 2)

    # not allowed to change the assert statement!
    skip unless young_dragon
    assert_equal( 'A Song of Ice and Fire', young_dragon.period_alive)
  end

  def test_that_middle_dragons_from_targ_dynasty
    # use your knowledge of factories to make this test pass!
    middle_dragon = nil
    middle_dragon = build(:dragon, age: 30)

    # not allowed to change the assert statement!
    skip unless middle_dragon
    assert_equal( 'Targaryen Dynasty', middle_dragon.period_alive)
  end

  def test_that_ancient_dragons_from_age_of_valyria
    # use your knowledge of factories to make this test pass!
    ancient_dragon = nil
    ancient_dragon = build(:dragon, age: 420)


    # not allowed to change the assert statement!
    skip unless ancient_dragon
    assert_equal( 'Age of Valyria', ancient_dragon.period_alive)
  end

  def test_that_stranger_cannot_mount
    # use your knowledge of factories to make this test pass!
    dragon = nil
    dragon = build(:dragon, name: "Balerion")

    rider = nil
    rider = build(:rider, name: "Aegon")


    # not allowed to change the assert statement!
    skip unless rider && dragon
    assert_equal("Balerion bucks off Aegon!", dragon.mount(rider))
  end

  def test_that_the_right_rider_can_mount
    # use your knowledge of factories to make this test pass!
    # Note: you'll need to do more than just supply the right names...
    # Hint: you can pass variables as properties too, not just strings!
    rider = nil
    dragon = nil
    rider = build(:rider, name: "Aegon")
    dragon = build(:dragon, name:"Balerion")
    # Keeps expecting the rider_ID rather than the string when adding rider.

    # not allowed to change the assert statement!
    skip unless rider && dragon
    assert_equal("Aegon soars into the air on Balerion's back!", dragon.mount(rider))
  end

end
