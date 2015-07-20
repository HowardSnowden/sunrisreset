require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "incoming_messages" do
    mail = ModelMailer.incoming_messages
    assert_equal "Incoming messages", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
