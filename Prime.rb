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