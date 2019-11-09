require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if self.valid? && self.status == "pending"
      self.receiver.deposit(self.amount)
      self.sender.deduct(self.amount)
      self.status = "complete"
    else
      "Transaction failed"
  end
end
