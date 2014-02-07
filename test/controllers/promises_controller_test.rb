require 'test_helper'

class PromisesControllerTest < ActionController::TestCase
  setup do
    @promise = promises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promise" do
    assert_difference('Promise.count') do
      post :create, promise: { description: @promise.description, image_url: @promise.image_url, title: @promise.title }
    end

    assert_redirected_to promise_path(assigns(:promise))
  end

  test "should show promise" do
    get :show, id: @promise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promise
    assert_response :success
  end

  test "should update promise" do
    patch :update, id: @promise, promise: { description: @promise.description, image_url: @promise.image_url, title: @promise.title }
    assert_redirected_to promise_path(assigns(:promise))
  end

  test "should destroy promise" do
    assert_difference('Promise.count', -1) do
      delete :destroy, id: @promise
    end

    assert_redirected_to promises_path
  end
end
