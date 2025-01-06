## Bu egzerzisde karelerin toplamı ile toplamların karesi arasındaki farkı hesaplayacağız.
##karelerin toplamı için  [n(n+1)(2n+1)]/6 formülünü kullanacağım.


class Squares

  def initialize(number)
    @number=number
  end
  
  
  
  
  def sum_of_squares
  @number*(@number+1)*(2*@number+1)/6
  end
  
  
  def square_of_sum
  @number*@number*(@number+1)*(@number+1)/4
  end
  
  def difference
  result=square_of_sum-sum_of_squares
  end
  
    
  
  end