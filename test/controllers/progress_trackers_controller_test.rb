require 'test_helper'

class ProgressTrackersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get progress_trackers_new_url
    assert_response :success
  end

  test "should get show" do
    get progress_trackers_show_url
    assert_response :success
  end

end
