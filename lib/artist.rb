class Artist
  attr_accessor :name, :song_count

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  @@song_count = 0

  def self.song_count
    @songs.each do |song|
      @@song_count += 1
    end
  end

end
