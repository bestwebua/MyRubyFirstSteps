=begin
Multiplication Table by Vladislav Trotsenko.
=end

puts 'Добро пожаловать! Введи свое имя:'
name = gets.chomp
puts "Привет, #{name}! Давай повтроим табличку умножения :)"
  questions = answers = 0
    wrong_answers, right_answers_in_a_row, medals = [], [], 0, ''
      questions_stack = (2..9).to_a.permutation(2).to_a + (2..9).to_a.combination(1).map { |i| i << i.first }
      until questions_stack.empty? do
        questions_stack = questions_stack.shuffle; num1, num2 = questions_stack.pop
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
    puts "Вопросов: #{questions}, правильных ответов: #{answers}."
  puts questions == answers ? "#{name}, ты успешно прошел курс #Таблица умножения#, так держать!" : "#{name}, над этими примерами нужно пработать: #{wrong_answers.uniq}"
puts "Вы заработали #{medals}" unless medals.size.zero?

=begin
#Version 2.0
class Number
  def self.new
    rand(2..9)
  end
end

puts 'Добро пожаловать! Введи свое имя:'
name = gets.chomp
puts "Привет, #{name}! Давай повтроим табличку умножения :)"
  questions = answers = 0
    questions_stack, wrong_answers, right_answers_in_a_row, medals, nums = [], [], 0, '', ''
      until questions == 64 do
        while nums.empty? || questions_stack.include?(nums)
          nums = ['num1', 'num2'].map { |i| Number.new }
        end
        questions_stack << nums
        num1, num2 = nums
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
    puts "Вопросов: #{questions}, правильных ответов: #{answers}."
  puts questions == answers ? "#{name}, ты успешно прошел курс #Таблица умножения#, так держать!" : "#{name}, над этими примерами нужно пработать: #{wrong_answers.uniq}"
puts "Вы заработали #{medals}" unless medals.size.zero?

#Version 1.0
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
      until questions == 64 do
        num1, num2 = ['num1', 'num2'].map { |i| Number.new }
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
    puts "Вопросов: #{questions}, правильных ответов: #{answers}."
  puts questions == answers ? "#{name}, ты успешно прошел курс #Таблица умножения#, так держать!" : "#{name}, над этими примерами нужно пработать: #{wrong_answers.uniq}"
puts "Вы заработали #{medals}" unless medals.size.zero?
=end