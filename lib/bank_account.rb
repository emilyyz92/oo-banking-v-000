class BankAccount
attr_accessor :name

@@all = []
  def initialize(account_name)
    @name = account_name
    @@all<<self
  end

  def self.all
    @@all
  end
end
