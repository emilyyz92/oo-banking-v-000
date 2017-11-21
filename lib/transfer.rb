class Transfer
attr_accessor :sender, :receiver, :status, :amount

@@all = []

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount

  end

  def valid?
    if BankAccount.all.include?(self)
      return true
    elsif BankAccount.all.find{|account|account == @sender}.valid? && BankAccount.all.find{|account|account == @receiver}.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    if self.valid?&&@status == "pending"
      if @amount>@sender.balance
        return "Transaction rejected. Please check your account balance."
        @status = "rejected"
      else
        @receiver.balance += @amount
        @sender.balance -= @amount
        @status = "complete"
      end
    elsif !self.valid?
      return "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end
