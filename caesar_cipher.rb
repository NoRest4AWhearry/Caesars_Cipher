def caesar_cipher(string,num)
	string.each_char { |i| ord = i.ord
	case ord when (65..90),(97..122) then offset = ord + num
	(offset > 90 && offset < 97 ? offset = offset - 26 : nil) else offset = ord end
	print offset.chr }
end
string='What a string!'
caesar_cipher(string,5)