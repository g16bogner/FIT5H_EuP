class Movie
  
  attr_reader :title
  attr_writer :title
  attr_accessor :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end
  
  def normalized_rank
  	@rank * 1000
  end
  #Getter für einen veränderten rank
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
puts movie.normalized_rank
