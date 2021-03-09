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
       puts "You made a deposit of £#{amount} at #{@time}" 
       @balance
    end 

    def withdraw(amount)
        @transaction_history << @balance -= amount
        fail "You have insufficent funds" if @balance - amount < 0
        puts "You made a withdrawal of £#{amount} at #{@time}"
        @balance
    end
end 