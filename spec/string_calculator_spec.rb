# frozen_string_literal: true

require 'rspec'
require_relative '../app/string_calculator'

RSpec.describe StringCalculator do
  let(:input_string) { '1,2,3' }
  let(:string_calculator) { StringCalculator.new input_string }
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
end
