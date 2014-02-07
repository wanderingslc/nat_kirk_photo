require 'test_helper'

class SocialConcernsControllerTest < ActionController::TestCase
  setup do
    @social_concern = social_concerns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_concerns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_concern" do
    assert_difference('SocialConcern.count') do
      post :create, social_concern: { description: @social_concern.description, image_url: @social_concern.image_url, title: @social_concern.title }
    end

    assert_redirected_to social_concern_path(assigns(:social_concern))
  end

  test "should show social_concern" do
    get :show, id: @social_concern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_concern
    assert_response :success
  end

  test "should update social_concern" do
    patch :update, id: @social_concern, social_concern: { description: @social_concern.description, image_url: @social_concern.image_url, title: @social_concern.title }
    assert_redirected_to social_concern_path(assigns(:social_concern))
  end

  test "should destroy social_concern" do
    assert_difference('SocialConcern.count', -1) do
      delete :destroy, id: @social_concern
    end

    assert_redirected_to social_concerns_path
  end
end
