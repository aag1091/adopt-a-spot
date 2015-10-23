require 'test_helper'

class GroupSpotsControllerTest < ActionController::TestCase
  setup do
    @group_spot = group_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_spot" do
    assert_difference('GroupSpot.count') do
      post :create, group_spot: { group_id: @group_spot.group_id, spot_id: @group_spot.spot_id }
    end

    assert_redirected_to group_spot_path(assigns(:group_spot))
  end

  test "should show group_spot" do
    get :show, id: @group_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_spot
    assert_response :success
  end

  test "should update group_spot" do
    patch :update, id: @group_spot, group_spot: { group_id: @group_spot.group_id, spot_id: @group_spot.spot_id }
    assert_redirected_to group_spot_path(assigns(:group_spot))
  end

  test "should destroy group_spot" do
    assert_difference('GroupSpot.count', -1) do
      delete :destroy, id: @group_spot
    end

    assert_redirected_to group_spots_path
  end
end
