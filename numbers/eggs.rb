class EliudsEggs
  def self.egg_count(number)
    count = 0
    number.to_s(2).chars.each { |char| count += 1 if char == "1" }
    count
  end
end

## Ruby'de bir sayıyı farklı bir baz ile yazmak istediğimizde to_s() methodunu kulanırıız.
## Binary ile ifade edilen sayılar 2 bazıyla yazıldıkları için bu methodu to_s(2) şeklinde kullanırız.
## burda binary olan stringi karakterlerine ayırdım ve birleri saymak istediğimden sayacımı her 1 denk geldiğinde bir arttırdım.
