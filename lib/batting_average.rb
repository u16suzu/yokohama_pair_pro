class BattingAverage
  def calc(turn, stroke_count, hit_count)
    hit_count.to_f / stroke_count.to_f
  end
  
end
