# 3. Write a Playlist class that stores a name and an array of songs with methods to add a song, remove a song, shuffle the songs into a random order, and display all the songs.



class Playlist
  attr_reader :name, :list
  attr_writer :name, :list
  
  def initialize(name, list = [])
    @name = name
    @list = list
  end

  def remove(song)
    @list.delete(song)
  end

  def show_all
    @list.each do |song|
      p song
    end
  end

  def shuffle_songs
    shuffled_list = []
    songs = @list

  
    while songs.length > 0
      add = songs[rand(0...songs.length)]
      shuffled_list << add
      songs.delete(add)
    end
    return shuffled_list
  end

end



list1 = Playlist.new("Videogame Lounge", ["Store Closing", "Green Hills", "Chemical Plant", "Zeldas Lullaby"])

p list1.name
list1.list << "Bloody Tears"
p list1.list
p list1.shuffle_songs
