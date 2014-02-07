require 'test_helper'

class TranscendencesControllerTest < ActionController::TestCase
  setup do
    @transcendence = transcendences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcendences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcendence" do
    assert_difference('Transcendence.count') do
      post :create, transcendence: { description: @transcendence.description, image_url: @transcendence.image_url, title: @transcendence.title }
    end

    assert_redirected_to transcendence_path(assigns(:transcendence))
  end

  test "should show transcendence" do
    get :show, id: @transcendence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcendence
    assert_response :success
  end

  test "should update transcendence" do
    patch :update, id: @transcendence, transcendence: { description: @transcendence.description, image_url: @transcendence.image_url, title: @transcendence.title }
    assert_redirected_to transcendence_path(assigns(:transcendence))
  end

  test "should destroy transcendence" do
    assert_difference('Transcendence.count', -1) do
      delete :destroy, id: @transcendence
    end

    assert_redirected_to transcendences_path
  end
end
