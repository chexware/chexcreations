require 'test_helper'

class ThoughtsControllerTest < ActionDispatch::IntegrationTest
  test "should get load_all" do
    get '/thoughts'
    assert_response :success
  end
  
  test "should get new thought page" do
    get '/thoughts/new'
    assert_response :success
  end
  
  test "should create new thought" do
    post '/thoughts/new', params: { title: "Test", content: "Test Content", publish_date: "2017-07-04 18:34:04"}
    assert_response(302)
  end
  
  test "should get thought page" do
    get '/thoughts/1'
    assert_response :success
  end
  
  test "should get thought edit page" do
    get '/thoughts/1/edit'
    assert_response :success
  end
  
  test "should update thought" do
    post '/thoughts/1/edit', params: { title: "TestU", content: "Test Content", publish_date: "2017-07-04 18:34:04"}
    assert_response(302)
  end
  
  test "should delete thought" do
    post '/thoughts/1/delete'
    assert_response(302)
  end
  
  test "should create new comment" do
    post '/thoughts/1/comment', params: { title: "TestC", content: "Test Content", thought_id: 1, publish_date: "2017-07-04 18:34:04"}
    assert_response(302)
  end
  
  test "should delete comment" do
    post '/thoughts/1/comment/1/delete'
    assert_response(302)
  end
  

end
