def leap_year?(year)
  # true if year divisible by 4 AND (not divisible by 100 OR divisble by 400)
  # else return false
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end
