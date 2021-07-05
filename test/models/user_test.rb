require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "New user posts" do 
    user = User.new

    assert user.posts == []
  end
end
