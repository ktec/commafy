require 'rails_helper'

describe Commafy::Parser do
  it 'is available as described_class' do
    expect(described_class).to eq(Parser)
  end

  describe '.parse' do
    context '1234567/3' do
      it 'returns 1,234,567' do
        result = described_class.parse(1234567, 3)

        expect(result).to eq('1,234,567')
      end
    end

    context '12345678/4' do
      it 'returns 1,234,5678' do
        result = described_class.parse(12345678, 4)

        expect(result).to eq('1234,5678')
      end
    end

    context '123456.789/2' do
      it 'returns 12,34,56.789' do
        result = described_class.parse(123456.789, 2)

        expect(result).to eq('12,34,56.789')
      end
    end
  end

  describe '.numberize_string' do
    context '123456.789' do
      it 'returns a float' do
        result = described_class.numberize_string('123.45')

        expect(result).to eq(123.45)
      end
    end
    context '123456.789' do
      it 'returns an int' do
        result = described_class.numberize_string('123')

        expect(result).to eq(123)
      end
    end
  end
end
