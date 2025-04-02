# frozen_string_literal: true

require 'byebug'
require_relative 'base'
module Calculator
  class StringCalculator < Base
    attr_reader :input_string, :parsed_input_array

    def add
      return 0 if @input_string.empty?

      raise CalculationError, "negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

      @parsed_input_array.sum
    end

    private

    def negative_numbers
      @negative_numbers ||= @parsed_input_array.select(&:negative?)
    end
  end
end
