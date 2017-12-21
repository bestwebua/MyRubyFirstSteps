=begin
«Опять восьмерка!» — горестно воскликнул председатель
клуба велосипедистов, взглянув на погнутое колесо своего 
велосипеда. «А все почему? Да потому, что у меня членский
билет No 088 — по восьмерке на каждое колесо! И теперь не
проходит и месяца, чтобы то на одном, то на другом колесе
не появилась восьмерка. Надо менять номер билета! А чтобы
меня не обвинили в суеверии, проведу-ка я перерегистрацию
всех членов клуба и буду выдавать только билеты с номерами,
в которые ни одна восьмерка не входит. Не знаю только, хватит
ли на всех номеров — ведь у нас в клубе почти 600 членов,
а номера должны быть трехзначными. Неужели придется 
выписывать все номера от 000 до 999, а затем вычеркивать из
них все номера с восьмерками?»
=end

#my code before reading this book
def total_numbers_except(number, max)
  ('0'..max.to_s).reject{ |i| i.include?(number.to_s) }.size
end


#after
def total_numbers_except(number, max)
  (10-number.to_s.size)**max.to_s.size
end

total_numbers_except(8, 999)