# frozen_string_literal: true

# require_relative 'preservation_utils/file_path'
require_relative '../cul'
require_relative 'preservation_utils/file_path'

module Cul
  module PreservationUtils
    class Error < StandardError; end
    # PreservationUtilities is implemented through submodules:
    # Cul::PreservationUtils::FilePath
    #   - See /lib/cul/preservation_utils/file_path.rb
  end
end
