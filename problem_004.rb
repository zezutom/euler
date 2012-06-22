#!/usr/bin/env ruby
class PrimeFactor
	
	attr_accessor :limit
	
	def initialize(limit = 3)
		@limit = limit
	end
	
	def is_palindrom(value)
		return value == value.reverse
	end
	
	def count
		
		# the min / max value of the multiplier
		min = 10 ** (limit - 1)
		max = (10 ** limit) - 1
		i = j = min
		result = 0
		
		puts "#{i}, #{j}"
		while i <= max do
		  while j <= max do
				temp = i * j  	
		    if (temp > result && is_palindrom(temp.to_s))
		    	puts "#{i} * #{j} = #{temp}"						    	
		    	result = temp
		    end
		    j += 1
		  end
		  i += 1
		  j = min
		end
		return result
	end
	
	def print_results
		puts "The largest palindrom of two #{@limit}-digit numbers is #{count}"
	end
end

ns = PrimeFactor.new(3)
ns.print_results
