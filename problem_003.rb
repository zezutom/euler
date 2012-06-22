#!/usr/bin/env ruby
class PrimeFactor
	
	attr_accessor :limit
	
	def initialize(limit = 10)
		@limit = limit
	end
	
	def get_max_prime(value)
		if (value <= 2)
		  return value
		end
		
		i = 2
		
		max_prime = i
		
		while i <= value do
			if (value % i == 0)
				puts "found prime #{i}"	
				value = value / i
				max_prime = i				
			end
			i += 1
		end
		
		return max_prime
	end
	
	def count		
		return get_max_prime(limit)
	end
	
	def print_results
		puts "The largest prime factor of #{@limit} is #{count}"
	end
end

ns = PrimeFactor.new(600851475143)
ns.print_results
