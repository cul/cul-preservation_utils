# frozen_string_literal: true

# require_relative '../../lib/cul/preservation_utils/version'

RSpec.describe Cul::PreservationUtils do
  it 'has a version number', focus: true do
    puts 'the test is running'
    expect(Cul::PreservationUtils::VERSION).not_to be nil
    # expect(1).to eq(1)
  end
end
