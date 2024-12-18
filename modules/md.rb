module SavingsAccount
  def self.interest_rate(balance)
    case
    when balance < 0
      3.213
    when balance >= 0 && balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + (interest_rate(balance) / 100) * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end

## modüller classlere benzer farklı olarak modüller için obje oluşturaya gerek yoktur ve içerisindeki metotları direkt olarak çağırabiliriz.
## modüller ile class metotları kullanırız ve class metotları kullanırken metodumuzun önüne "self." eki ekleriz.
## class methodlarını aynı class içerisinde başka bir methotta kullanırken direkt çağırarak kullanabiliriz fakat class dışında kullanacağımız vakitlerde classın kendisini çağırarak class üzerinden erişim sağlamamız gerekir
