module Blackjack
  def self.parse_card(card)
    case card
    when "ace"
      11
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    when "ten", "jack", "queen", "king"
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    case (card1.parse_card + card2.parse_card)
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    raise "Please implement the Blackjack.first_turn method"
  end
end

## 2.methodu yazarken direkt olarak class methodunu çağırıp kullanabileceğimi sanıyordum fakat ilk önce methodu ayrıca çağırıp elde ettiğim sonuç ile case ifadesini kullanmam gerektiğinin farkına vardım
