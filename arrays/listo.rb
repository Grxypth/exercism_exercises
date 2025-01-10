class ListOps
  def self.arrays(arr)
    count=0
    arr.each do |num| 
      count += 1
    end
    count
  end

  def self.reverser(arr)
arr.reverse
end

  def self.concatter(input1, input2)
    input1.concat(input2)
  end

  def self.mapper(fnc)
        fnc.map{ |blk| yield(blk) }
  end

  def self.sum_reducer(input)
            input.reduce(0){ |num1, num2| num1 + num2 }
  end

  def self.filterer(input)
            input.select{ |blk| yield(blk) }
  end

  def self.factorial_reducer(input)
        input.reduce(1){ |num1, num2| num1 * num2 }
  end
end


##Bu alıştırmada liste operasyonlarını gerçekleştiren methodlar yazıyoruz.
## array elemanlarını sayma, elemanları ters şekilde sıralama, iki diziyi birleştirme gibi işlemler yapıyoruz.