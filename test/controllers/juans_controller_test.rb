require 'test_helper'

class JuansControllerTest < ActionController::TestCase
  setup do
    @juan = juans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juan" do
    assert_difference('Juan.count') do
      post :create, juan: { dirrecion: @juan.dirrecion, nombre: @juan.nombre, pedido: @juan.pedido }
    end

    assert_redirected_to juan_path(assigns(:juan))
  end

  test "should show juan" do
    get :show, id: @juan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juan
    assert_response :success
  end

  test "should update juan" do
    patch :update, id: @juan, juan: { dirrecion: @juan.dirrecion, nombre: @juan.nombre, pedido: @juan.pedido }
    assert_redirected_to juan_path(assigns(:juan))
  end

  test "should destroy juan" do
    assert_difference('Juan.count', -1) do
      delete :destroy, id: @juan
    end

    assert_redirected_to juans_path
  end
end
