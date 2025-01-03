class ResistorColorTrio
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

  def initialize(colors)
    @color_1 = colors[0].to_sym
    @color_2 = colors[1].to_sym
    @color_3 = colors[2].to_sym
  end

  def label
    value_1 = RES_VAL[@color_1]
    value_2 = RES_VAL[@color_2]
    last_digit = 10**RES_VAL[@color_3]

    final_value = (value_1 * 10 + value_2) * last_digit
    unit = final_value >= 1000 ? "kiloohms" : "ohms"
    if final_value >= 1000
      unit = "kiloohms"
      display_value = final_value / 1000
    else
      unit = "ohms"
      display_value = final_value
    end
    "Resistor value: #{display_value} #{unit}"
  end
end
