require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
# class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = 'A Sample App'
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
end
