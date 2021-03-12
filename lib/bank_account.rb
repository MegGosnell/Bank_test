class Account
attr_reader :balance, :time
DEFAULT_BALANCE = 0
  HEADER = "Date || Credit || Debit || Balance"
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
    fail "This is not a valid number" unless amount.is_a?(Integer) && amount.positive?
    @transaction_history.push("#{@time.strftime("%d/%m/%Y")}  || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
    @balance
  end

  def withdraw(amount)
    @balance -= amount
    fail "You have insufficent funds" if @balance - amount < 0
    fail "This is not a valid number" unless amount.is_a?(Integer) && amount.positive?
    @transaction_history.push("#{@time.strftime("%d/%m/%Y")} || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
    @balance
  end

  def bank_statement
    @transaction_history << HEADER
    printed_statement = @transaction_history.reverse.join("\n")
    puts printed_statement
    return printed_statement
  end
end
