name1 = "Larry"
name2 = "Curly"
name3 = "Moe"

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"

allenamen = <<HEREDOC
Players:
	#{name1}
		#{name2}
	#{name3}
HEREDOC
puts allenamen