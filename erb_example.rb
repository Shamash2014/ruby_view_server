require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"

study_hours = []
5.times do |x|
	x += 3
	study_hours << x
end
my_meal = {pizza: 'Colmon', drink: "Water", alcohol: "Whiskey"}

y = "I have a study plan"
zTemp = ERB.new "<h1><%= y %></h1>"
pTemp = ERB.new "<p>Overall time will be <%= study_hours.inject{|sum, n| sum +n} %> hours</p>"
iTemp = ERB.new "I like pizza <%= my_meal[:pizza] %> and drink <%= my_meal[:alcohol]%>"
puts template.result(binding)
puts pTemp.result()
puts zTemp.result()
puts iTemp.result()