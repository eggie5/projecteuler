# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

#Sieve of Eratosthenes

def is_prime(number)
  2.downto(Math.sqrt(number)-1) do |n|
    if(number%n==0)
      return false
    end
  end
  return true
end

def sieve(upto)
  a=[]
  (1..upto).each do |n|
    a.push true
  end

  (2..upto).each do |i|
    break if i>upto/2
    if(a[i])
      (2..upto).each do |j|
        k=j*i
        break if k>upto
        a[k]=false
      end
    end
  end
  primes=[]
  a.each_with_index do |tf, val|
    next if val <2
    if(tf) 
      primes.push val
    end
  end
  primes
end


p=sieve(10_04190)
p.each_with_index do |b, i|
  p "p[#{i}]=#{b}"
end

pn= p[10_000]
p is_prime pn
p pn






