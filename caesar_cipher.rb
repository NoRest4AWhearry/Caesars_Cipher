def caesar_cipher(string,num)
	string.each_byte { |i|
	case i when (65..90),(97..122) then offset = i + num
	(offset > 90 && offset < 97 ? offset = offset - 26 : nil) else offset = i end
	print offset.chr }
end
string='What a string!'
caesar_cipher(string,5)

