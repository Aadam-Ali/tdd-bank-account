class BankAccount
  attr_reader :balance
  
  def initialize()
    @balance = 0
  end 

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
   fail 'Not enough funds' if amount > @balance
   @balance -= amount
   amount 
  end
end