# frozen_string_literal: true

require 'zeitwerk'
loader = Zeitwerk::Loader.for_gem
loader.setup # ready!

# require_relative 'preservation_utils/version'

module Cul
  module PreservationUtils
    class Error < StandardError; end
    # Your code goes here...
  end
end
