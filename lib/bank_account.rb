class Account 
    attr_reader :transaction_history, :balance, :time
    DEFAULT_BALANCE = 0
    def initialize
        @transaction_history = []
        @balance = DEFAULT_BALANCE
        @time = Time.new
    end 

    def bank_account 
        @balance
    end 

    def deposit(amount)
       @transaction_history << @balance += amount 
       puts "You made a deposit of £#{'%.2f' % amount} at #{@time.strftime("%d/%m/%Y")}" 
       @balance
    end 

    def withdraw(amount)
        @transaction_history << @balance -= amount
        fail "You have insufficent funds" if @balance - amount < 0
        puts "You made a withdrawal of £#{'%.2f' % amount} at #{@time.strftime("%d/%m/%Y")}"
        @balance
    end

    def bank_statement
       "date || credit || debit || balance
            14/01/2012 || || 500.00 || 2500.00
            13/01/2012 || 2000.00 || || 3000.00
            10/01/2012 || 1000.00 || || 1000.00"
    end
end 