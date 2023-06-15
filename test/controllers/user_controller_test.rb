require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do 
    get user_index_url 
    assert_response  :sucess 
  end 

  test "should get index" do 
    get user_create_url 
    assert_response :sucess
  end 

  test "should get index" do 
    get user_create_url 
    assert_response :sucess
  end 
end
