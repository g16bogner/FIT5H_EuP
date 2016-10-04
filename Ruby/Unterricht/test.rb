class Customer
	#Methode zum Setzen der Instanzvariable @name
	#def set_name(name)
	#	@name = name
	#end
	#Kurzform fuer Eigenschaft name
	attr_writer :name
	#Langform fuer Eigenschaft name
	#def name=(name)
	#	@name = name
	#end
	def ausgabe
		@name
	end
end
obj = Customer.new
#Eine Variable kann gesetzt werden, indem ich eine  beliebige Methode aufrufe
#obj.set_name("Theo")

obj.name = "Theo"
puts obj.ausgabe