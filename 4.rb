### * ###
10*10*10  * 10*10*10

# 0.upto(9) do |n|
#   l="#{n}".to_i
# 
#   
#   0.upto(9) do |o|
#     m="#{l}#{o}".to_i
#     puts m
#   end
# end

largest = 0

100.upto(999) do |n|
  n.upto(999) do |o|
    product = n*o
    if(product.to_s===product.to_s.reverse && product > largest)
      largest=product
      puts "#{n}*#{o}=#{product}"
    end
  end
end
