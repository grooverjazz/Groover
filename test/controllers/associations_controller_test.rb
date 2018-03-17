require 'test_helper'

class AssociationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get associations_edit_url
    assert_response :success
  end

end
