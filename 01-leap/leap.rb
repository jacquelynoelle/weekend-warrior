# # Leap
# Write a program that will take a year and report if it is a leap year.
#
# The tricky thing here is that a leap year in the Gregorian calendar occurs:
#
# ```plain
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100 -- not leap
#     unless the year is also evenly divisible by 400 -- leap
# ```
#
# For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
# year, but 2000 is.

def leap_year?(y)
  # false if year not divisible by 4 OR if year is divisible by 100 but not 400
  # else return true
  return (y % 4 != 0 || ((y % 100 == 0) && (y % 400 != 0))) ? false : true
end
