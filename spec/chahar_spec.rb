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
    it { expect { described_class.new([1, 2, 3]) { |x| x + 1 } }.not_to raise_error }
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
    it { expect(described_class.new([1, 2, 3]) { |x| x + 1 }.size).to eq 3 }
  end

  describe '#==' do
    it { expect(described_class[1, 2] == described_class[2, 1]).to eq true }
    it { expect(described_class[1, 3, 5] == described_class[1, 5]).to eq false }
    it { expect(described_class['a', 'b', 'c'] == described_class['a', 'c', 'b']).to eq true }
    it { expect(described_class[1, 2] == [1, 2]).to eq false }
  end

  describe '&' do
    it { expect(described_class[1, 3, 5] & described_class[3, 2, 1]).to eq described_class[3, 1] }
    it { expect(described_class['a', 'b', 'z'] & %w[a b c]).to eq described_class['a', 'b'] }
    it { expect(described_class[1, 2, 3, 4] & [2, 4, 6]).not_to eq described_class[1, 2, 3, 4] }
    it { expect(described_class[1, 2, 3, 4] & [2, 4, 6]).to eq described_class[2, 4] }
  end

  describe '#to_s' do
    it { expect(described_class[1, 2].to_s).to eq '#<Chahar: {1, 2}>' }
    it { expect(described_class[described_class[0], 1, 2].to_s).to eq '#<Chahar: {#<Chahar: {0}>, 1, 2}>' }
  end
end
