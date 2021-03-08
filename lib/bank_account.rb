
class Account 
    attr_reader :transaction_history, :balance
  
    def initialize
        @transaction_history = []
        @balance = 0
    end 

    def bank_account 
        @balance
    end 

    def deposit(amount)
        transaction = Transaction.new
       transaction_history << @balance += amount 

    end 
end 