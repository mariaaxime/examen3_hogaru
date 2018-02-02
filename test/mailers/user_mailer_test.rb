require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "progress_tracker" do
    mail = UserMailer.progress_tracker
    assert_equal "Progress tracker", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end