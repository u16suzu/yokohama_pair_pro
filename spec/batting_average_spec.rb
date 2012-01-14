# encoding: utf-8
require 'batting_average.rb'

describe BattingAverage do
  before do
    @batting_average = BattingAverage.new
  end
  describe "#calc" do

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

    context "打席数が0の時" do
      it "打率を計算しないこと(nilを返すこと)" do
        @batting_average.calc(0, 0, 0).should == nil
      end
    end

    context "打席数が0でなく打数が0の場合" do
      it "0.0と計算すること" do
        @batting_average.calc(1, 0, 0).should == 0.0
      end
    end
  end

  describe "#calc_to_s" do
    it "打率の整数部は消去して表示すること" do
      @batting_average.calc_to_s(3, 3, 1).should == ".333"
    end
  end
end
