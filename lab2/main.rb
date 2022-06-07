def greetings (name, surname, age)
  if age < 18 
  puts "Hello, #{name} #{surname}. You are under 18 years old, but you can start           learning programming right now!" 
  else puts "Hello, #{name} #{surname}. It's just the time to start!"
  end
end

 def foobar (a, b)
    if a == 20 or b == 20
      puts b
    else puts a+b
    end
  end
  
puts "Input your Name: "
name = gets.chomp

puts "Input your Surname: "
surname = gets.chomp

puts "Input your age: "
age = gets.to_i

greetings(name, surname, age)

puts "Input fisrt number: "
a = gets.to_i

puts "Input second number: "
b = gets.to_i
foobar(a, b)
