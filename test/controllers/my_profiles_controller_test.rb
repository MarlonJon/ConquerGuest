require 'test_helper'

class MyProfilesControllerTest < ActionController::TestCase
  setup do
    @my_profile = my_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_profile" do
    assert_difference('MyProfile.count') do
      post :create, my_profile: { age: @my_profile.age, bio: @my_profile.bio, secondname: @my_profile.secondname }
    end

    assert_redirected_to my_profile_path(assigns(:my_profile))
  end

  test "should show my_profile" do
    get :show, id: @my_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_profile
    assert_response :success
  end

  test "should update my_profile" do
    patch :update, id: @my_profile, my_profile: { age: @my_profile.age, bio: @my_profile.bio, secondname: @my_profile.secondname }
    assert_redirected_to my_profile_path(assigns(:my_profile))
  end

  test "should destroy my_profile" do
    assert_difference('MyProfile.count', -1) do
      delete :destroy, id: @my_profile
    end

    assert_redirected_to my_profiles_path
  end
end
