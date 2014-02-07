require 'test_helper'

class PinholesControllerTest < ActionController::TestCase
  setup do
    @pinhole = pinholes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinholes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinhole" do
    assert_difference('Pinhole.count') do
      post :create, pinhole: { description: @pinhole.description, image_url: @pinhole.image_url, title: @pinhole.title }
    end

    assert_redirected_to pinhole_path(assigns(:pinhole))
  end

  test "should show pinhole" do
    get :show, id: @pinhole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinhole
    assert_response :success
  end

  test "should update pinhole" do
    patch :update, id: @pinhole, pinhole: { description: @pinhole.description, image_url: @pinhole.image_url, title: @pinhole.title }
    assert_redirected_to pinhole_path(assigns(:pinhole))
  end

  test "should destroy pinhole" do
    assert_difference('Pinhole.count', -1) do
      delete :destroy, id: @pinhole
    end

    assert_redirected_to pinholes_path
  end
end
