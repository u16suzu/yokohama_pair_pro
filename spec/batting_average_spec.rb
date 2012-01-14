# encoding: utf-8
require 'batting_average.rb'

describe BattingAverage do
  describe "#calc" do
    before do
      @batting_average = BattingAverage.new
    end

    context "4打席4打数1安打の時" do
      it "打率が0.25になること" do
        @batting_average.calc(4, 4, 1).should == 0.25
      end
    end

    context "4打席4打数2安打の時" do
      it "打率が0.5になること" do
        @batting_average.calc(4, 4, 2).should == 0.5
      end
    end
    
    context "4打席3打数1安打の時" do
      it "打率が0.333になること" do
        @batting_average.calc(4, 3, 1).should == 0.333
      end
    end
  end
end
