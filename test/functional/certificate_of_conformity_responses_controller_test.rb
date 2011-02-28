require 'test_helper'

class CertificateOfConformityResponsesControllerTest < ActionController::TestCase
  setup do
    @certificate_of_conformity_response = certificate_of_conformity_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificate_of_conformity_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate_of_conformity_response" do
    assert_difference('CertificateOfConformityResponse.count') do
      post :create, :certificate_of_conformity_response => @certificate_of_conformity_response.attributes
    end

    assert_redirected_to certificate_of_conformity_response_path(assigns(:certificate_of_conformity_response))
  end

  test "should show certificate_of_conformity_response" do
    get :show, :id => @certificate_of_conformity_response.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @certificate_of_conformity_response.to_param
    assert_response :success
  end

  test "should update certificate_of_conformity_response" do
    put :update, :id => @certificate_of_conformity_response.to_param, :certificate_of_conformity_response => @certificate_of_conformity_response.attributes
    assert_redirected_to certificate_of_conformity_response_path(assigns(:certificate_of_conformity_response))
  end

  test "should destroy certificate_of_conformity_response" do
    assert_difference('CertificateOfConformityResponse.count', -1) do
      delete :destroy, :id => @certificate_of_conformity_response.to_param
    end

    assert_redirected_to certificate_of_conformity_responses_path
  end
end
