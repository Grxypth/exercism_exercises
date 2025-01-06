class SpaceAge
  def initialize(second)
    @second = second
  end

  def on_earth
    @second / (60 * 60 * 24 * 365.25)
  end

  def on_mercury
    on_earth / 0.2408467
  end

  def on_venus
    on_earth / 0.61519726
  end

  def on_mars
    on_earth / 1.8808158
  end

  def on_jupiter
    on_earth / 11.862615
  end

  def on_saturn
    on_earth / 29.447498
  end

  def on_uranus
    on_earth / 84.016846
  end

  def on_neptune
    on_earth / 164.79132
  end
end

## BU problemde bir kişinin yaşını güneş sistemindeki her gezegen için hesaplamamız gerekiyor.
## ilk önce dünyadaki yaşını hesaplayıp daha sonra diğer gezegenlerdeki yaşı hesaplıyoruz.
