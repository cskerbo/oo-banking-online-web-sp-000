class Transfer

  attr_accessor :sender, :receiver, :status, :name

  def initialize(name)
    @name = name
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

end
