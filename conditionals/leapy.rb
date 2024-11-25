class Year
  def self.leap?(year)
    if (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
      true
    else
      false
    end
  end
end

## bir sayının herhangi başka bir sayıya tam bölünüp bölünmediğini kontrol etmek için % operatörünü kullanırız.
##
