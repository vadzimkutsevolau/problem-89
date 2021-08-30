# find and replace 
# DCCCC = CM
# LXXXX = XC
# VIIII = IX
# CCCC = CD
# XXXX = XL
# IIII = IV


file = File.read("problem89/p089_roman.txt")

arr = file.split("\n")

new_arr = []

modified_arr = arr.map do |line|
	new_arr << line.gsub(/DCCCC|LXXXX|VIIII|CCCC|XXXX|IIII/, "DCCCC" => "CM", "LXXXX" => "XC", "VIIII" => "IX", "CCCC" => "CD", "XXXX" => "XL", "IIII" => "IV")
end

p arr.join.length - new_arr.join.length

