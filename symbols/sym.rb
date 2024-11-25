module Port
  IDENTIFIER = :PALE
  def self.get_identifier(city)
    city_code = city[0, 4]
    city_code.upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_id = ship_identifier.to_s[0, 3]
    case
    when ship_id == "OIL" || ship_id == "GAS"
      terminal = "A"
      terminal.to_sym 
    end
    else
      terminal = "B"
      terminal.to_sym
    end
  end
end

#RUBY dilinde constantlar büyük harfle yazılır.
#Semboller bellek üzerinde hep aynı yeri temsil ederler ve bu yüzden sembollerin kullanımı daha performanslıdır.
# to_sym methodu ile bir stringi methoda çevirebiliriz.
