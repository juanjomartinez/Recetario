require 'test_helper'

class SesionesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    post :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
		assert_redirected_to recetas_path
  end

end
