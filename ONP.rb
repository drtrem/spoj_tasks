def to_rpn(expression)
  if expression.length <= 400
    rpn = ""
    operators = []
    expression.each_char do |char|
      if char == "("
        # nope
      elsif char =~ /[*^+-\/]/
        operators << char
      elsif char == ")"
        rpn << operators.pop
      else
        rpn << char
      end
    end
    
    rpn
  else
    puts 'expression.length <= 400'
  end
end

puts 'Input number of lines'
lines = gets.chomp.to_i
if lines <= 100
  lines.times do
    puts 'Input line'
    puts to_rpn(gets.chomp)
  end
else
  puts 'lines <= 100'
end
