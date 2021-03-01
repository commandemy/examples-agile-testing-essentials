class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_the_song
    @lyrics.each do |line|
      puts line
      sleep 3
    end
  end

end

happy_bday = Song.new(["Happy birthday to you",
                   "I don't want to get sued",
                   "So I'll stop right there"])

happy_bday.sing_the_song