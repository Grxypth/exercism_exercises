class PrimeFactors
  def self.of(num)
    divide_numbers = []
    divide = 2

    while divide <= num
      if num % divide == 0
        divide_numbers.append(divide)
        num /= divide
      else
        divide += 1
      end
    end

    return divide_numbers
  end
end
