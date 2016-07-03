require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  test 'should get new' do
    get signup_path
    assert_response :success
  end
end
