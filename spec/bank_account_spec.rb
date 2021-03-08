require 'bank_account'


describe Account do 
subject(:account) {described_class.new}

    describe '#initialize' do 
        it 'should create an instance' do 
            expect(subject.bank_account).to eq(0.00)
        end 

    end
end 