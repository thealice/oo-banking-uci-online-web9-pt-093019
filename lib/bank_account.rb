class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name, balance=1000)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    self.balance += money
  end

  def display_balance
    self.balance
  end
end
