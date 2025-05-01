# frozen_string_literal: true

require_relative '../../lib/cul/preservation_utils/version'

RSpec.describe Cul::PreservationUtils do
  it 'has a version number' do
    expect(Cul::PreservationUtils::VERSION).not_to be nil
  end
end
