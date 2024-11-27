class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item[:name] }.sort
  end

  def cheap
    items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    items.select { |item| item[:quantity_by_size].length < 1 }
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    @items.sum { |item| item[:quantity_by_size].values.sum }
  end

  private

  attr_reader :items
end

## Ruby dilinde dizilere benzer olarak bulunan başka bir yapıda "hash" yapılarıdır. Hash yapısı key ve value değerlerinden oluşur. Key değerleri birbirinden farklı olmalıdır. Hash yapısını oluşturmak için süslü parantezler kullanılır.
## Hashlerin dizilerden farkı ise hashlerin diziler gibi belirli bir sıra/indekse sahip olmamalarıdır.
## Hashlerin valueları dizi,string, integer, float, boolean, hash olabilir fakat keyler sadece string, integer, float, boolean olabilir.
## Map methodu ile belirli bir dizinin üzerinde işlem yapıp dönüş olarak yeni bir dizi döndürebiliriz.
