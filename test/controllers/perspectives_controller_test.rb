require 'test_helper'

class PerspectivesControllerTest < ActionController::TestCase
  setup do
    @perspective = perspectives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perspectives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perspective" do
    assert_difference('Perspective.count') do
      post :create, perspective: { description: @perspective.description, image_url: @perspective.image_url, title: @perspective.title }
    end

    assert_redirected_to perspective_path(assigns(:perspective))
  end

  test "should show perspective" do
    get :show, id: @perspective
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perspective
    assert_response :success
  end

  test "should update perspective" do
    patch :update, id: @perspective, perspective: { description: @perspective.description, image_url: @perspective.image_url, title: @perspective.title }
    assert_redirected_to perspective_path(assigns(:perspective))
  end

  test "should destroy perspective" do
    assert_difference('Perspective.count', -1) do
      delete :destroy, id: @perspective
    end

    assert_redirected_to perspectives_path
  end
end
