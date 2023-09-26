# frozen_string_literal: true

RSpec.describe Chahar do
  describe '.[]' do
    it { expect { described_class[] }.not_to raise_error }
    it { expect { described_class[nil] }.not_to raise_error }
    it { expect { described_class[1, 2, 3] }.not_to raise_error }
    it { expect { described_class[[]] }.not_to raise_error }
    it { expect { described_class[[nil]] }.not_to raise_error }
  end

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
    it { expect(described_class[].size).to eq 0 }
    it { expect(described_class[nil].size).to eq 1 }
    it { expect(described_class[1, 2, 3].size).to eq 3 }
    it { expect(described_class[[]].size).to eq 1 }
    it { expect(described_class[[nil]].size).to eq 1 }
  end
end
