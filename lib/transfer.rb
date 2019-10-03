class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?(sender, receiver)
    sender.status == "open" && sender.balance > 0
  end

end
