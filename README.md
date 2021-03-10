## Bank Test

A practice test delivered at Makers Academy, focused on the production of best practice code, obeying the principles of OO Design and TDD.

## Project set up
- Clone the repo 
- Run bundle install 
- Run on IRB as follows:
```
require './lib/bank_account.rb'
```
```
account = Account.new 
```
```
account.deposit(1000)
```
```
account.deposit(2000)
```
```
account.withdraw(500)
```
```
account.bank_statement
```

## User stories
```
As a client of the bank
So that i can keep my money in one singular place
I would like to open a bank account
```

```
As a client of the bank
So that i can see how much money is in my account
I can see my balance
```

```
As a client of the bank 
So that i can put money into my account
I can make a deposit
```

```
As a client of the bank
So that i can access the money in my account
I can make a withdrawal
```

```
As someone who frequently deposits and withdraws
So that i can keep track of my finances
I would like to see my transactions on a bank statment
```

## Requirements

You should be able to interact with your code via IRB.
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (no database).

## Acceptance Criteria 

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

![text] (../desktop/Screenshot 2021-03-10 at 10.18.21.png)












