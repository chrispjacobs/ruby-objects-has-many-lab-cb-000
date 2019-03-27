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
    #   puts "song_variable inputted reads: #{song_variable}"
    #   puts "songs_array initially reads: #{@songs_array}"
      @songs_array << song_variable
    #   puts "songs_array after shoveling reads: #{@songs_array}"
    #   puts "song_variable.artist initially reads: #{song_variable.artist}"
      if song_variable.artist == nil
        song_variable.artist = self
        # puts "song_variable.artist after equating reads: #{song_variable.artist}"
      end
    end
    def add_song_by_name(name_string)
      new_song_variable = Song.new
      puts "We just initialized #{new_song_variable}"
      new_song_variable.name = name_string
      puts "new_song_variable.name returns #{new_song_variable.name}"
      puts "new_song_variable.artist initially returns #{new_song_variable.artist}"
      if new_song_variable.artist == nil
        new_song_variable.artist = self
        puts "new_song_variable.artist now returns #{new_song_variable.artist}"
      end
    end
    def song_count
      @songs_array.count
    end
  end

the_beatles = Artist.new("The Beatles")
the_beatles.add_song_by_name("Help!")
