require 'stocktastic/adapter'
require 'stocktastic/base'

module Stocktastic
  # The version of Stocktastic
  VERSION = "0.1.0"

  ##
  # Default adapter through which quotes are fetched.
  def self.default_adapter
    Stocktastic::Adapter::Yahoo
  end
end
