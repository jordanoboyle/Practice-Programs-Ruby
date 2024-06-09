# 3. Write a Playlist class that stores a name and an array of songs with methods to add a song,
# remove a song, shuffle the songs into a random order, and display all the songs.

class Playlist
  attr_reader :name, :songs
  attr_writer :name, :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def add_song(song)
    @songs << song
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def shuffle
    shuffle = []
    songs = @songs
    while songs.length > 0       
      if songs.length > 0
        shuf_num = rand(0...songs.length)
        shuffle << songs[shuf_num]
        songs.delete(shuffle.last)
      end 
    end  
    return shuffle
  end
end

list1 = Playlist.new("VG sounds", ["Delfino Isle", "Jump Superstar", "Halo Suite", "Bloody Tears"])

p list1.shuffle