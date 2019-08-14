require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Example User")
  end

  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
end
