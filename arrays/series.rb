## Bu alıştırmada sayımızı oluşturan rakamları kullanara sayıların sırasını bozmadan başka hangi sayıları oluşturabileceğimizi bulmaya çalışıyoruz.
## taki en son bu oluşturulabilecek 1 haneli sayıları bulana kadar.

class Series
  attr_reader :series

  def initialize(string)
    raise ArgumentError, "Input cant be empty" if string.empty?
    @series = string
  end

  def slices(num)
    raise ArgumentError, "Slice size invalid" if num > series.length || num <= 0

    result = []
    i = 0
    while i + num <= series.length
      result << series[i, num]
      i += 1
    end
    result
  end
end
