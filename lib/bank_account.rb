
class Account 
    attr_reader :transaction_history, :balance, :date
    DEFAULT_BALANCE = 0
    def initialize
        @transaction_history = []
        @balance = DEFAULT_BALANCE
        
    end 

    def bank_account 
        @balance
    end 

    def deposit(amount)
       @transaction_history << @balance += amount 
       
    end 

    def withdraw(amount)
        @transaction_history << @balance -= amount
        fail "You have insufficent funds" if @balance - amount < 0
        @balance
    end

    def statement 
        "Date || Credit || Debit || Balance\n8/3/2021 || 10 || || 10"
    end 

end 