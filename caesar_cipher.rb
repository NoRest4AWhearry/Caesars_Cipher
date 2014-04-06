def caesar_cipher(string,num)
	string.each_char do |i|
		ord = i.ord
		case ord
			when (65..90),(97..122)
				offset = ord + num
				offset < 65 || offset > 90 && offset < 97 || offset > 122 ? offset = offset - 26 : nil
			else
				offset = ord
		end
		print offset.chr
	end
end
string='What a string!'
caesar_cipher(string,5)