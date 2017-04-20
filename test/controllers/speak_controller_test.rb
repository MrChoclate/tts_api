require 'test_helper'

class SpeakControllerTest < ActionDispatch::IntegrationTest
  test "should create audio" do
    post speak_path, as: :json, params: { "text": "Hello World", "speaker_id": Speaker.first.id }
    assert_response :success
  end

end
