require "minitest/autorun"
require "stocktastic"

describe Stocktastic do
  it "has a version" do
    Stocktastic::VERSION.must_be_instance_of String
  end

  describe "default_adapter" do
    it "returns Yahoo adapter" do
      Stocktastic::default_adapter.must_equal Stocktastic::Adapter::Yahoo
    end
  end
end
