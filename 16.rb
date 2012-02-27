# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?

sum=(2**1000).to_s.split("").map(&:to_i).reduce(:+)

# but I feel like this is just getting lazy -- modern language magick...
# I need to use some sort of exponsentioal expansion ' cause storing
# 2**1000 in memory as a number is stupid

p sum


