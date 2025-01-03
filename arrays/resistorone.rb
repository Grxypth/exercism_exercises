class ResistorColor
  RES_VAL = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def self.color_code(colors)
    RES_VAL[colors[0].to_sym]
  end
end

##Bir adet hashimiz var ve bu hashin key kısmı renk, value kısmı ise renklerin karşılık geldiği sayılar.
##Bu hashe key değerini girerek value değerine erişim sağlayabiliyoruz
