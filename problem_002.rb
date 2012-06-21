#!/usr/bin/env ruby
class FibSummary
	
	attr_accessor :limit
	
	def initialize(limit = 10)
		@limit = limit
	end
	
	def count
		total = 2
		fib = [1, 2]
		
		while true do			
			index = fib.size
			term = fib[index - 1] + fib[index - 2]
			
			if (term > limit)
				break
			end
			
			if (term % 2 == 0)
				total += term
			end
			
			fib.insert(index, term) 			
			
		end
		
		#puts fib
		
		return total
	end
	
	def print_results
		puts "Sum of even-valued terms with a maximum value of #{@limit} is #{count}"
	end
end

fs = FibSummary.new(4000000)
fs.print_results
