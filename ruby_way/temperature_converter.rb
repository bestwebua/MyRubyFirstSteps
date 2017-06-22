=begin
Temperature Converter by Vladislav Trotsenko.

1.2.5. Пример программы
В любом руководстве первой всегда приводят программу, печатающую строку
Hello, world!. Но мы рассмотрим что-нибудь более содержательное. Вот неболь­
шая интерактивная консольная программа, позволяющая переводить температу­
ру из шкалы Фаренгейта в шкалу Цельсия и наоборот.

My version of example case program.
=end

class Float
  def to_whole_number
    self == self.to_i ? self.to_i : self.round(2)
  end
end

def temperature_converter(data)
  abort "#{data} - invalid data!" unless data[/-?\d+\.?\d+( )?[c,f]/i]
    value, scale = data[0..-2].to_f, data[-1].upcase
      query = "#{value} #{scale}"
        value = case scale
          when 'C' then 1.8*value+32
          else (5.0/9.0)*(value-32)
        end
      value = value.to_whole_number
    scale.include?('C') ? scale = 'F' : scale = 'C'
  "#{query} => #{value} #{scale}"
end

info, data = 'Enter the temperature with scale (C or F), for example, 98.6 F:', nil
  while data.nil? || data.empty?
    puts info
    data = gets.chomp
  end

p temperature_converter(data)