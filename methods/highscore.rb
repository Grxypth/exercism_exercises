class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end

##Bu classın içindeki methodlar bir oyunun sonuçlarını barındıran bir dizinin üzerinde işlem yapıyorlar.
##latest methodu ile dizinin son elemanını döndürüyoruz bu en son yazılan skor
##personal_best methodu ile dizinin en büyük elemanını döndürüyoruz
##personal_top_three methodu ile dizinin en büyük 3 elemanını döndürüyoruz(en büyük 3 değere sahip olan)
##latest_is_personal_best? methodu ile dizinin son elemanı yani en sonki skor yapılan en yüksek skor mu diye kontrol ediyoruz
