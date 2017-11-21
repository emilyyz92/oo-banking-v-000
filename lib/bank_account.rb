class BankAccount
attr_accessor :name

@@all = []
  def initialize(account_name)
    @name = account_name
    @@all<<self
    @balance = 1000
    @status = "open"
  end

  def self.all
    @@all
  end
end
