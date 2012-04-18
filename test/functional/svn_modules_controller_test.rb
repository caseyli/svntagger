require 'test_helper'

class SvnModulesControllerTest < ActionController::TestCase
  setup do
    @svn_module = svn_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:svn_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create svn_module" do
    assert_difference('SvnModule.count') do
      post :create, :svn_module => @svn_module.attributes
    end

    assert_redirected_to svn_module_path(assigns(:svn_module))
  end

  test "should show svn_module" do
    get :show, :id => @svn_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @svn_module.to_param
    assert_response :success
  end

  test "should update svn_module" do
    put :update, :id => @svn_module.to_param, :svn_module => @svn_module.attributes
    assert_redirected_to svn_module_path(assigns(:svn_module))
  end

  test "should destroy svn_module" do
    assert_difference('SvnModule.count', -1) do
      delete :destroy, :id => @svn_module.to_param
    end

    assert_redirected_to svn_modules_path
  end
end
