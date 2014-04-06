def caesar_cipher(string, num)
	string.each_char do |letter|
		ord = letter.ord
		if ord >= 65 && ord <= 90 || ord >= 97 && ord <= 122
			offset = ord + num
			offset < 65 || offset > 90 && offset < 97 || offset > 122 ? offset = offset - 26 : nil
		else
			offset = ord
		end
		print offset.chr
	end
end
string = 'What a string!'
caesar_cipher(string, 5)