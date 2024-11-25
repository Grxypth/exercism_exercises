module Port
  IDENTIFIER = :PALE
  def self.get_identifier(city)
    city_code = city[0, 4]
    city_code.upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    raise "Please implement the Port.get_terminal method"
  end
end

#RUBY dilinde constantlar büyük harfle yazılır.
#Semboller bellek üzerinde hep aynı yeri temsil ederler ve bu yüzden sembollerin kullanımı daha performanslıdır.
# to_sym methodu ile bir stringi methoda çevirebiliriz.
