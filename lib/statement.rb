class Statement 
    HEADER = "Date || Credit || Debit || Balance\n"
    def print_statement(transaction_history)
        printed_statement = transaction_history.reverse.join("\n")
        statement = HEADER + printed_statement
        puts statement
        return statement
    end
end 