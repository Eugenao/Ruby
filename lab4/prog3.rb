require_relative "prog_function3.rb"

$balance = 88.0
BANK_ACCOUNT = 'balance.txt'
$stateMenu
def bankAccount(fileName)
  if File.exist?(fileName)
    File.foreach(fileName) {|string| $balance = string.to_i}
  else puts "File not found" 
  end
  puts "Your balance: #{$balance}"
end

def menu()
  puts "Choose action:\n(Q) Exit the programm\n(D) Deposit\n(W) Withdraw\n(B) balance\nYour choice: "
  $stateMenu = gets.chomp
end



bankAccount(BANK_ACCOUNT)
menu()
while ($stateMenu != "Q" and $stateMenu != "q") do
  case $stateMenu
    when "D", "d"
      deposit()
      menu()
    when "W", "w"
      withdraw()
      menu()
    when "B", "b"
      balance()
      menu()
  else 
    puts "Erorr"
    break
  end
end

puts "Done!"
