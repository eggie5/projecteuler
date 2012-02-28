#using combinatorics

ones=ones_len="onetwothreefourfivesixseveneightnine".length #36
teens=teens_len="teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen".length #70
tens_len="twentythirtyfortyfiftysixtyseventyeightyninety".length #47
one_thousand_len="onethousand".length #11

tens = 10 * tens_len + (ones * 8)  #20-99 = 748
hundreds = (ones_len * 100 ) + ((ones+teens+tens) * 9) + (7*9) + (9*99*10) #100-999

sum = ones + teens + tens + hundreds + one_thousand_len

p sum


#=21124