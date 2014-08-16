require 'minitest/autorun'
require 'stocktastic'

describe "Fetch quotes" do
  describe "using default (Yahoo) adapter" do
    before do
      @stocktastic = Stocktastic::Base.new
    end

    it "fetches a single quote" do
      quote = @stocktastic.quote('AAPL')
      quote[:symbol].must_equal 'AAPL'
    end

    it "fetches multiple quotes" do
      symbols = ['AAPL', 'MSFT', 'GOOG']
      quotes = @stocktastic.quotes(symbols)
      quotes.size.must_equal 3
      quotes.map {|q| q[:symbol] }.must_equal symbols
    end
  end
end
