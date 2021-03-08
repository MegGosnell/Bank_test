require 'bank_account'


describe Account do 
subject(:account) {described_class.new}

    describe '#initialize' do 
        it 'should create an instance' do 
            expect(subject.bank_account).to eq(0)
        end 
    end

    describe '#deposit' do 
        it 'should be able to take a deposit' do 
            expect(subject).to respond_to(:deposit).with(1).argument
            expect(subject.deposit(10)).to eq([10])
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

    
end 