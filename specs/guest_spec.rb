require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Lemmy")

  end

  def test_guest_has_name
    assert_equal("Lemmy", @guest.name)
  end

end
