require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'deposits amount and returns balance' do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }
end