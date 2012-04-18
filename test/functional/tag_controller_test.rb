require 'test_helper'

class TagControllerTest < ActionController::TestCase
  test "should get tag_module" do
    get :tag_module
    assert_response :success
  end

end
