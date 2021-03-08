
class Account 
    attr_reader :transaction_history, :balance
    DEFAULT_BALANCE = 0
    def initialize
        @transaction_history = []
        @balance = DEFAULT_BALANCE
    end 

    def bank_account 
        @balance
    end 

    def deposit(amount)
       transaction_history << @balance += amount 
       
    end 

    def withdraw(amount)
        transaction_history << @balance -= amount 
    end
end 