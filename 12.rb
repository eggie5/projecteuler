#triangle numbrers
require "./EggUtils"


def is_prime(number)
  2.downto(Math.sqrt(number)-1) do |n|
    if(number%n==0)
      return false
    end
  end
  return true
end


def prime_factorization(num)
  base=num
  factors=[]
  (1).upto(base) do |n|
    if(base%n==0 && is_prime(base))
        base=base/n
        factors.push n
    end
    break if num==1
  end
  
  factors
end

def find_factors(num)
  nom=0
  (1..Math.sqrt(num)).each do |x|
    if(num % x == 0)
     # factors.push x
     nom=nom+2
    end
  end
  
  nom
  
end

last=0
max=1000000
(1...max).each do |i|
  trinum=last+i  
  last=trinum

  #prime_factors=EggUtils::Factorization.trial_division(trinum)  
  factors=find_factors(trinum)
  
  if(i%500==0)
    p "#{i}-#{trinum} : #{factors}"
  end

  if(factors>500)
    p "#{trinum} : #{factors}"
    break
    return
  end
  
end

