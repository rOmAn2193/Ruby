#!/usr/local/bin/ruby -w
def roman_id
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
end


class Integer
  def to_roman(number = self, result = "")
    return result if number == 0
    roman_id.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_id[divisor] * quotient
      return to_roman(modulus, result) if quotient > 0
    end
  end
end

class String
  def roman_id
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
  def to_arabic(str = self, result = 0)
    return result if str.empty?
    roman_id.values.each do |roman|
      if str.start_with?(roman)
        result += roman_id.invert[roman]
        str = str.slice(roman.length, str.length)
        return to_arabic(str, result)
      end
    end
  end
end

class Roman
  def initialize (mynum)
    @mynum = mynum
  end

  def to_s(number = @mynum, result = "")
    return @mynum if @mynum.is_a?(String)
    roman_id.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_id[divisor] * quotient
      return to_s(modulus, result) if quotient > 0
    end
  end

  def to_i(str = @mynum, result = 0)
    #return str if str.is_a?(String)
    return result if str.empty?
    roman_id.values.each do |roman|
      if str.start_with?(roman)
        result += roman_id.invert[roman]
        str = str.slice(roman.length, str.length)
        return to_i(str, result)
      end
    end
  end
  def *(s)
    y = self.to_i * s.to_i
    return y
  end
end

