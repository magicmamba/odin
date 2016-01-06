
def caesar_cipher(text, shift)
	cipher = ""
	text.each_char do |i|
		x = i
		shift.times do
			if x == "Z"
				x = "A"
				next
			elsif x == "z"
				x = "a"
				next
			end 
			x.next!
			x == "%" ? x = " " : ""
		end
	cipher += x
	end
	cipher 
end 

puts caesar_cipher("What a string!", 5)