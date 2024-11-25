class HDistance
  def self.calculate(word1, word2)
    raise ArguementError if word1.length != word2.length
  end
  distance = 0
  word1.chars.each_with_index do |char, index|
    distance += 1 if char != word2[index]
  end
  distance
end

## bir stringi .chars methodu ile karakterlerine ayırabiliriz.
