class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender_acct = BankAccount.all.detect {|account| account.name == sender}.valid?
    receiver_acct = BankAccount.all.detect {|account| account.name == receiver}.valid?
    sender_acct && receiver_acct
    end
  end
end
