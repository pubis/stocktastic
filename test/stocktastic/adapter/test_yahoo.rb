require 'minitest/autorun'
require 'stocktastic'

describe Stocktastic::Adapter::Yahoo do
  before do
    @adapter = Stocktastic::Adapter::Yahoo.new
  end

  it "inherits from base adapter" do
    @adapter.must_be_kind_of Stocktastic::Adapter::Base
  end

  describe "Parameter Map" do
    it "starts with :symbol" do
      map = Stocktastic::Adapter::Yahoo::PARAMETER_MAP
      map.keys[0].must_equal :symbol
      map[:symbol].must_equal 's'
    end
  end

  describe "get_single_quote" do
    describe "without options" do
      it "returns quote for a single symbol" do
        quote = @adapter.get_single_quote 'AAPL'
        quote[:symbol].must_equal 'AAPL'
      end

      it "gets everything by default" do
        quote = @adapter.get_single_quote 'AAPL'
        map = Stocktastic::Adapter::Yahoo::PARAMETER_MAP
        map.keys.each do |k|
          quote[k].wont_be_empty
        end
      end
    end

    describe "with custom parameters" do
      it "accepts custom parameters through options" do
        params = [:symbol, :last_trade_price_only, :name]
        quote = @adapter.get_single_quote 'AAPL', parameters: params
        quote[:symbol].must_equal 'AAPL'
        params.each do |p|
          quote[p].wont_be_empty
        end
      end
    end
  end

  describe "get_multiple_quotes" do
    describe "without options" do
      it "returns quotes for an array of symbols" do
        quotes = @adapter.get_multiple_quotes ['AAPL', 'GOOG', 'MSFT']
        quotes.size.must_equal 3
        quotes.map {|q| q[:symbol]}.must_equal ['AAPL', 'GOOG', 'MSFT']
      end

      it "gets everything by default" do
        quotes = @adapter.get_multiple_quotes ['AAPL', 'GOOG']
        map = Stocktastic::Adapter::Yahoo::PARAMETER_MAP
        2.times do |n|
          map.keys.each do |k|
            quotes[n][k].wont_be_empty
          end
        end
      end
    end

    describe "with custom parameters" do
      it "accepts custom parameters through options" do
        params = [:symbol, :last_trade_price_only, :name]
        quotes = @adapter.get_multiple_quotes ['AAPL', 'GOOG'], parameters: params
        2.times do |n|
          params.each do |p|
            quotes[n][p].wont_be_empty
          end
        end
      end
    end
  end
end
