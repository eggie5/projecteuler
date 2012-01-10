# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#some number n  multiplied by 1..20 must equal a number x. so,
# (1..20)n=x

#11*12*13*14*15*16*17*18*19*20
#11*2*6*13*7*3*17*9*5*19

last=1
(last..19).each do |n|
  last=last.lcm(n+1)
end

puts last

#=232 792 560
#= 27 567 540 - by hand