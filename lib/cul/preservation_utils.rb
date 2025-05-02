# frozen_string_literal: true

# The following commented code is an attempt to configure Zeitloader for this gem without needing
# to do so from a /lib/cul.rb file, as preservation_utils should be considered
# the true entry point of our gem.
# While we are using a cul.rb file for simpler Zeitloader configuration at the moment,
# we may want to implement the above way in the future, so I will retain the
# configuration attempt here in a a zeitloader-experimental branch.
# require 'zeitwerk'
# loader = Zeitwerk::Loader.new
# second_level_dir = __FILE__.sub(/\.rb$/, '')
# first_level_dir = File.dirname(second_level_dir)
# loader.tag = "#{File.basename(first_level_dir)}/#{File.basename(second_level_dir)}" # File.dirname(__FILE__) # This value should be unique across all zeitwerk loaders
# loader.push_dir(second_level_dir)
# loader.setup

module PreservationUtils
  class Error < StandardError; end
  # PreservationUtilities is implemented through submodules:
  # Cul::PreservationUtils::FilePath
  #   - See /lib/cul/preservation_utils/file_path.rb
end
