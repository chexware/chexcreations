require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get load_art" do
    get '/art'
    assert_response :success
  end

  test "should get load_software" do
    get '/software'
    assert_response :success
  end

end
