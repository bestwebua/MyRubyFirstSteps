=begin
Multiplication Table by Vladislav Trotsenko.
=end


class Number
  def self.new
    rand(2..9)
  end
end

puts 'Добро пожаловать! Введи свое имя:'
name = gets.chomp
puts "Привет, #{name}! Давай повтроим табличку умножения :)"

questions = answers = 0
  wrong_answers, right_answers_in_a_row, medals = [], 0, ''
    until questions == 10 do
      num1, num2 = Number.new, Number.new
        right_answer, answer = num1*num2, ''
          puts "=> #{num1} x #{num2} ="
            answer = gets.chomp while answer.match(/\D/) || answer == ''
              if answer.to_i == right_answer
                right_answers_in_a_row+=1
                  answers+=1
                    informer = case right_answers_in_a_row
                                when 5 then 'Очень хорошо, так держать!'
                                when 10 then "#{name}, у тебя отлично выходит!"
                                when 15, 20, 25 then medals << '🎖' and "#{name}, Вы награждаетесь медалькой 🎖"
                                when 30 then "#{name}, я вижу ты знашь таблицу умножения :)"
                                else 'Правильно!'
                              end
                    puts informer
              else
                right_answers_in_a_row = 0
                  puts "Ошибка! Правильный ответ: #{right_answer}"
                wrong_answers << "#{num1} x #{num2}"
              end
      questions+=1
    end

puts "#{name}, ты успешно прошли курс #Таблица умножения#, ты - умничка!" if questions == answers
puts "Вопросов: #{questions}, правильных ответов: #{answers}. Вы заработали #{medals}"
puts "#{name}, над этими примерами нужно пработать: #{wrong_answers.uniq}" #empty array