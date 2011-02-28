require 'test_helper'

class CertificateOfConformitiesControllerTest < ActionController::TestCase
  setup do
    @certificate_of_conformity = certificate_of_conformities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificate_of_conformities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate_of_conformity" do
    assert_difference('CertificateOfConformity.count') do
      post :create, :certificate_of_conformity => @certificate_of_conformity.attributes
    end

    assert_redirected_to certificate_of_conformity_path(assigns(:certificate_of_conformity))
  end

  test "should show certificate_of_conformity" do
    get :show, :id => @certificate_of_conformity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @certificate_of_conformity.to_param
    assert_response :success
  end

  test "should update certificate_of_conformity" do
    put :update, :id => @certificate_of_conformity.to_param, :certificate_of_conformity => @certificate_of_conformity.attributes
    assert_redirected_to certificate_of_conformity_path(assigns(:certificate_of_conformity))
  end

  test "should destroy certificate_of_conformity" do
    assert_difference('CertificateOfConformity.count', -1) do
      delete :destroy, :id => @certificate_of_conformity.to_param
    end

    assert_redirected_to certificate_of_conformities_path
  end
end
