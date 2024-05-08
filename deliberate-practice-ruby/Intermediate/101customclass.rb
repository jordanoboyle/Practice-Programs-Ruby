# SET 5 WRITE A CUSTOM CLASS WITH CUSTOM METHODS

# # 1 Write a Song class with attributes and reader/writer methods for name, artist, and duration. Then write a method that prints the name, artist, and duration in a single sentence.

class Song 
  attr_reader :name, :artist, :duration
  attr_writer :name, :artist, :duration
  
  def initialize(opts_song_specs)
    @name     = opts_song_specs[:name]
    @artist   = opts_song_specs[:artist]
    @duration = opts_song_specs[:duration]
  end

end

song1 = Song.new({name: "In The End", artist: "Linkin Park", duration: 3.5}) 

p song1
p "The band #{song1.artist} came out with a song called #{song1.name}. It was about #{song1.duration} minutes long."

# # 2 Write a Rectangle class with attributes and reader/writer methods for width and height. Then write a method that returns the area of the rectangle.



# # 3 Write a Person class with attributes and reader/writer methods for name and age. Then write a method that returns the person's name in all capital letters.

# # 4 Write a Coordinate class with attributes and reader/writer methods for latitude and longitude. Then write a method that prints out the latitude and longitude in a single sentence.

# # 5 Write an Account class with attributes and reader/writer methods for name and balance. Then write a method that prints a warning if the balance is below $100.

# # 6 Write a Movie class with attributes and reader/writer methods for title, director, and year. Then write a method that prints out the attributes in a single sentence.

# # 7 Write a Car class with attributes and reader/writer methods for make, model, year, and color. Then write a method that returns the make and model as a single sentence in all lowercase letters.

# # 8 Write a Point class with attributes and reader/writer methods for x, y, and z coordinates. Then write a method that returns true if all 3 numbers are positive, otherwise it returns false.

# # 9 Write a Book class with attributes and reader/writer methods for title, author, and year. Then write a method that returns "Classic" if the book is older than 2000, otherwise it returns "Modern".

# # 10 Write a Plant class with attributes and reader/writer methods for name, size, and price. Then write a method that prints out the attributes in a single sentence.