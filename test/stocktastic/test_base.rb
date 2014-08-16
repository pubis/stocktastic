require 'minitest/autorun'
require 'minitest/mock'
require 'stocktastic'

describe Stocktastic::Base do
  describe "#adapter" do
    it "can be set when created" do
      adapter = Object.new
      Stocktastic::Base.new(adapter).adapter.must_equal adapter
    end

    it "uses the default adapter" do
      Stocktastic::Base.new.adapter.must_be_instance_of Stocktastic::default_adapter
    end
  end

  describe "#quote" do
    it "delegates to adapter#get_single_quote" do
      adapter = MiniTest::Mock.new
      adapter.expect(:get_single_quote, nil, ['SYM'])
      stocktastic = Stocktastic::Base.new(adapter)

      stocktastic.quote('SYM')
      adapter.verify
    end
  end

  describe "#quotes" do
    it "delegates to adapter#get_multiple_quotes" do
      adapter = MiniTest::Mock.new
      adapter.expect(:get_multiple_quotes, nil, [['SYM1', 'SYM2']])
      stocktastic = Stocktastic::Base.new(adapter)

      stocktastic.quotes(['SYM1', 'SYM2'])
      adapter.verify
    end
  end
end
