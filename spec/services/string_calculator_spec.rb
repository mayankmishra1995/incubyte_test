require_relative '../../app/services/string_calculator'

RSpec.describe StringCalculator, type: :service do
  describe StringCalculator do
    describe '.add' do
      it 'returns 0 for empty string' do
        expect(StringCalculator.add('')).to eq 0
      end

      it 'returns the number for single number' do
        expect(StringCalculator.add('1')).to eq 1
      end

      it 'returns sum for two numbers' do
        expect(StringCalculator.add('1,5')).to eq 6
      end

      it 'returns sum of more than two numbers' do
        expect(StringCalculator.add('1,2,3')).to eq 6
      end

      it 'handles newlines as delimiters' do
        expect(StringCalculator.add("1\n2,3")).to eq 6
      end

      it 'throws exception for negative number' do
        expect { StringCalculator.add('1,-2') }.to raise_error 'negative numbers not allowed -2'
      end
    end
  end
end