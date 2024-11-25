module SavingsAccount
  def self.interest_rate(balance)
    case
    when balance > 0 && balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    when balance < 0
      3.213
    end
  end

  def self.annual_balance_update(balance)
    raise "Please implement the SavingsAccount.annual_balance_update method"
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise "Please implement the SavingsAccount.years_before_desired_balance method"
  end
end

## modüller classlere benzer farklı olarak modüller için obje oluşturaya gerek yoktur ve içerisindeki metotları direkt olarak çağırabiliriz.
## modüller ile class metotları kullanırız ve class metotları kullanırken metodumuzun önüne "self." eki ekleriz.
