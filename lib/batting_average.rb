class BattingAverage
  def calc(turn, stroke_count, hit_count)
    return nil if turn == 0
    return 0.0 if stroke_count == 0
    (hit_count.to_f / stroke_count.to_f).round 3
  end

  def calc_to_s(turn, stroke_count, hit_count)
    batting_average = calc(turn, stroke_count, hit_count)
    return "---" unless batting_average
    return "1.00" if batting_average == 1.0

    batting_average.to_s.sub(/^0/, "")
  end
  
end
