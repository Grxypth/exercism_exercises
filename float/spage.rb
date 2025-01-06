class SpaceAge
  def initialize(second)
    @second = second
  end

  def earth_time
    @second / (60 * 60 * 24 * 365.25)
  end

  def on_mercury
    earth_time / 0.2408467
  end

  def on_venus
    earth_time / 0.61519726
  end

  def on_mars
    earth_time / 1.8808158
  end

  def on_jupiter
    earth_time / 11.862615
  end

  def on_saturn
    earth_time / 29.447498
  end

  def on_uranus
    earth_time / 84.016846
  end

  def on_neptune
    earth_time / 164.79132
  end
end

## BU problemde bir kişinin yaşını güneş sistemindeki her gezegen için hesaplamamız gerekiyor.
## ilk önce dünyadaki yaşını hesaplayıp daha sonra diğer gezegenlerdeki yaşı hesaplıyoruz.
