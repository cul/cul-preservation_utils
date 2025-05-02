# frozen_string_literal: true

require_relative 'preservation_utils/file_path'

module Cul::PreservationUtils
  class Error < StandardError; end
  module FilePath
  end
  # PreservationUtilities is implemented through submodules:
  # Cul::PreservationUtils::FilePath
  #   - See /lib/cul/preservation_utils/file_path.rb
end
