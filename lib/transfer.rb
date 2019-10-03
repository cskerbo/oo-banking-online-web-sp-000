class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(name, sender, receiver)
    @name = name
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

end
