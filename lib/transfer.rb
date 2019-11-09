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

    sender_acct = BankAccount.all.detect {|account| account.name == sender.name}
    receiver_acct = BankAccount.all.detect {|account| account.name == receiver.name}

    sender_acct.valid? && receiver_acct.valid?
  end
end
