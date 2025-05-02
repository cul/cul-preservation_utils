# frozen_string_literal: true

# require_relative 'preservation_utils/version'

require 'zeitwerk'
loader = Zeitwerk::Loader.new
second_level_dir = __FILE__.sub(/\.rb$/, '')
first_level_dir = File.dirname(second_level_dir)
loader.tag = "#{File.basename(first_level_dir)}/#{File.basename(second_level_dir)}" # File.dirname(__FILE__) # This value should be unique across all zeitwerk loaders TODO
loader.push_dir(second_level_dir)
loader.setup

module Cul
  module PreservationUtils
    class Error < StandardError; end
    # PreservationUtilities is implemented through submodules:
    # Cul::PreservationUtils::FilePath
    #   - See /lib/cul/preservation_utils/file_path.rb
  end
end

puts 'tag is ' + loader.tag
