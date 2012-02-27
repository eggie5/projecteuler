module EggUtils
  class Factorization
    def self.trial_division(n)
      #Return a list of the prime factors for a natural number.
          if n == 1
             return [1]
           end
           
          primes = Prime.sieve(((n**0.5) + 1).to_i)
          prime_factors = []

          primes.each do |p|
              break if (p*p > n) 
              
              while (n % p == 0)
                  prime_factors.push(p)
                  n=n/ p
              end
          end
          if (n > 1)
             prime_factors.push(n)
          end

          return prime_factors
    end
  end
  
  class Prime
    def self.sieve(upto)
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
  end
end