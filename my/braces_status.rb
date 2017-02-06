=begin
Braces status by Vladislav Trotsenko.

Write a function that will check the braces status.

For instance:
([[some](){text}here]...) => true
{([])} => true
()[]{}() => true
(...[]...{(..())}[abc]()) => true
1239(df){ => false
[()]) => false
=end

def braces_status(string)
  #Создаем переменные: хеш, массив для открытых скобок и статус (по умолчанию - истина).
  braces, open_braces, status = {'('=>')', '['=>']', '{'=>'}'}, [], true
  	#Закидвыаем все символы в массив и выбираем из полученных данных только скобки
	string = string.chars.select { |brace| braces.has_key?(brace) || braces.has_value?(brace) }
	#Для ускорения работы сразу делаем проверку, если колличество скобок не четное => есть не закрытая скобка => false
	if string.size.even?
			#Обходим отсортированный массив со скобками.
			string.each do |brace|
				#Наши скобки должны начинаться только с "левосторонних": (, [, {. Если нет => false, и конец програмы.
				if braces.has_value?(brace) && open_braces.size == 0
					status = false
					break
				#Если начальные скобки "нормальные", помещаем их в массив для открытых скобок.
				elsif braces.has_key?(brace)
					open_braces << brace
				#Теперь проверка для закрывающих скобок. При соответсвии удаляем последнюю добавленную в массив с открытыми скобками.
				else
					open_braces.pop if braces.key(brace) == open_braces.last
				end
			end
	else status = false; end
#Финал. Если наш статус истина и массив с открытыми скобками пуст (или кол. элементов 0, например) - все ок, в противном случае - ложь. 
status == true && open_braces.empty? ? true : false

end

#Вызываем метод, в качестве аргумента передаем строку с буквами и скобками. На выходе получаем ложь или истину.
braces_status('([[some](){text}here]...)')

=begin
Light version of braces status. It can check enclosed braces only, like this [({})]
def braces_status(string)
braces, count, result = {'('=>')', '['=>']', '{'=>'}'}, 0, nil
string = string.chars.select { |brace| braces.has_key?(brace) || braces.has_value?(brace) }

	string.each do |brace|
		if string.size.even? && braces[brace] == string[-1-count]
			count += 1
			result = true
		else
			result = false
		end
		break if count == string.size/2
	end
	result
end
=end