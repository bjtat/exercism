# frozen_string_literal: true


class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    case operation
    when '+'
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '*'
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    when '/'
      return 'Division by zero is not allowed.' if second_operand.zero?

      "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
    end
  end
end
