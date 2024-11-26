module Chess
  RANKS = 1..8
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    is_valid_file = false
    files.each do |fle|
      fle == file ? is_valid_file = true : is_valid_file = false
      is_valid_file
    end
    is_valid_rank = false
    ranks.each do |rnk|
      rnk == rank ? is_valid_rank = true : is_valid_rank = false
      is_valid_rank
    end
    is_valid_rank && is_valid_file
  end

  def self.nick_name(first_name, last_name)
    raise "Please implement the Chess.nick_name method"
  end

  def self.move_message(first_name, last_name, square)
    raise "Please implement the Chess.move_message method"
  end
end

## burda files ve ranks için bir range tanımladım ve sonra method içerisinde verilen rank ve file değerlerinin bu range içerisinde olup olmadığını kontrol ettim.
