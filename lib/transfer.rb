class Transfer

  attr_accessor :sender, :receiver, :status, :name, :amount

  def initialize(name)
    @name = name
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

end
