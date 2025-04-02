# frozen_string_literal: true

require 'rspec'
require_relative '../app/string_calculator'

RSpec.describe Calculator::StringCalculator do
  let(:input_string) { '1,2,3' }
  let(:string_calculator) { described_class.new input_string }
  describe '#initialize' do
    it 'sets instance variable' do
      expect(string_calculator.instance_variable_get(:@input_string)).to eq('1,2,3')
      expect(string_calculator.instance_variable_get(:@parsed_input)).to eq([1, 2, 3])
    end
    context 'when input string contains new line' do
      let(:input_string) { '1\n2,3' }
      it 'sets instance variable' do
        expect(string_calculator.instance_variable_get(:@input_string)).to eq('1\n2,3')
        expect(string_calculator.instance_variable_get(:@parsed_input)).to eq([1, 2, 3])
      end
    end

    context 'when input string contains custom delimiters' do
      let(:input_string) { "//;\n1;2" }
      it 'sets instance variable' do
        expect(string_calculator.instance_variable_get(:@input_string)).to eq("//;\n1;2")
        expect(string_calculator.instance_variable_get(:@parsed_input)).to eq([1, 2])
      end
    end
  end

  describe '#add' do
    context 'when input string is empty' do
      let(:input_string) { '' }
      it 'returns 0' do
        expect(string_calculator.add).to eq(0)
      end
    end

    context 'when input string contains single number' do
      let(:input_string) { '1' }
      it 'returns the number' do
        expect(string_calculator.add).to eq(1)
      end
    end

    context 'when input string contains multiple numbers' do
      let(:input_string) { '1,2,3' }
      it 'returns the sum of numbers' do
        expect(string_calculator.add).to eq(6)
      end
    end
  end
end
