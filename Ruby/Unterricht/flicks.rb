class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end
  def add_movie(movie)
    @movies << movie
  end
  def play
    puts "#{@name} Playlist:"
    @movies.each do |movie|
      puts movie
    end
  end
end
class Movie
  attr_accessor :title
  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end
  def thumbs_down
    @rank -= 1
  end
  def to_s
    "#{@title} has a rank of #{@rank}."
  end
end

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Batman", 5)
movie3 = Movie.new("Spiderman", 8)

playlist1 = Playlist.new("Theo")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.play
