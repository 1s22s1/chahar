# frozen_string_literal: true

RSpec.describe Chahar do
  describe '#initialize' do
    it { expect { described_class.new }.not_to raise_error }
    it { expect { described_class.new(nil) }.not_to raise_error }
    it { expect { described_class.new([1, 2]) }.not_to raise_error }
    it { expect { described_class.new(1..3) }.not_to raise_error }
  end

  describe '#size' do
    it { expect(described_class.new.size).to eq 0 }
    it { expect(described_class.new(nil).size).to eq 0 }
    it { expect(described_class.new([1, 2]).size).to eq 2 }
    it { expect(described_class.new(1..3).size).to eq 3 }
  end
end
