class Transfer
attr_accessor :sender, :receiver, :status, :amount

@@all = []

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = pending
    @amount = amount
  end

  def valid?
    if BankAccount.all.include?(self)
      return true
    elsif 
      
      
end
