require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'deposits amount and returns amount' do
    expect(subject.deposit(10)).to eq 10
  end
end