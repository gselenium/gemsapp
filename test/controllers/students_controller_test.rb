require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get student_new" do
    get :student_new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end