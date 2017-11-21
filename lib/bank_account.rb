class BankAccount
attr_accessor :name

@@all = []
  def initialize(account_name)
    @name = account_name
    @@all<<self
  end


end
