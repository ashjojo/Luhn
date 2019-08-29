module Luhn
	def self.is_valid?(number)
		array = number.to_s.split("").map{|chr| chr.to_i}.reverse
	##	puts array.inspect

		array.each_with_index do | num, i |
			if i.odd? 
				array[i]= num * 2
				array[i] = array[i] - 9 if array[i] >= 10 
					
			end

		end

		num = array.inject(:+)
		return num % 10 == 0 ? true : false
	end 
end