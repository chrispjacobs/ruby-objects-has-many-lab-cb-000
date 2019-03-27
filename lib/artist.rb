class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs_array = []
  end
  def songs
    @songs_array
  end
  def add_song(song_variable)
    @songs_array << song_variable
  end
  def add_song_by_name(name_string)
    new_song_variable = Song.new
    new_song_variable.name = name_string
    @songs_array << new_song_variable
  end
  def song_count
    @songs_array.count
  end
end

#the_beatles = Artist.new("The Beatles")
#help = Song.new("Help!")
#help.artist = the_beatles
#puts "help.artist returns #{help.artist}"
#puts "the_beatles.songs returns #{the_beatles.songs}"

hello = Song.new("Hello")
adele.add_song(hello)
puts expect(adele.songs).include? hello
puts hello.artist == adele
