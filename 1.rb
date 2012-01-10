#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.


count=0;
1.upto(999) do |n|  
  if n%3==0
    puts n
    count=count+n
  elsif n%5==0
    puts n
    count=count+n
  end
end

puts "\n="
puts count

#=
#233168