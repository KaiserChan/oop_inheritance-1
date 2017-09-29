require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def setup
    @language = Multilinguist.new
  end

  def test_language_in_french
    assert_equal 'fr', @language.language_in("france")
  end

  def test_language_in_german
    assert_equal 'de', @language.language_in("germany")
  end

  def test_language_in_japan
    refute_equal 'ja', @language.language_in("italy")
  end
end
