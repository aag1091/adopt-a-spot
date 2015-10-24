require 'test_helper'

class AdoptionRequestsControllerTest < ActionController::TestCase
  setup do
    @adoption_request = adoption_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adoption_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adoption_request" do
    assert_difference('AdoptionRequest.count') do
      post :create, adoption_request: { add1: @adoption_request.add1, category_id: @adoption_request.category_id, city: @adoption_request.city, email: @adoption_request.email, first_name: @adoption_request.first_name, group_name: @adoption_request.group_name, last_name: @adoption_request.last_name, no_of_volunteers: @adoption_request.no_of_volunteers, phone: @adoption_request.phone, state: @adoption_request.state, zipcode: @adoption_request.zipcode }
    end

    assert_redirected_to adoption_request_path(assigns(:adoption_request))
  end

  test "should show adoption_request" do
    get :show, id: @adoption_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adoption_request
    assert_response :success
  end

  test "should update adoption_request" do
    patch :update, id: @adoption_request, adoption_request: { add1: @adoption_request.add1, category_id: @adoption_request.category_id, city: @adoption_request.city, email: @adoption_request.email, first_name: @adoption_request.first_name, group_name: @adoption_request.group_name, last_name: @adoption_request.last_name, no_of_volunteers: @adoption_request.no_of_volunteers, phone: @adoption_request.phone, state: @adoption_request.state, zipcode: @adoption_request.zipcode }
    assert_redirected_to adoption_request_path(assigns(:adoption_request))
  end

  test "should destroy adoption_request" do
    assert_difference('AdoptionRequest.count', -1) do
      delete :destroy, id: @adoption_request
    end

    assert_redirected_to adoption_requests_path
  end
end
