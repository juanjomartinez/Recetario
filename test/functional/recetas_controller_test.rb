require 'test_helper'

class RecetasControllerTest < ActionController::TestCase
  setup do
    @receta = recetas(:one)
		@update = {
			:titulo => 'Prueba de titulo',
			:descripcion => 'Descripcion de pruebas',
			:codigo => 'Código de pruebas'
		}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recetas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receta" do
    assert_difference('Receta.count') do
      post :create, :receta => @update
    end

    assert_redirected_to receta_path(assigns(:receta))
  end

  test "should show receta" do
    get :show, :id => @receta.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @receta.to_param
    assert_response :success
  end

  test "should update receta" do
    put :update, :id => @receta.to_param, :receta => @update
    assert_redirected_to receta_path(assigns(:receta))
  end

  test "should destroy receta" do
    assert_difference('Receta.count', -1) do
      delete :destroy, :id => @receta.to_param
    end

    assert_redirected_to recetas_path
  end
end
