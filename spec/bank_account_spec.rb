require 'bank_account'

describe Account do 
subject(:account) {described_class.new}

    context 'New Account'
    describe '#initialize' do 
        it 'should create an instance' do 
            expect(subject.bank_account).to eq(0)
        end 
    end

    describe '#deposit' do 
        it 'should be able to take a deposit' do 
            expect(subject).to respond_to(:deposit).with(1).argument
            expect(subject.deposit(10)).to eq(10)
            
        end 
    end

    describe '#withdraw' do 
        it 'should be able to withdraw money' do
            expect(subject).to respond_to(:withdraw).with(1).argument
            account.deposit(10) 
            expect(subject.withdraw(5))
            expect(subject.bank_account).to eq(5)
            expect{ subject.withdraw(20) }.to raise_error "You have insufficent funds"
        end
    end

    describe '#bank_statement' do 
        it 'should print a bank statement' do 
            expect(subject.bank_statement).to eq "date || credit || debit || balance
            14/01/2012 || || 500.00 || 2500.00
            13/01/2012 || 2000.00 || || 3000.00
            10/01/2012 || 1000.00 || || 1000.00"
        end
    end 
end 