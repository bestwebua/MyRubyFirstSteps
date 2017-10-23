=begin
Calculator by Vladislav Trotsenko.

=end


class Calculator
  def evaluate(string)
    math_actions, parentheses = /\/|\*|\+|\-/, /\(|\)/
    p string = string.gsub(/[^#{math_actions}|#{parentheses}|\d+]/, '')

  

  end
end


Calculator.new.evaluate('-20 / 2 + 300 * (4 - 60) +')

=begin
  data, stack, operators = [], '', /\/|\*|\+|\-|\(|\)/
      string.each_char.with_index do |char, index|
        case char
          when /\d/ then stack << char
          when /#{operators}/
            data << stack.to_f and stack.clear
          data << char unless index == string.size-1
        end
        data << stack.to_f if index == string.size-1 && !stack.empty?
      end

    p data
=end