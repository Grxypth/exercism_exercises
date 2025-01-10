def to_roman(num)
  numerals={
  M: 1000
  D: 500
  C: 100
  L: 50
  X: 10 
  V: 5
  I: 1
  }
  roman=''
  numerals.each do |key,value|
    while num>=value
      result+=roman.to_s
      num-=value
  end

end


## Bu alıştırmada Arap rakamlarıyla verilen rakamları roma rakamlarına çevirip döndürmemiz isteniyor.
## Bunu ben verilen sayıyı basamaklarına bölüp her basamağına karşılık gelen roma rakamını bulup birleştirerek yapmayı planlıyorum.