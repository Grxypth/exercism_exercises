
 array=[1,2,3,4,5,6,7,8,9,9]

  ##Burda örnekte bloğun içerisinde bulunan işlemi dizinin tüm elemanlarına uygulayıp yeni bir dizi döndürür
  array.map  do |chr|
  chr*2
  end                                                     
  ## => [2, 4, 6, 8, 10, 12, 14, 16, 18, 18]
  
  ## dizinin her bir elemanı için bloğun içerisindeki koşula uyan sayıları ayıtlar.
  array.select do |chr|
    chr.odd?
  end
  ## => [1, 3, 5, 7, 9, 9]

  #dizinin her bir elemanı için bloğun içerisindeki koşula uyan ifade yok ise true var ise false döndürülür.
  array.none? do |chr|
  chr>20
  end
  ## => true

  #dizinin her bir elemanı için bloğun içerisindeki koşula uyan ilk bulur.
  array.all? do |chr|
  number>=5
  end
  ## => 5

