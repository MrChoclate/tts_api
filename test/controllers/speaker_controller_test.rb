require 'test_helper'

class SpeakerControllerTest < ActionDispatch::IntegrationTest
  test "should get speakers" do
    get speakers_path
    assert_response :success
  end

end
