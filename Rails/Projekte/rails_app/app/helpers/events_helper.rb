module EventsHelper

	def format_price(event)
		if event.free?
			#"<strong>Free</strong>".html_safe
			content_tag(:strong, 'FREE')
		else
			number_to_currency(event.price, unit: "€", separator: ",", delimiter: ".", format: "%n %u")
		end
	end
end
