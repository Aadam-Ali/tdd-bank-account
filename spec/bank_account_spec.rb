require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'deposits amount and returns balance' do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'withdraws amount and returns amount' do
    subject.deposit(10)
    expect(subject.withdraw(5)).to eq 5
  end

  it 'raises and error when you attempt to withdraw an amount greater than balance' do
    subject.deposit(10)
    expect {subject.withdraw(15)}.to raise_error 'Not enough funds'
  end 

  it { is_expected.to respond_to :balance }
end