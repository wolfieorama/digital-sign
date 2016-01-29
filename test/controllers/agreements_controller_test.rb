require 'test_helper'

class AgreementsControllerTest < ActionController::TestCase
  setup do
    @agreement = agreements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agreements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agreement" do
    assert_difference('Agreement.count') do
      post :create, agreement: { name: @agreement.name, signature: @agreement.signature }
    end

    assert_redirected_to agreement_path(assigns(:agreement))
  end

  test "should show agreement" do
    get :show, id: @agreement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agreement
    assert_response :success
  end

  test "should update agreement" do
    patch :update, id: @agreement, agreement: { name: @agreement.name, signature: @agreement.signature }
    assert_redirected_to agreement_path(assigns(:agreement))
  end

  test "should destroy agreement" do
    assert_difference('Agreement.count', -1) do
      delete :destroy, id: @agreement
    end

    assert_redirected_to agreements_path
  end
end
