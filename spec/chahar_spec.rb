# frozen_string_literal: true

RSpec.describe Chahar do
  describe '#initialize' do
    expect(described_class.new([1]).size).to eq 1
  end
end
