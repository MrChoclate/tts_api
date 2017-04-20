require 'test_helper'

class AudioControllerTest < ActionDispatch::IntegrationTest
  test "should get audios" do
    get audios_path
    assert_response :success
  end

  test "should get audio" do
    get audio_path(Audio.first.id)
    assert_response :success
  end

end
