# frozen_string_literal: true

module Calculator
  class Base
    DELIMITERS_PATTERN = %r{\\n|\n|//|;}.freeze
    def initialize(input_string)
      @input_string = input_string
      @parsed_input = parsed_input if input_string.is_a? String
    end

    def parsed_input
      @parsed_input_array = @input_string
      @parsed_input_array = @input_string.gsub(DELIMITERS_PATTERN, ',')
      @parsed_input_array = @parsed_input_array.split(',').reject(&:empty?).map(&:to_i)
    end
  end
end
