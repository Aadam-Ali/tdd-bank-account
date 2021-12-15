require 'bank_account'

describe BankAccount do
  it { is_expected.to respond_to(:deposit).with(1).argument }
end