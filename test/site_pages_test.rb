require_relative 'test_helper'

class SpreedlyAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal 'Spreedly Airlines | Home', title_content
    assert doc(last_response).at_css('nav')
  end

  def test_result
    get '/result'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal 'Spreedly Airlines | Result', title_content
  end

  def test_spreedly
    get '/spreedly'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal 'Spreedly Airlines | Spreedly', title_content
  end
end
