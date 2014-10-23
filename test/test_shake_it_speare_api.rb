require 'bundler'
Bundler.require

require_relative "../controllers/shake_it_speare_api"
require "minitest/autorun"

SHAKESPEARE=Minitest::Mock.new

class TestShakeItSpeareAPI < Minitest::Test
  include Capybara

  def setup
    @app = ShakeItSpeareAPI.new
    Capybara.app = @app
  end

  def test_sentence
    SHAKESPEARE.expect(:write_sentence, 'I am a sentence!')
    visit '/sentence'
    assert(JSON(page.body).keys.include?("sentence"))
  end
  def test_poem
    SHAKESPEARE.expect(:write_poem, 'I am a poem!')
    visit '/poem'
    assert(JSON(page.body).keys.include?("poem"))
  end
end
