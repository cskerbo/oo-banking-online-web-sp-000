class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if (sender.status == "open" && sender.balance > 0) && (receiver.status == "open" && receiver.balance > 0)
  end

end
