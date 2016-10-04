class Movie
  
  attr_reader :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def title=(title)
  	@title = title
  end
  
  def thumbs_up
    @rank += 1
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
movies = [movie1, movie2, movie3]

movies.each do |movie|
  movie.thumbs_down
  puts movie
end
