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
    total = parse_card(card1) + parse_card(card2)

    case total
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    else
      "out of range"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)

    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when total == 21
      case dealer_value
      when 10, 11
        "S"
      else
        "W"
      end
    when total >= 17 && total <= 20
      "S"
    when total >= 12 && total <= 16
      case dealer_value
      when 7..11
        "H"
      else
        "S"
      end
    when total <= 11
      "H"
    else
      "S"
    end
  end
end

## 2.methodu yazarken direkt olarak class methodunu çağırıp kullanabileceğimi sanıyordum fakat ilk önce methodu ayrıca çağırıp elde ettiğim sonuç ile case ifadesini kullanmam gerektiğinin farkına vardım
