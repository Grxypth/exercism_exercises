class IsbnVerifier
  def self.valid?(string)
    nums = string.gsub("-", "")

    return false if nums.length != 10

    sum = 0

    nums.chars.each_with_index do |char, index|
      if index == 9 && char == "X"
        sum += 10
      elsif char >= "0" && char <= "9"
        sum += char.to_i * (10 - index)
      else
        return false
      end
    end

    return sum % 11 == 0
  end
end

value = IsbnVerifier.valid?("978 - 605 - 133 - 9")
puts value
