class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    receiver_valid = receiver.status == "open" && receiver.balance > 0
    sender_valid = sender.status == "open" && sender.balance > 0
    receiver_valid && sender_valid
  end

end
