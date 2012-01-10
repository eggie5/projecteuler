# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

#checking for primality is faster than factoring primes

#Prime Factorization

# It is often useful to write a number in terms of its prime factorization, 
# or as the product of its prime factors. For example, 56 can be written as 2×2×2×7 
# and 84 can be written as 2×2×3×7 . Every number can be written as a product of 
# primes, and, like a fingerprint, every number has a unique prime factorization.
# 
# To take a prime factorization of a number, start by dividing the number by its lowest 
# prime factor. Write down this factor, and divide the new number by its lowest prime 
# factor (it does not matter if this is the same as the first prime factor). Write this
#  factor down and divide the new number by its lowest factor. Continue in this manner 
#  until the resulting number is prime. Write this number down as the final factor.

num=600_851_475_143


def is_prime(number)
  2.downto(Math.sqrt(number)-1) do |n|
    if(number%n==0)
      return false
    end
  end
  return true
end


(2).upto(num-1) do |n|
  if(num%n==0)
    if(is_prime(num))
      num=num/n
      puts "#{n} - new num=#{num}"
      
    end
  end
  break if num==1
end
