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

movie = Movie.new("Goonies", 10)
puts movie.title
movie.title = "GYnniies"
puts movie.title
