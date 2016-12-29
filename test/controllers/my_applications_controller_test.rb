require 'test_helper'

class MyApplicationsControllerTest < ActionController::TestCase
  setup do
    @my_application = my_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_application" do
    assert_difference('MyApplication.count') do
      post :create, my_application: { applied_date: @my_application.applied_date, company: @my_application.company, released_date: @my_application.released_date, result: @my_application.result, type: @my_application.type }
    end

    assert_redirected_to my_application_path(assigns(:my_application))
  end

  test "should show my_application" do
    get :show, id: @my_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_application
    assert_response :success
  end

  test "should update my_application" do
    patch :update, id: @my_application, my_application: { applied_date: @my_application.applied_date, company: @my_application.company, released_date: @my_application.released_date, result: @my_application.result, type: @my_application.type }
    assert_redirected_to my_application_path(assigns(:my_application))
  end

  test "should destroy my_application" do
    assert_difference('MyApplication.count', -1) do
      delete :destroy, id: @my_application
    end

    assert_redirected_to my_applications_path
  end
end
