require 'statement'
describe Statement do
    subject(:statement) {described_class.new}
    let(:transaction_history) {["12/03/2021 || || 2000.00 || 2000.00"]}
    let(:header) {"Date || Credit || Debit || Balance\n"}
    let(:transaction) {"12/03/2021 || || 2000.00 || 2000.00"}
    describe '#print_statement' do 
    it 'should print a bank statement in chronological order and shown on correct dates' do 
        expect(subject.print_statement(transaction_history)).to eq(header + transaction)
    end
end 
end 