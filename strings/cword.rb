class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    words = @string.gsub(/[!&@$%^"?:,.]/, " ").split

    words = words.map { |word| word.gsub(/^[']|[']$/, "") }
    words.reject! { |word| word.empty? }

    result = {}

    words.each do |word|
      word = word.downcase
      if result.has_key?(word)
        result[word] += 1
      else
        result[word] = 1
      end
    end

    result
  end
end
