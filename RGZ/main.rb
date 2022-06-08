arr1= [0,1,2,3,4,5,6,7,8,9]
arr2= [0,1,322,3,546,5,6,7,896,9]

def mas1(arr1)
for i in arr1 do
    if (i % 2 == 1)
      puts i
      arr1.delete i
    end
  end
puts arr1
puts "\n"
end

def mas2(arr2)
for i in arr2 do
    if !(i % 2 == 1)
      puts i
      arr2.delete i
    end
  end
puts arr2
puts "\n"
end

def last_digit(x,q=10)
  x % q
end

def digits_sum(x,q=10)
  res = 0
  while x > 0
    res += last_digit(x,q)
    x /= q
  end
  puts res
end

mas1(arr1)
mas2(arr2)

puts "Input your Number: "
x = gets.to_i
digits_sum(x)


