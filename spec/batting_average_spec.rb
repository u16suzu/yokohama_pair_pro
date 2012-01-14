# encoding: utf-8
require 'batting_average.rb'

describe BattingAverage do
  describe "#calc" do
    it "打率を計算できること" do
      batting_average = BattingAverage.new
      batting_average.calc(4, 4, 1).should == 0.25
    end
    
  end
end
