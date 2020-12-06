require 'minitest/autorun'
require 'minitest/pride'
require './lib/war_or_peace_runner'

class RunnerTest < Minitest::Test

  def test_normalize_value_converts_ranks_appropriately
    assert_equal 'Ace', normalize_value(1)
    assert_equal '5', normalize_value(5)
    assert_equal 'Queen', normalize_value(12)
  end

end

# can't run these tests but intersection is a cool comparator
# check that deck1 and deck2 don't share cards:
# intersection - assert_equal [], (deck1 & deck2)
