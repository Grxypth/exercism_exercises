class Integer
  def to_roman()
    num = self
    numerals = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }

    roman = ""
    numerals.each do |key, value|
      while num >= value
        roman += key.to_s
        num -= value
      end
    end
    roman
  end
end
