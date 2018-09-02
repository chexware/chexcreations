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
  
  test "should get new project page" do
    get '/projects/new'
    assert_response :success
  end
  
  test "should create new project" do
    post '/projects/new', params: { title: "Test", type: "Art", link: "#" }
    assert_response(200)
  end
  
  test "should get edit project page" do
    get '/projects/4/edit'
    assert_response :success
  end
  
  test "should update existing project" do
    post '/projects/4/edit', params: { title: "Test", type: "Art", link: "#" }
    assert_response(200)
  end
  
   test "should delete project" do
    post '/projects/3/delete'
    assert_response(302)
  end
  
 

end
