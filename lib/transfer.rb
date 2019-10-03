class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if sender.balance > @amount && self.status == "pending"
      sender.deposit(@amount * -1)
      receiver.deposit(@amount)
      self.status == "complete"
    else
      self.status == "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end


end
