module BottleSong
  def self.recite(bottles, times)
    english_numbers = {
      1 => "One",
      2 => "Two",
      3 => "Three",
      4 => "Four",
      5 => "Five",
      6 => "Six",
      7 => "Seven",
      8 => "Eight",
      9 => "Nine",
      10 => "Ten"
    }

    result = ""

    for time in 1..times
      current = bottles - time + 1

      result += "\n" if (time > 1)

      result += <<~TEXT
        #{english_numbers[current]} green #{current > 1 ? "bottles" : "bottle"} hanging on the wall,


        #{english_numbers[current]} green #{current > 1 ? "bottles" : "bottle"} hanging on the wall,

        And if one green bottle should accidentally fall,

      TEXT

      if current == 1
        result += "There'll be no green bottles hanging on the wall.\n"
      else
        result +=
          "There'll be #{english_numbers[(current - 1)].downcase} green #{current - 1 > 1 ? "bottles" : "bottle"} hanging on the wall.\n"
      end
    end

    result
  end
end
class BottleSong
  def self.recite(bottles, times)
    numbers = {
      1 => "One",
      2 => "Two",
      3 => "Three",
      4 => "Four",
      5 => "Five",
      6 => "Six",
      7 => "Seven",
      8 => "Eight",
      9 => "Nine",
      10 => "Ten"
    }

    result = ""
    for time in 1..times
      current = bottles - time + 1

      result += "\n" if (time > 1)

      result +=
        "#{numbers[current]} green #{current > 1 ? "bottles" : "bottle"} hanging on the wall,\n"
      result +=
        "#{numbers[current]} green #{current > 1 ? "bottles" : "bottle"} hanging on the wall,\n"
      result += "And if one green bottle should accidentally fall,\n"
      if current == 1
        result += "There'll be no green bottles hanging on the wall.\n"
      else
        result +=
          "There'll be #{numbers[(current - 1)].downcase} green #{current - 1 > 1 ? "bottles" : "bottle"} hanging on the wall.\n"
      end
    end

    result
  end
end
