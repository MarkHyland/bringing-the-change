#Task: To add a Class Register
#r = Register.new
#To add a Change Function
#r.change 0.99 # => [3, 2, 0, 4]
#return pennies, nickels, dimes, and quarters

def change thing
	arr = Array.new
	arr.push(thing / 25)
	arr.push((thing % 25) / 10) 
	arr.push(((thing % 25) % 10) / 5)
	arr.push(((thing % 25) % 10) % 5)
	puts arr.to_s
end

puts 'Place Amount of Change (in cents)'
number = gets.to_i
puts 'Returning..'
puts (change number).to_s + 'in quarters, dimes, nicks, and pennies'