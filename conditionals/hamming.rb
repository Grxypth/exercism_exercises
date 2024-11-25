class Hamming
  def self.compute(word1, word2)
    raise ArguementError if word1.length != word2.length
    distance = 0
    word1.chars.each_with_index do |char, index|
      distance += 1 if char != word2[index]
    end
    distance
  end
end

## bir stringi .chars methodu ile karakterlerine ayırabiliriz.

## bir stringi .chars methodu ile karakterlerine ayırabiliriz.
