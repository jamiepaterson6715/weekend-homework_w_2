require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test
# set upp test environment
def setup()
  @song1 = Song.new("Crazy Train")
  @song2 = Song.new("Ace of Spades")
  # @tracks = [@song1, @song2]

  @guest1 = Guest.new("Ozzy", @song1)
  @guest2 = Guest.new("Lemmy", @song2)
  # @clients = [@guest1, @guest2]

  # @room1 = Room.new(("Liquidroom", @tracks, @clients))
@room1 = Room.new("Liquidroom", [@song1, @song2],[@guest1, @guest2])


end

def test_room_has_name
  assert_equal("Liquidroom", @room1.name)
end


def test_room_has_guests
  assert_equal(2, @room1.clients.count)
end

def test_check_in_guests_to_room
      @room1.check_in_guests_to_room(@guest1)
      assert_equal(3, @room1.clients.count)
end

def test_check_out_guests_to_room
      @room1.check_out_guests_to_room(@guest1)
  assert_equal(1, @room1.clients.count)
end

def test_add_songs_to_room
  @room1.add_songs_to_room(@song1)
  assert_equal(1,@room1.tracks.count)
end

end
