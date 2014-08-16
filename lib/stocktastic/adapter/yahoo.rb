require 'net/http'
require 'csv'

module Stocktastic
  module Adapter
    ##
    # Adapter for interfacing with Yahoo finance
    class Yahoo < Base
      # Uri used for fetching quotes
      QUOTES_URI = "http://download.finance.yahoo.com/d/quotes.csv"

      ##
      # List of available paramters
      # This list is used as a single source of reference for
      # a) mapping between requested parameters and url parameters
      # and b) mapping between the result array and hash keys.
      PARAMETER_MAP = {
        symbol:                's',
        name:                  'n',
        last_trade_price_only: 'l1',
        last_trade_date:       'd1',
        last_trade_time:       't1'
      }

      ##
      # Fetches quote details for a single symbol.
      # Last argument can specify options:
      # - :parameters Array of parameters to get (default is everything)
      def get_single_quote symbol, options = {}
        get_multiple_quotes([symbol], options)[0]
      end

      # Fetches quote details for multiple symbols.
      # Last argument can specify options:
      # - :parameters Array of parameters to get (default is everything)
      def get_multiple_quotes symbols, options = {}
        options[:parameters] ||= PARAMETER_MAP.keys
        get_quotes symbols, options[:parameters]
      end

      private

      def get_quotes symbols, parameters
         response = get_response(uri(symbols, parameters))
         map_result parse(response.body), parameters
      end

      def get_response uri
        Net::HTTP.get_response(uri)
      end

      def map_result result, parameters
        result.map {|q| parameters.zip(q).to_h }
      end

      def parse text
        CSV.parse text
      end

      def uri symbols, parameters
        symbols = symbols.join '+'
        parameters = PARAMETER_MAP.values_at(*parameters).join

        URI.parse "#{QUOTES_URI}?s=#{symbols}&f=#{parameters}"
      end
    end
  end
end
