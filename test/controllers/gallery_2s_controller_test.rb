require 'test_helper'

class Gallery2sControllerTest < ActionController::TestCase
  setup do
    @gallery_2 = gallery_2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallery_2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallery_2" do
    assert_difference('Gallery2.count') do
      post :create, gallery_2: { description: @gallery_2.description }
    end

    assert_redirected_to gallery_2_path(assigns(:gallery_2))
  end

  test "should show gallery_2" do
    get :show, id: @gallery_2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallery_2
    assert_response :success
  end

  test "should update gallery_2" do
    patch :update, id: @gallery_2, gallery_2: { description: @gallery_2.description }
    assert_redirected_to gallery_2_path(assigns(:gallery_2))
  end

  test "should destroy gallery_2" do
    assert_difference('Gallery2.count', -1) do
      delete :destroy, id: @gallery_2
    end

    assert_redirected_to gallery_2s_path
  end
end
