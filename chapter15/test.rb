# 'gem "minitest"'
require 'minitest/unit'
require 'minitest/autorun'

class CardTest < MiniTest::Unit::TestCase
  def setup
    @deck = (1..52).each {|n| n*52}
    puts "setting up"
  end
    
  def test_deck_size
    puts "testing deck size: #{@deck.size}"
    assert_equal(52, @deck.size)
  end
end