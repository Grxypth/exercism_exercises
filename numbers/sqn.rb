## Bu egzerzisde karelerin toplamı ile toplamların karesi arasındaki farkı hesaplayacağız.
##karelerin toplamı için  [n(n+1)(2n+1)]/6 formülünü kullanacağım.
##toplamların karesi için ise n^2(n+1)^2/4 formülünü kullanacağım

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

end