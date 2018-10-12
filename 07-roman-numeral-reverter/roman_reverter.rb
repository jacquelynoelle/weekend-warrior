class Roman
  NUMERALS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def self.reverter(roman)
    number = 0
    return nil if roman.nil?
    numerals = roman.split("")

    i = 0
    while i < numerals.length do
      if !NUMERALS[numerals[i]]
        return nil
      elsif NUMERALS[numerals[i+1]] && NUMERALS[numerals[i]] < NUMERALS[numerals[i+1]]
        number += NUMERALS[numerals[i+1]] - NUMERALS[numerals[i]]
        i += 2
      else
        number += NUMERALS[numerals[i]]
        i += 1
      end
    end

    return number
  end
end

# O(n) time complexity and O(n) space complexity (creation of array from string)
