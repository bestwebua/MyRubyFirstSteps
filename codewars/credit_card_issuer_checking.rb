def getIssuer(number)
  number = number.to_s.chars.map(&:to_i)
    result = case number.size
      when 16 then
        if number[0..3] == [6, 0, 1, 1]
          'Discover'
    	elsif number[0] == 5 && number[1].between?(1, 5)
    	  'Mastercard'; end
      when 15 then 'AMEX' if number[0..1] == [3, 4] || number[0..1] == [3, 7]; end
  	result = 'VISA' if (number.size == 16 || number.size == 13) && number[0] == 4
  result.nil? ? 'Unknown' : result
end

getIssuer(371111111111111)


def getIssuer(number)
  case number.to_s
    when /^3[47]\d{13}$/ then "AMEX"
    when /^6011.{12}$/ 	 then "Discover"
    when /^5[1-5].{14}$/ then "Mastercard"
    when /^4.{12,15}$/   then "VISA"
    else "Unknown"; end
end