require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
  @song = Song.new ("White Rabbit")
  # @songs = songs
  end

  def test_song_has_name
    assert_equal("White Rabbit", @song.title)
  end


end
