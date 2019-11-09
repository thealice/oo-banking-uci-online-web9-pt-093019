class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  @@all = []
  
  def initialize(name, balance=1000)
    @name = name
    @balance = 1000
    @status = "open"
    save
  end

  def self.all 
    @@all
  end

  def save
    @@all << self
  end

  def deposit(money)
    self.balance += money
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open" && self.balance > 0
  end

  def close_account
    self.status = "closed"
  end
end
