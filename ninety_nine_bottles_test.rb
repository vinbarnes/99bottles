require "minitest/autorun"
require "minitest/pride"
require "./ninety_nine_bottles"

class NinetyNineBottlesTest < Minitest::Unit::TestCase
  def bottle
    @bottle ||= NinetyNineBottles.new
  end

  def setup
    bottle
  end

  def teardown
    @bottle = nil
  end

  def test_simple_case
    expected =
      "6 bottles of beer on the wall, 6 bottles of beer.\n" +
      "Take one down and pass it around, 5 bottles of beer on the wall.\n"
    assert_equal expected, bottle.song(6)
  end

  def test_pluralization
    expected =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    assert_equal expected, bottle.song(2)
  end

  def test_last_case
    expected =
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take one down and pass it around, no more bottles of beer on the wall.\n"
    assert_equal expected, bottle.song(1)
  end

  def test_reset_case
    expected =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    assert_equal expected, bottle.song(0)
  end

  def test_a_group
    expected =
      "6 bottles of beer on the wall, 6 bottles of beer.\n" +
      "Take one down and pass it around, 5 bottles of beer on the wall.\n" +
      "5 bottles of beer on the wall, 5 bottles of beer.\n" +
      "Take one down and pass it around, 4 bottles of beer on the wall.\n" +
      "4 bottles of beer on the wall, 4 bottles of beer.\n" +
      "Take one down and pass it around, 3 bottles of beer on the wall.\n"
    assert_equal expected, bottle.song(6, 3)
  end
end
