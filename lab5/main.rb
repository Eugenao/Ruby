<<<<<<< HEAD
class CashMachine
    def initialize
      @balance = 100
      @stateMenu = '0'
      @bank_account = 'balance.txt'
    end
  
    def bankAccount()
      if File.exist?(@bank_account)
        File.foreach(@bank_account) { |string| @balance = string.to_i }
      else puts 'File not found'
      end
      puts "Your balance: #{@balance}"
    end
  
    def menu
      puts "Choose action:\n(Q) Exit the programm\n(D) Deposit\n(W) Withdraw\n(B) balance\nYour choice: "
      @stateMenu = gets.chomp
    end
  
    def init
      menu
      while (@stateMenu != 'Q') && (@stateMenu != 'q')
        case @stateMenu
        when 'D', 'd'
          deposit
          menu
        when 'W', 'w'
          withdraw
          menu
        when 'B', 'b'
          balance
          menu
        else
          puts 'Error'
        end
      end
      puts 'Done!'
    end
  
    def deposit
      puts 'Insert the sum you want to deposit:'
      depositSum = gets.to_i
      if depositSum > 0
        @balance += depositSum
      else puts 'Incorrect sum!'
      end
      puts "Your balance now is: #{@balance}"
    end
  
    def withdraw
      puts 'Insert the sum you want to withdraw:'
      withdrawSum = gets.to_i
      if (withdrawSum > 0) && (withdrawSum <= @balance)
        @balance -= withdrawSum
      else puts 'Incorrect sum!'
      end
      puts "Your balance now is: #{@balance}"
    end
  
    def balance
      puts "Your balance now is: #{@balance}"
    end
  end
  
  bankAccount = CashMachine.new()
  bankAccount.bankAccount()
  bankAccount.init
=======

>>>>>>> 2d2982cb8d00e3df6fa15d3e61b865b83c994784
