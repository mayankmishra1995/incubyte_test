require_relative '../../app/services/string_calculator'

RSpec.describe StringCalculator, type: :service do
  describe StringCalculator do
    describe '.add' do
      it 'returns 0 for empty string' do
        expect(StringCalculator.add('')).to eq 0
      end
    end
  end
end