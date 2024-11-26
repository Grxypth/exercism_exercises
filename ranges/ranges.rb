module Chess
  RANKS = 1..8
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    is_valid_file = false
    FILES.each do |fle|
      if fle == file
        is_valid_file = true
        break
      end
      is_valid_file
    end
    is_valid_rank = false
    RANKS.each do |rnk|
      if rnk == rank
        is_valid_rank = true
        break
      end
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
## constantlar çağırılırkende büyük harf ile yazılmalarına gerek vardır(bunu unutmam hata yapmama sebep oldu)
## ternary operatör kullanmam gereken yerde if else kullanmam gerektiğini fark ettim çünkü ternary operatörü "else" durumunuda ele alıyor buda is_valid_file/is_valid_rank sonucunu true bulmama rağmen loop tekrar döndüğünde değerin üzerine yazılmasına sebep oldu
## dolayısıyla burda tekil bir if ifadesini bir break ifadesi ile kullanmanın daha doğru olacağı sonucuna vardım.
