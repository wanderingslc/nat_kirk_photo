require 'test_helper'

class MementosControllerTest < ActionController::TestCase
  setup do
    @memento = mementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memento" do
    assert_difference('Memento.count') do
      post :create, memento: { description: @memento.description, image_url: @memento.image_url, title: @memento.title }
    end

    assert_redirected_to memento_path(assigns(:memento))
  end

  test "should show memento" do
    get :show, id: @memento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memento
    assert_response :success
  end

  test "should update memento" do
    patch :update, id: @memento, memento: { description: @memento.description, image_url: @memento.image_url, title: @memento.title }
    assert_redirected_to memento_path(assigns(:memento))
  end

  test "should destroy memento" do
    assert_difference('Memento.count', -1) do
      delete :destroy, id: @memento
    end

    assert_redirected_to mementos_path
  end
end
