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
## her iki kelimenin uzunluğu eşit olmak zorunda olmak için kelimelerin karakterlerinden oluşan dizilerin elemanlarının sıra numalararı aynı, bu sıra numaralarına göre
## karşılaştırma yaparak aynı olup olmadığını kontrol edip, aynı olmadığı durumda sayacımızı +1 arttırıyoruz.
