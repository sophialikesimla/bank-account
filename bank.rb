require "logger"

class BankAccount
  
  attr_accessor :name
  attr_reader :logger, :transactions
  
  def initialize(name)
    @name = name
    @transactions = []
    @logger = Logger.new("account.txt")
  end
  
  def deposit(amount)
    transactions.push(amount)
    logger.info("[#{name}] DEPOSIT #{amount}")
  end
  
  def withdraw(amount)
    transactions.push(-amount)
    logger.info("[#{name}] WITHDRAW #{amount}")
  end
  
end

smth = BankAccount.new("Sophia")
smth.deposit 300
smth.withdraw 200