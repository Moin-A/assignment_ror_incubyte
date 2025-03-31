require 'rspec'
require_relative '../app/string_calculator.rb'


RSpec.describe StringCalculator do
    let(:input_string) { '1,2,3' }
    let(:string_calculator) { StringCalculator.new input_string }
    describe '#initialize' do
       it 'sets instance variable' do
         expect(string_calculator.instance_variable_get(:@input_string)).to eq('1,2,3')
         expect(string_calculator.instance_variable_get(:@parsed_input)).to eq([1, 2, 3])
       end
    end
end