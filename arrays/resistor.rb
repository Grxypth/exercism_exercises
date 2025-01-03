class ResistorColorDuo
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

  def self.value(colors)
    RES_VAL[colors[0].to_sym] * 10 + RES_VAL[colors[1].to_sym]
  end
end
