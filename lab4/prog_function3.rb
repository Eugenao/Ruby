
def deposit()
  puts "Insert the sum you want to deposit:"
  depositSum = gets.to_i
  if depositSum > 0
    $balance = $balance + depositSum
  else puts "Incorrect sum!"
  end
  puts "Your balance now is: #{$balance}"
end

def withdraw()
  puts "Insert the sum you want to withdraw:"
  withdrawSum = gets.to_i
  if (withdrawSum > 0 and withdrawSum <= $balance)
    $balance = $balance - withdrawSum
  else puts "Incorrect sum!"
  end
  puts "Your balance now is: #{$balance}"
end


def balance()
  puts "Your balance now is: #{$balance}"
end