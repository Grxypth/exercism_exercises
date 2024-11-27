class BirdCount
  def self.last_week
    last_week = [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @bird_count = birds_per_day
  end

  def yesterday
    @bird_count[-2]
  end

  def total
    total = 0
    @bird_count.each { |bird| total += bird }
    total
  end

  def busy_days
    busy_days = 0
    @bird_count.each { |bird| busy_days += 1 if bird >= 5 }
    busy_days
  end

  def day_without_birds?
    empty_day = false
    @bird_count.each { |bird| empty_day = true if bird < 1 }
    empty_day
  end
end

## Dizilerin sondan elemanlarını bulmak için negatif sayıları kullanabiliriz
## bir dizinin içerisindeki elemanları toplamak için bir total değişkeni oluşturup her bir elemanı bir each dizisi içerisinde toplayabiliriz.
