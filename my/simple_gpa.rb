results = Array.new
result = nil

puts '### Расчет среднего балла ###'


until result == 'ok' do
	puts 'Введите Ваш балл, а для выполнения подсчета введите ok:'
	result = gets.chomp
	results.push(result) if ('1'..'12').include? result
end

total_result = 0
results.each { |x| total_result += x.to_i }

if results.count >= 1
  gpa = total_result / results.count
else
  gpa = 0
end

puts "Ваш средний балл составляет: #{gpa}"
info = case gpa
	when 1..6 	then 'Очень, плохо! Нужно работать на уроках.'
	when 7..9 	then 'Хорошо, глядишь отличником станешь!'
	when 10..12	then 'Молодец, так держать! Ты - отличник!'
	else 'Нет данных для анализа!'
end

puts info