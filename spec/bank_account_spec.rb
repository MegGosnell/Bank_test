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
            expect(subject.deposit(10)).to eq(10)
        end 
        
        it 'throws an error if you enter a negative amount' do 
            expect{ subject.deposit(-1) }.to raise_error "This is not a valid number"
        end 
    end

    describe '#withdraw' do 
        it 'should be able to withdraw money' do
            account.deposit(10) 
            expect(subject.withdraw(5))
            expect(subject.bank_account).to eq(5)
        end
        
        it 'throws an error if their are insufficient funds' do
            expect{ subject.withdraw(20) }.to raise_error "You have insufficent funds"
        end

        it 'throws an error if you withdraw a negative amount' do 
            expect{ subject.withdraw(-1) }.to raise_error "This is not a valid number"
        end 
    
    end

    describe '#bank_statement' do 
        it 'should print a bank statement in chronological order and shown on correct dates' do 
            subject.deposit(1000)
            subject.deposit(2000)
            subject.withdraw(500)
            expect(subject.bank_statement).to eq("Date || Credit || Debit || Balance\n#{subject.time.strftime('%d/%m/%Y')} || 500.00 || || 2500.00\n#{subject.time.strftime('%d/%m/%Y')}  || 2000.00 || || 3000.00\n#{subject.time.strftime('%d/%m/%Y')}  || 1000.00 || || 1000.00")
        end
    end 
end 