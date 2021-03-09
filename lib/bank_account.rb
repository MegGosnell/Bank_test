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
       @balance += amount 
       puts "You made a deposit of #{'%.2f' % amount} at #{@time.strftime("%d/%m/%Y")}" 
       @transaction_history.push("#{@time.strftime("%d/%m/%Y")}  || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
       @balance 
    end 

    def withdraw(amount)
        @balance -= amount
        fail "You have insufficent funds" if @balance - amount < 0
        puts "You made a withdrawal of #{'%.2f' % amount} at #{@time.strftime("%d/%m/%Y")}"
        @transaction_history.push("#{@time.strftime("%d/%m/%Y")} || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
        @balance
    end

    def bank_statement
        header = "Date || Credit || Debit || Balance\n"
        header + @transaction_history.reverse.join("\n") do |value| 
        print value
       end
    end

    
end 

 
#             14/01/2012 || || 500.00 || 2500.00
#             13/01/2012 || 2000.00 || || 3000.00
#             10/01/2012 || 1000.00 || || 1000.00"