module Stocktastic #:nodoc:

  # Main class for integrating with Stocktastic.
  #
  #   stocktastic = Stocktastic::Base.new
  #   quote = stocktastic.quote('AAPL')
  class Base
    ##
    # Returns the adapter currently in use
    attr_reader :adapter

    ##
    # :call-seq:
    #     Stocktastic::Base.new
    #     Stocktastic::Base.new(CustomAdapter.new)
    #
    # Construct a new Stocktastic::Base object using the specified +adapter+.
    # If no +adapter+ is passed the +default_adapter+ will be used.
    def initialize adapter = Stocktastic::default_adapter.new
      @adapter = adapter
    end

    ##
    # Fetch quote information for a single symbol.
    #
    #     quote = stocktastic.quote('AAPL')
    #     # => {:symbol => 'AAPL', :name => 'Apple Inc.', ...}
    def quote symbol
      adapter.get_single_quote symbol
    end

    ##
    # Fetch quote information for many symbols.
    #
    #     quotes = stocktastic.quotes(['AAPL', 'GOOG'])
    #     # => [{:symbol => 'AAPL', :name => 'Apple Inc.', ...}, {:symbol => 'GOOG', ...}]
    def quotes symbols
      adapter.get_multiple_quotes symbols
    end
  end
end
