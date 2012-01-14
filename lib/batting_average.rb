class BattingAverage
  def calc(turn, stroke_count, hit_count)
    return nil if turn == 0
    return 0.0 if stroke_count == 0
    (hit_count.to_f / stroke_count.to_f).round 3
  end
  
end
