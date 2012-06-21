#!/usr/bin/env ruby
class NumberSummary
	
	attr_accessor :limit
	
	def initialize(limit = 10)
		@limit = limit
	end
	
	def count
		i = 1
		total = 0

		while i < limit do
			if (i % 3 == 0 || i % 5 == 0)
				total += i
			end
			i += 1
		end
		
		return total
	end
	
	def print_results
		puts "Sum of multiplies of 3 or 5 up to #{@limit} is #{count}"
	end
end

ns = NumberSummary.new(1000)
ns.print_results
