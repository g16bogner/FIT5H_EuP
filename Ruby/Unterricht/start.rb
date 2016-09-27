def movie_listing(movie, rank=5) 
	"Movie: #{movie} ist ein guter Film, mit der Punktzahl: #{rank} am #{set_time}"
end

def set_time
	Time.now.strftime("%d.%m.%Y")
end

puts movie_listing("Superman")

