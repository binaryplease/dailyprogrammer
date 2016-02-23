# encoding: utf-8

#!/usr/bin/env ruby
def setup(num_switches)
	switches = []
	num_switches.to_i.times { switches << false}

	return switches
end

def toggle_string_range(switches, range)
	a,b = range.split(' ')
	(a.to_i..b.to_i).each  do |n|
		switches[n] = !switches[n]
	end
	return switches
end

input = $stdin.read.split("\n")
switches = setup(input.shift)

while(r = input.shift) do
	switches = toggle_string_range(switches, r)
end

puts "\n" + switches.count(true)
