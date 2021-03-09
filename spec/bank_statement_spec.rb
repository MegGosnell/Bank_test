require 'bank_statement'

describe Statement do 
subject(:statement) {described_class.new}
let(:bank_statement) { "Date || Credit || Debit || Balance\n8/3/2021 || 10 || || 10" }


describe '#bank_statement' do 
    it 'should print the bank statement' do
        expect(subject.bank_statement).to eq(bank_statement)
    end 
end
end