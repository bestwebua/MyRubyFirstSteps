=begin
Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D)
и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней
на экран. При этом возможны следующие варианты:

Если D > 0, то выводим дискриминант и 2 корня
Если D = 0, то выводим дискриминант и 1 корень (т.к. они в этом случае равны)
Если D < 0, то выводим дискриминант и сообщение "Корней нет"
=end

def quadratic_equation(a, b, c)
  a, b, c = a.to_i, b.to_i, c.to_i
  d = b**2-4*a*c
    case
      when d > 0 then "Discriminant is #{d}, X1=#{(-b+Math.sqrt(d))/2.0*a}, X2=#{(-b-Math.sqrt(d))/2.0*a}."
      when d.zero? then "Discriminant is #{d}, X=#{-b/(2*a)}."
      else "Discriminant is #{d}, roots are not present!"
    end
end

a, b, c = '', '', ''
puts 'A (nums only):'; a = gets.chomp while a.match(/\D-/) || a == ''
puts 'B (nums only):'; b = gets.chomp while b.match(/\D-/) || b == ''
puts 'C (nums only):'; c = gets.chomp while c.match(/\D-/) || c == ''
puts quadratic_equation(a, b, c)